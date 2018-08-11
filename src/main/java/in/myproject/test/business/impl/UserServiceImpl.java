package in.myproject.test.business.impl;

import in.myproject.test.business.UserService;
import in.myproject.test.dao.BusinessDao;
import in.myproject.test.dao.CartDao;
import in.myproject.test.dao.CategoryDao;
import in.myproject.test.dao.CityDao;
import in.myproject.test.dao.ContactDao;
import in.myproject.test.dao.CustomerDao;
import in.myproject.test.dao.EmployeeDetailsDao;
import in.myproject.test.dao.EmployeepositionDao;
import in.myproject.test.dao.LoginDao;
import in.myproject.test.dao.OwnerDao;
import in.myproject.test.dao.OwnerKeywordDao;
import in.myproject.test.dao.OwnerPictureDao;
import in.myproject.test.dao.PackagetableDao;
import in.myproject.test.dao.StateDao;
import in.myproject.test.dao.SubcategoryDao;
import in.myproject.test.dao.UpgradeDao;
import in.myproject.test.dao.UserDao;
import in.myproject.test.domain.*;
import in.myproject.test.dto.DetailsBean;
import in.myproject.test.dto.EmployeeBean;
import in.myproject.test.dto.EmployeePositionBean;
import in.myproject.test.dto.OwnerBean;
import in.myproject.test.dto.PackageBean;
import in.myproject.test.dto.PictureBean;
import in.myproject.test.dto.SearchBean;
import in.myproject.test.dto.Status;
import in.myproject.test.dto.UpgradeBean;
import in.myproject.test.dto.UserBean;
import in.myproject.test.util.CloudnaryFileUpload;
import in.myproject.test.util.RandomString;
import in.myproject.test.util.SendSms;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author sayan
 */
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;
    @Autowired
    PackagetableDao packagetableDao;
    @Autowired
    OwnerDao ownerDao;
    @Autowired
    CityDao cityDao;
    @Autowired
    StateDao stateDao;
    @Autowired
    BusinessDao businessDao;
    @Autowired
    ContactDao contactDao;
    @Autowired
    CustomerDao customerDao;
    @Autowired
    OwnerKeywordDao ownerKeywordDao;
    @Autowired
    CategoryDao categoryDao;
    @Autowired
    SubcategoryDao subcategoryDao;
    @Autowired
    OwnerPictureDao ownerPictureDao;
    @Autowired
    LoginDao loginDao;
    @Autowired
    EmployeeDetailsDao employeeDetailsDao;
    @Autowired
    EmployeepositionDao employeepositionDao;
    @Autowired
    UpgradeDao upgradeDao;
    @Autowired
    CartDao cartDao;

    @Override
    public void sendSms(String senderNo, String text) {
        try {
            SendSms.SendSms(senderNo, text);
        } catch (Exception ex) {
            Logger.getLogger(UserServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Status userRegister(UserBean userBean) {
        Status status = new Status();
        User user = userDao.checkEmail(userBean.getEmailId());
        if (user == null) {
            try {
                status.setStatus(1);
                status.setMsg("Success");
                User user1 = new User();
                user1.setEmailId(userBean.getEmailId());
                user1.setPassword(userBean.getPassword());
                user1.setImage(userBean.getImage());
                user1.setPhone_no(userBean.getPhoneNo());
                user1.setName(userBean.getName() + " " + userBean.getName1());
                user1.setLastLogin(new Date());
                user1.setStatus(false);
                user1.setOtpStatus(false);
                user1.setPackageId(userBean.getPackageId());
                Packagetable packagetable = packagetableDao.loadById(new Long(user1.getPackageId()));
                user1.setPackageStartDate(new Date());
                Calendar c = new GregorianCalendar();
                c.add(Calendar.DATE, packagetable.getPackageValidity());
                Date lastDate = c.getTime();
                user1.setPackageLastDate(lastDate);
                String code = RandomString.randGenerator(4);
                user1.setUserId(userBean.getName() + "-" + code);
                user1.setOtp(code);
                status.setOtp(code);
                User user2 = userDao.save(user1);
                status.setId(user2.getId());
                sendSms(userBean.getPhoneNo(), code.trim());

            } catch (Exception ex) {
                Logger.getLogger(UserServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            status.setStatus(0);
            status.setMsg("Email is alraedy exist");
        }
        return status;
    }

    @Override
    public Status checkPhoneNo(String phoneNo) {
        Status status = new Status();
        User user = userDao.checkPhone(phoneNo);
        if (user == null) {
            status.setStatus(1);
            status.setMsg("Success");
            status.setMobileNo(phoneNo);
        } else {
            status.setStatus(0);
            status.setMsg("PhoneNo is alraedy exist");
        }
        return status;
    }

    @Override
    public Status checkphoneNo(String phoneNo) {
        Status status = new Status();
        Ownerform ownerform = ownerDao.checkPhone(phoneNo);
        if (ownerform == null) {
            status.setStatus(1);
            status.setMsg("Success");
            status.setMobileNo(phoneNo);
        } else {
            status.setStatus(0);
            status.setMsg("PhoneNo is alraedy exist");
        }
        return status;
    }

    @Override
    public Status otpCheck(long id, String otp) {
        User user = userDao.loadById(id);
        Status status = new Status();
        if (user.getOtp().equals(otp)) {
            status.setStatus(1);
            status.setMsg("Success");
            user.setOtpStatus(true);
            user.setStatus(true);
            userDao.save(user);
        } else {
            status.setStatus(0);
            status.setMsg("Incorrect otp");
        }
        return status;
    }

    @Override
    public Status userLogin(UserBean userBean) {
        Status status = new Status();
        User user = userDao.loginCheck(userBean.getEmailId(), userBean.getPassword());
        if (user != null) {
            if (user.getOtpStatus() && user.getStatus()) {
                System.out.println("getOtpStatus=" + user.getOtpStatus() + "==" + user.getStatus());
                status.setStatus(1);
                status.setMsg("Success");
                user.setLastLogin(new Date());
                userDao.save(user);
            } else {
                status.setStatus(2);
                status.setMsg("Please insert your otp");
            }
        } else {
            status.setStatus(0);
            status.setMsg("Incorrect credential");
        }
        return status;
    }

    @Override
    public List<PackageBean> getAllPackage() {
        List<PackageBean> packageBeans = new ArrayList<>();
        List<Packagetable> packagetables = packagetableDao.loadAll();
        for (Packagetable packagetable : packagetables) {
            PackageBean packageBean = new PackageBean();
            packageBean.setPackeageId(packagetable.getId());
            packageBean.setPackageName(packagetable.getPackageName());
            packageBean.setPackageDetails(packagetable.getPackageDetails());
            packageBean.setPackageValidity(packagetable.getPackageValidity());
            packageBeans.add(packageBean);
        }
        return packageBeans;
    }

    @Override
    public Status saveOwner(String comapnyName, long stateid, long cityId, String name, String phoneNo, String email, String otp, String checkOtp, HttpServletRequest request) {
        Status status = new Status();
        if (otp.equals(checkOtp)) {
            Ownerform ownerform = new Ownerform();
            status.setStatus(1);
            status.setMsg("Success");
            ownerform.setCity(cityDao.loadById(cityId));
            ownerform.setCompanyName(comapnyName);
            ownerform.setEmailId(email);
            ownerform.setMobileNo(phoneNo);
            ownerform.setOtp(otp);
            ownerform.setOtpStatus(true);
            ownerform.setStatus(false);
            ownerform.setOwnername(name);
            ownerform.setState(stateDao.loadById(stateid));
            ownerform.setPassword(RandomString.randGenerator(8));
            ownerform = ownerDao.save(ownerform);
            request.getSession().setAttribute("ownerId", ownerform.getId());
            request.getSession().setAttribute("comapnyName", comapnyName);
            request.getSession().setAttribute("name", name);
            request.getSession().setAttribute("phoneNo", phoneNo);
            request.getSession().setAttribute("email", email);

        } else {
            status.setStatus(0);
            status.setMsg("Incorrect otp");
        }
        return status;
    }

    @Override
    public Status saveBussinessDetails(String address, String companyName, long stateId, String street, String landmark, long cityid, String pincode, String ownerId) {
        Status status = new Status();
        Businessdetails businessdetails = new Businessdetails();
        businessdetails.setAddress(address);
        businessdetails.setState(stateDao.loadById(stateId));
        businessdetails.setStreet(street);
        businessdetails.setLandmark(landmark);
        businessdetails.setCity(cityDao.loadById(cityid));
        businessdetails.setPincode(pincode);
        businessdetails.setBusinessName(companyName);
        businessdetails.setOwnerId(Integer.parseInt(ownerId));
        businessDao.save(businessdetails);
        Ownerform ownerform = ownerDao.loadById(new Long(ownerId));
        Login login = new Login();
        login.setPassword(ownerform.getPassword());
        login.setUsertype("BUSINESS-OWNER");
        login.setStatus(true);
        login.setUsername(ownerform.getEmailId());
        login.setUserId(ownerform.getId().intValue());
        loginDao.save(login);
        String msg = "Welcome To Qckseek,"
                + "Thank you " + ownerform.getOwnername() + " for your Registration."
                + "Your email:" + ownerform.getEmailId()
                + " and Your password:" + ownerform.getPassword();
        sendSms(ownerform.getMobileNo(), msg);
        status.setStatus(1);
        return status;
    }

    @Override
    public Status saveContactDetails(String personName, String landNo, String mobileNo, String faxNo, String faxAltNo, String tollfreeNo, String tollAltNo, String emailId, String website, String businessType, String ownerId) {
        Status status = new Status();
        Contactdetails contactdetails = new Contactdetails();

        contactdetails.setContactName(personName);
        contactdetails.setLandline(landNo);
        contactdetails.setMobile(mobileNo);
        contactdetails.setFax(faxNo);
        contactdetails.setFax2(faxAltNo);
        contactdetails.setTollfreeNo(tollfreeNo);
        contactdetails.setTollfreeeNo2(tollAltNo);
        contactdetails.setEmailId(emailId);
        contactdetails.setWebsite(website);
        contactdetails.setBusinessType(businessType);
        contactdetails.setOwnerId(Integer.parseInt(ownerId));
        contactDao.save(contactdetails);
        status.setStatus(1);
        return status;

    }

    @Override
    public Status saveCustomer(String name, String phoneNo, String email, String address, String password, String confirmpassword, String otp, String checkOtp, HttpServletRequest request) {
        Status status = new Status();
        if (otp.equals(checkOtp)) {
            Customerregistration customerregistration = new Customerregistration();
            status.setStatus(1);
            status.setMsg("Success");
            customerregistration.setName(name);
            customerregistration.setMobileNo(phoneNo);
            customerregistration.setEmailId(email);
            customerregistration.setAddress(address);
            customerregistration.setPassword(password);
            customerregistration.setConfirmPassword(confirmpassword);
            customerregistration.setOtp(otp);
            customerregistration = customerDao.save(customerregistration);
            Login login = new Login();
            login.setPassword(customerregistration.getPassword());
            login.setUsertype("CUSTOMER");
            login.setStatus(true);
            login.setUsername(customerregistration.getEmailId());
            login.setUserId(customerregistration.getId().intValue());
            loginDao.save(login);
            String msg = "Welcome To Qckseek,"
                    + "Thank you " + customerregistration.getName() + " for your Registration."
                    + "Your email:" + customerregistration.getEmailId()
                    + " and Your password:" + customerregistration.getPassword();
            sendSms(customerregistration.getMobileNo(), msg);
        } else {
            status.setStatus(0);
            status.setMsg("Incorrect otp");
        }
        return status;
    }

    @Override
    public Status checkphoneno(String phoneNo) {
        Status status = new Status();
        Customerregistration customerregistration = customerDao.checkPhone(phoneNo);
        if (customerregistration == null) {
            status.setStatus(1);
            status.setMsg("Success");
            status.setMobileNo(phoneNo);
        } else {
            status.setStatus(0);
            status.setMsg("PhoneNo is alraedy exist");
        }
        return status;
    }

    @Override
    public Status saveUserKeyWord(long categoryId, long subcategoryId, int ownerId, String keywordName) {
        Ownerkeyword ownerkeyword = new Ownerkeyword();
        ownerkeyword.setCategory(categoryDao.loadById(categoryId));
        ownerkeyword.setSubcategory(subcategoryDao.loadById(subcategoryId));
        ownerkeyword.setKeywordName(keywordName);
        ownerkeyword.setOwnerId(ownerId);
        ownerKeywordDao.save(ownerkeyword);
        Status status = new Status();
        status.setStatus(1);
        return status;
    }

    @Override
    public void uploadImage(PictureBean pictureBean) {
        Ownerpicture ownerpicture = new Ownerpicture();
        CloudnaryFileUpload f = new CloudnaryFileUpload();
        Map<String, String> imgUrl = f.uploadImage(pictureBean.getUploadImage());
        Map<String, String> imgUrl2 = f.uploadImage(pictureBean.getUploadlogo());
        ownerpicture.setAboutUs(pictureBean.getAbout());
        ownerpicture.setService(pictureBean.getService());
        ownerpicture.setMapPointing(pictureBean.getMappointing());
        ownerpicture.setProductDesc(pictureBean.getDescription());
        ownerpicture.setOtherCategories(pictureBean.getCategories());
        ownerpicture.setOwnerform(ownerDao.loadById(pictureBean.getOwnerId()));
        ownerpicture.setUserId(pictureBean.getUsername().trim() + "-" + RandomString.randGenerator(4));
        ownerpicture.setBannerImage(imgUrl.get("secureUrl"));
        ownerpicture.setLogoImage(imgUrl2.get("secureUrl"));
        ownerPictureDao.save(ownerpicture);

    }

    @Override
    public Status loginUser(UserBean userBean) {
        Status status = new Status();
        Login login = loginDao.loginCheck(userBean.getEmailId(), userBean.getPassword());
        if (login != null) {
            if (login.getStatus()) {
                status.setStatus(1);
                status.setId(login.getUserId());
                status.setType(login.getUsertype());
                status.setMsg("Success");
            } else {
                status.setStatus(2);
                status.setMsg("you are blocked");
            }
        } else {
            status.setStatus(0);
            status.setMsg("Incorrect credential");
        }
        return status;
    }

    @Override
    public List<DetailsBean> searchResult(SearchBean searchBean) {
        List<DetailsBean> detailsBeans = new ArrayList<>();
        if (searchBean.getCity() != "" && searchBean.getSearchtype() == "") {
            System.out.println("city");
            List<Ownerform> ownerforms = ownerDao.getAllDetailsByCityName(searchBean.getCity());
            if(ownerforms.size()> 0){
            for (Ownerform ownerform : ownerforms) {
                DetailsBean detailsBean = new DetailsBean();
                detailsBean.setCompanyName(ownerform.getCompanyName());
                detailsBean.setMobileNo(ownerform.getMobileNo());
                Businessdetails businessdetails = businessDao.getDetails(ownerform.getId().intValue());
                if (businessdetails != null) {
                    detailsBean.setAddress(businessdetails.getAddress());
                }
                Ownerkeyword ownerkeyword = ownerKeywordDao.getDetails(ownerform.getId().intValue());
                if (ownerkeyword != null) {
                    detailsBean.setPrivider(ownerkeyword.getCategory().getName());
                }
                Ownerpicture ownerpicture = ownerPictureDao.getDetails(ownerform.getId());
                if (ownerpicture != null) {
                    detailsBean.setImage(ownerpicture.getBannerImage());
                }
                detailsBean.setOwnerId(ownerform.getId().toString());
                detailsBean.setSearchResult(Boolean.TRUE);
                detailsBeans.add(detailsBean);
                }
            }
             else{
                System.out.println("In else");
                DetailsBean detailsBean = new DetailsBean();
                detailsBean.setSearchResult(Boolean.FALSE);
                detailsBeans.add(detailsBean); 
            }
        } else if (searchBean.getCity() == "" && searchBean.getSearchtype() != "") {
            System.out.println("SearChtype");
            List<Ownerkeyword> ownerkeyword = ownerKeywordDao.getDetails(searchBean.getSearchtype());
            System.out.println("Owner Keyword size is"+ownerkeyword.size());
            if(ownerkeyword.size()> 0){
            for (Ownerkeyword ownerkeyword1 : ownerkeyword) {
                DetailsBean detailsBean = new DetailsBean();
                Ownerform ownerform = ownerDao.loadByIdAndStatus(Long.valueOf(ownerkeyword1.getOwnerId()));
                if(ownerform!=null){
                detailsBean.setCompanyName(ownerform.getCompanyName());
                detailsBean.setMobileNo(ownerform.getMobileNo());
                Businessdetails businessdetails = businessDao.getDetails(ownerform.getId().intValue());
                if (businessdetails != null) {
                    detailsBean.setAddress(businessdetails.getAddress());
                }
                detailsBean.setPrivider(ownerkeyword1.getCategory().getName());
                Ownerpicture ownerpicture = ownerPictureDao.getDetails(ownerform.getId());
                if (ownerpicture != null) {
                    detailsBean.setImage(ownerpicture.getBannerImage());
                }
                detailsBean.setOwnerId(ownerform.getId().toString());
                detailsBean.setSearchResult(Boolean.TRUE);
                detailsBeans.add(detailsBean);
                    }
                 }
          }
            else{
                DetailsBean detailsBean = new DetailsBean();
                detailsBean.setSearchResult(Boolean.FALSE);
                detailsBeans.add(detailsBean); 
            }

        } else if (searchBean.getCity() == "" && searchBean.getSearchtype() == "") {
            System.out.println("In third one");
            List<Ownerform> ownerforms = ownerDao.loadAllByStatus();
            if(ownerforms.size()> 0){
                System.out.println("///// ownerforms.size()"+ownerforms.size());
            for (Ownerform ownerform : ownerforms) {
                DetailsBean detailsBean = new DetailsBean();
                detailsBean.setCompanyName(ownerform.getCompanyName());
                detailsBean.setMobileNo(ownerform.getMobileNo());
                Businessdetails businessdetails = businessDao.getDetails(ownerform.getId().intValue());
                if (businessdetails != null) {
                    detailsBean.setAddress(businessdetails.getAddress());
                }
                Ownerkeyword ownerkeyword = ownerKeywordDao.getDetails(ownerform.getId().intValue());
                if (ownerkeyword != null) {
                    detailsBean.setPrivider(ownerkeyword.getCategory().getName());
                }
                Ownerpicture ownerpicture = ownerPictureDao.getDetails(ownerform.getId());
                if (ownerpicture != null) {
                    detailsBean.setImage(ownerpicture.getBannerImage());
                }
                detailsBean.setOwnerId(ownerform.getId().toString());
                detailsBean.setSearchResult(Boolean.TRUE);
                detailsBeans.add(detailsBean);
             } 
            }
            else{
                System.out.println("In else");
                DetailsBean detailsBean = new DetailsBean();
                detailsBean.setSearchResult(Boolean.FALSE);
                detailsBeans.add(detailsBean); 
            }
            
        } else {
            System.out.println("SearChtype and city");
            List<Ownerform> ownerforms = ownerDao.getAllDetailsByCityName(searchBean.getCity());
            if(ownerforms.size()> 0){
            for (Ownerform ownerform : ownerforms) {
                Ownerkeyword ownerkeyword = ownerKeywordDao.getDetailsByIdAndType(ownerform.getId().intValue(), searchBean.getSearchtype());
                if (ownerkeyword != null) {
                    DetailsBean detailsBean = new DetailsBean();
                    detailsBean.setCompanyName(ownerform.getCompanyName());
                    detailsBean.setMobileNo(ownerform.getMobileNo());
                    Businessdetails businessdetails = businessDao.getDetails(ownerform.getId().intValue());
                    if (businessdetails != null) {
                        detailsBean.setAddress(businessdetails.getAddress());
                    }
                    detailsBean.setPrivider(ownerkeyword.getCategory().getName());
                    Ownerpicture ownerpicture = ownerPictureDao.getDetails(ownerform.getId());
                    if (ownerpicture != null) {
                        detailsBean.setImage(ownerpicture.getLogoImage());
                    }
                    detailsBean.setOwnerId(ownerform.getId().toString());
                    detailsBean.setSearchResult(Boolean.TRUE);
                    detailsBeans.add(detailsBean);

                    }
                 }
           }
            else{
                System.out.println("In else sfsfaasfafsfas");
                DetailsBean detailsBean = new DetailsBean();
                detailsBean.setSearchResult(Boolean.FALSE);
                detailsBeans.add(detailsBean); 
            }
        }
        return detailsBeans;
    }

    @Override
    public DetailsBean getallDetails(long id) {
        DetailsBean detailsBean = new DetailsBean();
        Ownerform ownerform = ownerDao.loadById(id);
        detailsBean.setMobileNo(ownerform.getMobileNo());
        detailsBean.setCompanyName(ownerform.getCompanyName());
        detailsBean.setEmail(ownerform.getEmailId());
        Businessdetails businessdetails = businessDao.getDetails(ownerform.getId().intValue());
        detailsBean.setAddress(businessdetails.getAddress() + " " + businessdetails.getStreet() + " " + businessdetails.getLandmark() + " " + businessdetails.getPincode());
        Ownerpicture ownerpicture = ownerPictureDao.getDetails(ownerform.getId());
        detailsBean.setImage(ownerpicture.getLogoImage());
        detailsBean.setBanner(ownerpicture.getBannerImage());
        detailsBean.setAbout(ownerpicture.getAboutUs());
        detailsBean.setService(ownerpicture.getService());
        detailsBean.setCategory(ownerpicture.getOtherCategories());
        detailsBean.setMap(ownerpicture.getMapPointing());
        return detailsBean;
    }

    @Override
    public List<String> getAllprobability() {
        List<String> list = new ArrayList<>();
        List<Category> categorys = categoryDao.loadAll();
        for (Category category : categorys) {
            list.add(category.getName());
        }
        List<Subcategory> subcategorys = subcategoryDao.loadAll();
        for (Subcategory subcategory : subcategorys) {
            list.add(subcategory.getName());
        }
        return list;
    }

    @Override
    public OwnerBean getAllDetailsByOwnerId(long id) {
        OwnerBean ownerBean = new OwnerBean();
        Ownerform ownerform = ownerDao.loadById(id);
        if (ownerform != null) {
            ownerBean.setId(ownerform.getId());
            ownerBean.setCompanyName(ownerform.getCompanyName());
            ownerBean.setName(ownerform.getOwnername());
            ownerBean.setState(String.valueOf(ownerform.getState().getId()));
            ownerBean.setCity(String.valueOf(ownerform.getCity().getId()));
            ownerBean.setContactNo(ownerform.getMobileNo());
            ownerBean.setEmail(ownerform.getEmailId());
            Businessdetails businessdetails = businessDao.getDetails(ownerform.getId().intValue());
            ownerBean.setAddress(businessdetails.getAddress());
            ownerBean.setStreet(businessdetails.getStreet());
            ownerBean.setLandmark(businessdetails.getLandmark());
            ownerBean.setPincode(businessdetails.getPincode());
            Contactdetails contactdetails = contactDao.getDetails(ownerform.getId().intValue());
            ownerBean.setLandline(contactdetails.getLandline());
            ownerBean.setFax(contactdetails.getFax());
            ownerBean.setFax2(contactdetails.getFax2());
            ownerBean.setToolfree(contactdetails.getTollfreeNo());
            ownerBean.setToolfree2(contactdetails.getTollfreeeNo2());
            ownerBean.setWebsite(contactdetails.getWebsite());
            ownerBean.setBusinessType(contactdetails.getBusinessType());
            Ownerkeyword ownerkeyword = ownerKeywordDao.getDetails(ownerform.getId().intValue());
            ownerBean.setCategory(ownerkeyword.getCategory().getName());
            ownerBean.setCategoryId(ownerkeyword.getCategory().getId());
            ownerBean.setSubctegoryId(ownerkeyword.getSubcategory().getId());
            ownerBean.setSubcategory(ownerkeyword.getSubcategory().getName());
            ownerBean.setKeyword(ownerkeyword.getKeywordName());
            Ownerpicture ownerpicture = ownerPictureDao.getDetails(ownerform.getId());
            ownerBean.setMap(ownerpicture.getMapPointing());
            ownerBean.setLogo(ownerpicture.getLogoImage());
            ownerBean.setBanner(ownerpicture.getBannerImage());
            ownerBean.setPicture(ownerpicture.getPictureImage());
            ownerBean.setVideo(ownerpicture.getVideoImage());
            ownerBean.setZip(ownerpicture.getUploadZip());
            ownerBean.setAbout(ownerpicture.getAboutUs());
            ownerBean.setService(ownerpicture.getService());
            ownerBean.setOthercategory(ownerpicture.getOtherCategories());
            ownerBean.setProduct(ownerpicture.getOtherCategories());
        }
        return ownerBean;
    }

    @Override
    public Status updateGeneralInfo(OwnerBean ownerBean) {
        Status status = new Status();
        Ownerform ownerform = ownerDao.loadById(ownerBean.getId());
        if (ownerform != null) {
            status.setStatus(1);
            ownerform.setCompanyName(ownerBean.getCompanyName());
            ownerform.setOwnername(ownerBean.getName());
            ownerform.setMobileNo(ownerBean.getContactNo());
            ownerform.setEmailId(ownerBean.getEmail());
            ownerform.setState(stateDao.loadById(Long.valueOf(ownerBean.getState())));
            ownerform.setCity(cityDao.loadById(Long.valueOf(ownerBean.getCity())));
            ownerDao.save(ownerform);
        } else {
            status.setStatus(0);
        }
        return status;
    }

    @Override
    public Status updateBusinessDetails(OwnerBean ownerBean) {
        Status status = new Status();
        Ownerform ownerform = ownerDao.loadById(ownerBean.getId());
        if (ownerform != null) {
            status.setStatus(1);
            Businessdetails businessdetails = businessDao.getDetails(ownerform.getId().intValue());
            if (businessdetails != null) {
                businessdetails.setBusinessName(ownerBean.getCompanyName());
                businessdetails.setAddress(ownerBean.getAddress());
                businessdetails.setLandmark(ownerBean.getLandmark());
                businessdetails.setStreet(ownerBean.getStreet());
                businessdetails.setState(stateDao.loadById(Long.valueOf(ownerBean.getState())));
                businessdetails.setCity(cityDao.loadById(Long.valueOf(ownerBean.getCity())));
                businessdetails.setPincode(ownerBean.getPincode());
                businessDao.save(businessdetails);
            } else {
                businessdetails.setBusinessName(ownerBean.getCompanyName());
                businessdetails.setAddress(ownerBean.getAddress());
                businessdetails.setLandmark(ownerBean.getLandmark());
                businessdetails.setStreet(ownerBean.getStreet());
                businessdetails.setState(stateDao.loadById(Long.valueOf(ownerBean.getState())));
                businessdetails.setCity(cityDao.loadById(Long.valueOf(ownerBean.getCity())));
                businessdetails.setPincode(ownerBean.getPincode());
                businessdetails.setOwnerId((int) ownerBean.getId());
                businessDao.save(businessdetails);
            }
        } else {
            status.setStatus(0);
        }

        return status;
    }

    @Override
    public Status updateContactDetails(OwnerBean ownerBean) {
        Status status = new Status();
        Ownerform ownerform = ownerDao.loadById(ownerBean.getId());
        if (ownerform != null) {
            status.setStatus(1);
            Contactdetails contactdetails = contactDao.getDetails(ownerform.getId().intValue());
            if (contactdetails != null) {
                contactdetails.setBusinessType(ownerBean.getBusinessType());
                contactdetails.setContactName(ownerBean.getName());
                contactdetails.setEmailId(ownerBean.getEmail());
                contactdetails.setLandline(ownerBean.getLandline());
                contactdetails.setMobile(ownerBean.getContactNo());
                contactdetails.setFax(ownerBean.getFax());
                contactdetails.setFax2(ownerBean.getFax2());
                contactdetails.setTollfreeNo(ownerBean.getToolfree());
                contactdetails.setTollfreeeNo2(ownerBean.getToolfree2());
                contactdetails.setWebsite(ownerBean.getWebsite());
                contactDao.save(contactdetails);
            } else {
                contactdetails.setBusinessType(ownerBean.getBusinessType());
                contactdetails.setContactName(ownerBean.getName());
                contactdetails.setEmailId(ownerBean.getEmail());
                contactdetails.setLandline(ownerBean.getLandline());
                contactdetails.setMobile(ownerBean.getContactNo());
                contactdetails.setFax(ownerBean.getFax());
                contactdetails.setFax2(ownerBean.getFax2());
                contactdetails.setTollfreeNo(ownerBean.getToolfree());
                contactdetails.setTollfreeeNo2(ownerBean.getToolfree2());
                contactdetails.setWebsite(ownerBean.getWebsite());
                contactdetails.setOwnerId((int) ownerBean.getId());
                contactDao.save(contactdetails);

            }
        } else {
            status.setStatus(0);
        }

        return status;
    }

    @Override
    public Status saveEmployee(EmployeeBean employeeBean) {
        Status status = new Status();
        if (employeeBean.getPassword().equals(employeeBean.getConfirm_password())) {
            if (employeeBean.getOtp().equals(employeeBean.getNew_otp())) {
                status.setStatus(1);
                Employeedetails employeedetails = new Employeedetails();
                employeedetails.setFirstName(employeeBean.getFirstName());
                employeedetails.setLastName(employeeBean.getLastName());
                employeedetails.setMobileNo(employeeBean.getMobileNo());
                employeedetails.setEmail(employeeBean.getEmail());
                employeedetails.setDesignation(employeeBean.getStaffDesignation());
                employeedetails.setPassword(employeeBean.getPassword());
                employeedetails.setIntroducerId(employeeBean.getIntroducer_id());
                employeedetails.setOtp(employeeBean.getOtp());
                employeedetails.setStatus(true);
                employeedetails = employeeDetailsDao.save(employeedetails);
                Login login = new Login();
                login.setUsername(employeedetails.getEmail());
                login.setPassword(employeedetails.getPassword());
                login.setUsertype("EMPLOYEE");
                login.setStatus(true);
                login.setUserId(employeedetails.getId().intValue());
                loginDao.save(login);
                String msg = "Welcome To Qckseek," + employeeBean.getFirstName() + " " + employeeBean.getLastName();
                sendSms(employeeBean.getMobileNo(), msg);
            } else {
                status.setStatus(2);
                status.setMsg("Otp did not match");
            }
        } else {
            status.setStatus(0);
            status.setMsg("Password and confirm password did not match");
        }
        return status;
    }

    @Override
    public Status otpSendByStaff(String mobileNo, String email, String staffId) {
        Status status = new Status();
        Employeedetails employeedetails = employeeDetailsDao.checkMobileNo(mobileNo);
        Employeedetails employeedetails1 = employeeDetailsDao.checkEmail(email);
        if (employeedetails != null) {
            status.setStatus(2);
            status.setMsg("Mobile No is already exsist");
        } else if (employeedetails1 != null) {
            status.setStatus(3);
            status.setMsg("Email No is already exsist");
        } else {
            Employeeposition employeeposition = employeepositionDao.getDetailsByUserId(staffId);
            if (employeeposition != null) {
                String otp = RandomString.randGenerator(4);
                status.setStatus(1);
                String msg = "Welcome To Qckseek,"
                        + "your Otp is " + otp;
                sendSms(employeeposition.getContactNo(), msg);
                status.setOtp(otp);
            } else {
                status.setStatus(0);
            }

        }
        return status;
    }

    @Override
    public EmployeePositionBean getstaffDetails(String staffId) {
        EmployeePositionBean bean = new EmployeePositionBean();
        Employeeposition employeeposition = employeepositionDao.getDetailsByUserId(staffId);
        if (employeeposition != null) {
            bean.setPositionName(employeeposition.getPositionName());
        }
        return bean;
    }

    @Override
    public List<UpgradeBean> getAllDetails() {
        List<UpgradeBean> upgradeBeans = new ArrayList<>();
        List<Upgrade> list = upgradeDao.loadAll();
        for (Upgrade upgrade : list) {
            UpgradeBean bean = new UpgradeBean();
            bean.setId(upgrade.getId());
            bean.setType(upgrade.getType());
            bean.setRupes(upgrade.getRupes());
            bean.setValidity(upgrade.getValidity());
            bean.setNoOfKeyword(upgrade.getNoOfKeyword());
            bean.setPercentage(upgrade.getPercentage());
            bean.setPriority(upgrade.getPriority());
            if (upgrade.getSmsMail()) {
                bean.setSmsMail("Yes");
            } else {
                bean.setSmsMail("No");
            }
            if (upgrade.getSupport()) {
                bean.setSupport("Yes");
            } else {
                bean.setSupport("No");
            }
            if (upgrade.getAccountManage()) {
                bean.setAccountManage("Yes");
            } else {
                bean.setAccountManage("No");
            }
            bean.setPosition(upgrade.getPosition());
            bean.setPicture(upgrade.getPicture());
            upgradeBeans.add(bean);
        }
        return upgradeBeans;
    }

    @Override
    public List<UpgradeBean> addToCart(long id, long userId) {
        Cart cart = cartDao.checkCart((int) userId, (int) id);
        if (cart == null) {
            Cart cart1=new Cart();
            cart1.setUpgradeId((int) id);
            cart1.setUserId((int) userId);
            cartDao.save(cart1);
        }
        List<Cart> list = cartDao.getAllCartDetails((int) userId);
        List<UpgradeBean> beans = new ArrayList<>();
        for (Cart cart1 : list) {
            Upgrade upgrade = upgradeDao.loadById((long) cart1.getUpgradeId());
            if (upgrade != null) {
                UpgradeBean bean = new UpgradeBean();
                bean.setId(upgrade.getId());
                bean.setType(upgrade.getType());
                bean.setRupes(upgrade.getRupes());
                bean.setValidity(upgrade.getValidity());
                bean.setNoOfKeyword(upgrade.getNoOfKeyword());
                bean.setPercentage(upgrade.getPercentage());
                bean.setPriority(upgrade.getPriority());
                if (upgrade.getSmsMail()) {
                    bean.setSmsMail("Yes");
                } else {
                    bean.setSmsMail("No");
                }
                if (upgrade.getSupport()) {
                    bean.setSupport("Yes");
                } else {
                    bean.setSupport("No");
                }
                if (upgrade.getAccountManage()) {
                    bean.setAccountManage("Yes");
                } else {
                    bean.setAccountManage("No");
                }
                bean.setPosition(upgrade.getPosition());
                bean.setPicture(upgrade.getPicture());
                beans.add(bean);

            }

        }
        return beans;
    }
}
