package in.myproject.test.business;

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
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.scheduling.annotation.Async;

public interface UserService {

    Status userRegister(UserBean userBean);

    Status checkPhoneNo(String phoneNo);

    Status checkphoneNo(String phoneNo);

    Status checkphoneno(String phoneNo);

    Status saveOwner(String comapnyName, long stateid, long cityId, String name, String phoneNo, String email, String otp, String checkOtp, HttpServletRequest request);

    Status otpCheck(long id, String otp);

    Status userLogin(UserBean userBean);

    Status loginUser(UserBean userBean);

    OwnerBean getAllDetailsByOwnerId(long id);

    @Async
    void sendSms(String senderNo, String text);

    List<PackageBean> getAllPackage();

    Status saveUserKeyWord(long categoryId, long subcategoryId, int ownerId, String keywordName);

    Status saveBussinessDetails(String address, String companyName, long stateId, String street, String landmark, long cityid, String pincode, String ownerId);

    Status saveContactDetails(String personName, String landNo, String mobileNo, String faxNo, String faxAltNo, String tollfreeNo, String tollAltNo, String emailId, String website, String businessType, String ownerId);

    Status saveCustomer(String name, String phoneNo, String email, String address, String password, String confirmpassword, String otp, String checkOtp, HttpServletRequest request);

    void uploadImage(PictureBean pictureBean);

    List<DetailsBean> searchResult(SearchBean searchBean);

    DetailsBean getallDetails(long id);

    List<String> getAllprobability();
    
    Status updateGeneralInfo(OwnerBean ownerBean);
    
    Status updateBusinessDetails(OwnerBean ownerBean);
    
    Status updateContactDetails(OwnerBean ownerBean);
    
    Status saveEmployee(EmployeeBean employeeBean);
    
    Status otpSendByStaff(String mobileNo,String email,String staffId);
    
    EmployeePositionBean getstaffDetails(String staffId);
    
    //25-02
    
    List<UpgradeBean> getAllDetails();
    
    List<UpgradeBean> addToCart(long id,long userId);

}
