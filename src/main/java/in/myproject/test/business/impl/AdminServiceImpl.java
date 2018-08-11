/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.business.impl;

import in.myproject.test.business.AdminService;
import in.myproject.test.dao.AdminDao;
import in.myproject.test.dao.BackOfficeDao;
import in.myproject.test.dao.BrandDao;
import in.myproject.test.dao.CategoryDao;
import in.myproject.test.dao.CityDao;
import in.myproject.test.dao.CustomerDao;
import in.myproject.test.dao.DistrictDao;
import in.myproject.test.dao.EmployeepositionDao;
import in.myproject.test.dao.KeywordDao;
import in.myproject.test.dao.LandingAdDao;
import in.myproject.test.dao.MiddleAdDao;
import in.myproject.test.dao.OwnerDao;
import in.myproject.test.dao.PackagetableDao;
import in.myproject.test.dao.ProductDao;
import in.myproject.test.dao.SideAdDao;
import in.myproject.test.dao.StateDao;
import in.myproject.test.dao.SubcategoryDao;
import in.myproject.test.dao.UserDao;
import in.myproject.test.domain.Admin;
import in.myproject.test.domain.Backofficeemployee;
import in.myproject.test.domain.Brand;
import in.myproject.test.domain.Category;
import in.myproject.test.domain.City;
import in.myproject.test.domain.Customerregistration;
import in.myproject.test.domain.District;
import in.myproject.test.domain.Employeeposition;
import in.myproject.test.domain.Keyword;
import in.myproject.test.domain.Landingpageadvt;
import in.myproject.test.domain.Middleadvt;
import in.myproject.test.domain.Ownerform;
import in.myproject.test.domain.Packagetable;
import in.myproject.test.domain.Product;
import in.myproject.test.domain.Sideadvt;
import in.myproject.test.domain.State;
import in.myproject.test.domain.Subcategory;
import in.myproject.test.domain.User;
import in.myproject.test.dto.AdminBean;
import in.myproject.test.dto.*;
import in.myproject.test.util.CloudnaryFileUpload;
import in.myproject.test.util.JustDial;
import in.myproject.test.util.RandomString;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author PC6
 */
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDao adminDao;
    @Autowired
    StateDao stateDao;
    @Autowired
    CityDao cityDao;
    @Autowired
    CategoryDao categoryDao;
    @Autowired
    SubcategoryDao subcategoryDao;
    @Autowired
    BrandDao brandDao;
    @Autowired
    ProductDao productDao;
    @Autowired
    UserDao userDao;
    @Autowired
    DistrictDao districtDao;
    @Autowired
    PackagetableDao packagetableDao;
    @Autowired
    KeywordDao keywordDao;
    @Autowired
    EmployeepositionDao employeepositionDao;
    @Autowired
    CustomerDao customerDao;
    @Autowired
    BackOfficeDao backOfficeDao;
    @Autowired
    OwnerDao ownerDao;
    @Autowired
    LandingAdDao landingAdDao;
    @Autowired
    SideAdDao sideAdDao;
    @Autowired
    MiddleAdDao middleAdDao;

    @Override
    public Status loginAdmin(String username, String password) {
        Admin admin = adminDao.loginCheck(username, password);
        Status status = new Status();
        if (admin != null) {
//            admin.setLastlogin(new Date());
//            adminDao.save(admin);
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd H:m:s");
            status.setLastLogin(dateFormat.format(admin.getLastlogin()));
            status.setUsername(admin.getUsername());
            status.setId(admin.getId());
            status.setStatus(1);
            status.setEmail(admin.getEmail());
            status.setMsg(JustDial.success);
            status.setName(admin.getName());
            if (!admin.getImage().equals("")) {
                status.setImage(admin.getImage());
            }
        } else {
            status.setStatus(0);
            status.setMsg(JustDial.failure);
        }
        return status;
    }

    @Override
    public Status updatePassword(Status status) {
        Admin admin = adminDao.loadById(status.getId());
        Status status1 = new Status();
        if (admin != null) {
            if (admin.getPassword().equals(status.getOldpassword())) {
                if (status.getPassword().equals(status.getRepassword())) {
                    admin.setPassword(status.getPassword());
                    adminDao.save(admin);
                    status1.setStatus(1);
                    status1.setMsg(JustDial.success);
                } else {
                    status1.setStatus(0);
                    status1.setMsg(JustDial.retypepasswordStatus);
                }

            } else {
                status1.setStatus(0);
                status1.setMsg(JustDial.passwordStatus);
            }
        } else {
            status1.setStatus(0);
            status1.setMsg(JustDial.failure);
        }
        return status1;
    }

    @Override
    public AdminBean getByAdminID(long id) {
        AdminBean adminBean = new AdminBean();
        Admin admin = adminDao.loadById(id);
        if (admin != null) {
            adminBean.setEmail(admin.getEmail());
            adminBean.setName(admin.getName());
            adminBean.setUsername(admin.getUsername());
        }
        return adminBean;
    }

    @Override
    public Status updateDetails(AdminBean adminBean) {
        Admin admin = adminDao.loadById(adminBean.getId());
        admin.setName(adminBean.getName());
        admin.setEmail(adminBean.getEmail());
        adminDao.save(admin);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg(JustDial.success);
        return status;
    }

    @Override
    public Status updateImage(long id, String image) {
        Admin admin = adminDao.loadById(id);
        admin.setImage(image);
        adminDao.save(admin);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg(JustDial.success);
        return status;
    }

    @Override
    public Status addState(String statename) {
        State state = stateDao.checkState(statename);
        Status status = new Status();
        if (state != null) {
            status.setStatus(0);
            status.setMsg(JustDial.state);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            State s = new State();
            s.setStateName(statename);
            s.setStatus(true);
            stateDao.save(s);
        }
        return status;
    }

    @Override
    public List<Status> getAllState() {
        List<State> states = stateDao.loadall();
        List<Status> list = new ArrayList<>();
        for (State state : states) {
            Status status = new Status();
            status.setId(state.getId());
            if (state.isStatus()) {
                status.setMsg(JustDial.show);
            } else {
                status.setMsg(JustDial.hide);
            }
            status.setName(state.getStateName());
            list.add(status);
        }
        return list;
    }

    @Override
    public Status addDistrict(String districtname, long stateid) {
        State state = stateDao.loadById(stateid);
        District district = districtDao.checkDistrictName(districtname, state);
        Status status = new Status();
        if (district != null) {
            status.setStatus(0);
            status.setMsg(JustDial.district);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            District d = new District();
            d.setStatus(true);
            d.setName(districtname);
            d.setState(state);
            districtDao.save(d);
        }
        return status;
    }

    @Override
    public List<DistrictBean> getAllDistrict() {
        List<District> districts = districtDao.loadAll();
        List<DistrictBean> list = new ArrayList<>();
        for (District district : districts) {
            DistrictBean status = new DistrictBean();
            if (district.isStatus()) {
                status.setStatus(JustDial.show);
            } else {
                status.setStatus(JustDial.hide);
            }
            status.setId(district.getId());
            status.setDistrictName(district.getName());
            status.setStatename(district.getState().getStateName());
            list.add(status);
        }
        return list;
    }

    @Override
    public List<DistrictBean> getDistrictByState(long stateid) {
        List<District> districts = districtDao.fetchDistrictByState(stateid);
        List<DistrictBean> list = new ArrayList<>();
        for (District district : districts) {
            DistrictBean bean = new DistrictBean();
            bean.setStatename(district.getState().getStateName());
            System.out.println("state name is" + district.getState().getStateName());
            bean.setId(district.getId());
            System.out.println("District Id is" + district.getId());
            bean.setDistrictName(district.getName());
            System.out.println("District name is" + district.getName());
            list.add(bean);
        }
        return list;
    }

    @Override
    public Status deleteStateByStateId(long id) {
        State state = stateDao.loadById(id);
        stateDao.delete(state);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Delete successfully");
        return status;
    }

    @Override
    public Status upDateStateName(String name, long id) {
        State state = stateDao.loadById(id);
        state.setStateName(name);
        stateDao.save(state);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("State Name Update successfully");
        return status;
    }

    @Override
    public Status upDateStateStatus(String s, long id) {
        State state = stateDao.loadById(id);
        if (s.equalsIgnoreCase("Show")) {
            state.setStatus(false);
        } else {
            state.setStatus(true);
        }
        stateDao.save(state);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Status Update successfully");
        return status;
    }

    @Override
    public Status deleteDistrictByDistrictId(long id) {
        District district = districtDao.loadById(id);
        districtDao.delete(district);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Delete successfully");
        return status;
    }

    @Override
    public Status upDateDistrictName(String districtName, long id) {
        District district = districtDao.loadById(id);
        district.setName(districtName);
        districtDao.save(district);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("District Name Update successfully");
        return status;
    }

    @Override
    public Status upDateDistrictStatus(String st, long id) {
        District district = districtDao.loadById(id);
        if (st.equalsIgnoreCase("Show")) {
            district.setStatus(false);
        } else {
            district.setStatus(true);
        }
        districtDao.save(district);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("District Status Updated Successfully");
        return status;

    }

    @Override
    public Status categoryAdd(CategoryBean categoryBean) {
        Category category = categoryDao.checkCategory(categoryBean.getName());
        Status status = new Status();
        if (category != null) {
            status.setStatus(0);
            status.setMsg(JustDial.checkCategoryStatus);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            Category c = new Category();
            c.setName(categoryBean.getName());
            c.setColor(categoryBean.getColor());
            c.setIcon(categoryBean.getIcon());
            c.setStatus(true);
            c.setImage("rohan.jpeg");
            categoryDao.save(c);
        }
        return status;
    }

    @Override
    public List<CategoryBean> getAllCategory() {
        List<Category> categorys = categoryDao.loadAll();
        List<CategoryBean> list = new ArrayList<>();
        for (Category category : categorys) {
            CategoryBean status = new CategoryBean();
            status.setName(category.getName());
            status.setId(category.getId());
            status.setColor(category.getColor());
            status.setIcon(category.getIcon());
            if (category.isStatus()) {
                status.setStatus(true);
            } else {
                status.setStatus(false);
            }
            status.setImage(category.getImage());
            list.add(status);
        }
        return list;
    }

    @Override
    public Status addSubcategory(String name, long id) {

        Subcategory subcategory = subcategoryDao.checkSubCategory(name);
        Status status = new Status();
        if (subcategory != null) {
            status.setStatus(0);
            status.setMsg(JustDial.checkSubCategoryStatus);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            Subcategory s = new Subcategory();
            s.setName(name);
            System.out.println("subcategory name is" + name);
            s.setCategory(categoryDao.loadById(id));
            s.setStatus(true);
            subcategoryDao.save(s);
        }
        return status;
    }

    @Override
    public List<SubcategoryBean> getAllSubcategory() {
        List<Subcategory> subcategory = subcategoryDao.loadAll();
        List<SubcategoryBean> list = new ArrayList<>();
        for (Subcategory subcategory1 : subcategory) {
            SubcategoryBean subCatbean = new SubcategoryBean();
            subCatbean.setId(subcategory1.getId());
            subCatbean.setName(subcategory1.getName());
            Category category = subcategory1.getCategory();
            CategoryBean categoryBean = new CategoryBean();
            categoryBean.setId(category.getId());
            categoryBean.setIcon(category.getIcon());
            categoryBean.setImage(category.getImage());
            categoryBean.setName(category.getName());
            categoryBean.setColor(category.getColor());
            if (category.isStatus()) {
                categoryBean.setStatus(true);
            } else {
                categoryBean.setStatus(false);
            }
            subCatbean.setCategoryBean(categoryBean);
            if (subcategory1.isStatus()) {
                subCatbean.setStatus(true);
            } else {
                subCatbean.setStatus(false);
            }
            list.add(subCatbean);
        }
        return list;

    }

    @Override
    public Status UpdateCategoryStatus(long id, String name) {
        Status status = new Status();
        Category category = categoryDao.loadById(id);
        if (name.equalsIgnoreCase("True")) {
            category.setStatus(false);
        } else {
            category.setStatus(true);
        }
        categoryDao.save(category);
        status.setStatus(1);
        status.setMsg("Category Update Status Successfully");
        return status;

    }

    @Override
    public Status addBrand(String name, long id) {

        Brand brand = brandDao.checkBrandname(name);
        Status status = new Status();
        if (brand != null) {
            status.setStatus(0);
            status.setMsg(JustDial.checkBrandStatus);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            Brand brand1 = new Brand();
            brand1.setName(name);
            Category category = categoryDao.loadById(id);
            brand1.setCategory(category);
            brand1.setStatus(true);
            brandDao.save(brand1);
        }
        return status;
    }

    @Override
    public Status UpdateSubCategoryStatus(long id, String name) {
        Status status = new Status();

        Subcategory subcategory = subcategoryDao.loadById(id);
        if (name.equalsIgnoreCase("True")) {
            subcategory.setStatus(false);
        } else {
            subcategory.setStatus(true);
        }
        subcategoryDao.save(subcategory);
        status.setStatus(1);
        status.setMsg("Update Status Successfully");
        return status;

    }

    @Override
    public Status UpdateBrandStatus(long id, String name) {
        Status status = new Status();
        Brand brand = brandDao.loadById(id);
        if (name.equalsIgnoreCase("True")) {
            brand.setStatus(false);
        } else {
            brand.setStatus(true);
        }
        brandDao.save(brand);
        status.setStatus(1);
        status.setMsg("Update Status Successfully");
        return status;
    }

    @Override
    public Status DeleteCategoryByCategoryId(long id) {
        Category category = categoryDao.loadById(id);
        categoryDao.delete(category);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Category Deleted Successfully");
        return status;
    }

    @Override
    public Status DeleteSubCategoryBySubCategoryId(long id) {
        Subcategory subcategory = subcategoryDao.loadById(id);
        subcategoryDao.delete(subcategory);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Sub-Category Deleted Successfully ");
        return status;

    }

    @Override
    public Status DeleteBrandByBrandId(long id) {
        Brand brand = brandDao.loadById(id);
        brandDao.delete(brand);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Brand Deleted Successfully ");
        return status;

    }

    @Override
    public Status addProduct(ProductBean productBean) {

        Product product = productDao.checkProductName(productBean.getItemName());
        Status status = new Status();
        if (product != null) {
            status.setStatus(0);
            status.setMsg(JustDial.checkProductStatus);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            Product p = new Product();
            p.setItemName(productBean.getItemName());
            p.setImage(productBean.getImage());
            p.setItemPrice(productBean.getItemPrice());
            p.setButtonLink(productBean.getButtonLink());
            p.setButtonType(productBean.getButtonType());
            p.setUserEmail(productBean.getUserEmail());
            p.setUserNumber(productBean.getUserNo());
            p.setUserName(productBean.getUserName());
            p.setProductDesc(productBean.getProductDesc());
            p.setProductCond(productBean.getProductCond());
            p.setCategory(categoryDao.loadById(productBean.getCategoryId()));
            p.setSubcategory(subcategoryDao.loadById(productBean.getSubcategoryId()));
            p.setBrand(brandDao.loadById(productBean.getBrandId()));
            p.setState(stateDao.loadById(productBean.getStateId()));
            p.setCity(cityDao.loadById(productBean.getCityId()));
            productDao.save(p);
        }
        return status;

    }

    @Override
    public Status DeleteProductByProductId(long id) {
        Product product = productDao.loadById(id);
        productDao.delete(product);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Product Deleted Successfully ");
        return status;

    }

    @Override
    public List<BrandBean> getAllBrand() {
        List<Brand> brand = brandDao.loadAll();
        List<BrandBean> list = new ArrayList<>();
        for (Brand brand1 : brand) {
            BrandBean brandBean = new BrandBean();
            brandBean.setId(brand1.getId());
            brandBean.setName(brand1.getName());
            Category category = brand1.getCategory();
            CategoryBean categoryBean = new CategoryBean();
            categoryBean.setId(category.getId());
            categoryBean.setIcon(category.getIcon());
            categoryBean.setImage(category.getImage());
            categoryBean.setName(category.getName());
            categoryBean.setColor(category.getColor());
            if (category.isStatus()) {
                categoryBean.setStatus(true);
            } else {
                categoryBean.setStatus(false);
            }
            brandBean.setCategoryBean(categoryBean);

            if (brand1.isStatus()) {
                brandBean.setStatus(true);
            } else {
                brandBean.setStatus(false);
            }
            list.add(brandBean);
        }
        return list;

    }

    @Override
    public List<ProductBean> getAllProduct() {
        List<Product> products = productDao.loadAll();
        List<ProductBean> list = new ArrayList<>();
        for (Product product : products) {
            ProductBean pb = new ProductBean();
            pb.setId(product.getId());
            pb.setImage(product.getImage());
            pb.setItemName(product.getItemName());
            pb.setItemPrice(product.getItemPrice());
            Category category = product.getCategory();
            CategoryBean categoryBean = new CategoryBean();
            categoryBean.setId(category.getId());
            categoryBean.setName(category.getName());
            if (category.isStatus()) {
                categoryBean.setStatus(true);
            } else {
                categoryBean.setStatus(false);
            }
            pb.setCategoryBean(categoryBean);
            Subcategory subcategory = product.getSubcategory();
            SubcategoryBean sb = new SubcategoryBean();
            sb.setId(subcategory.getId());
            sb.setName(subcategory.getName());
            if (subcategory.isStatus()) {
                sb.setStatus(true);
            } else {
                sb.setStatus(false);
            }
            pb.setSubcategoryBean(sb);

            list.add(pb);
        }
        return list;

    }

    @Override
    public int noofRegisterdUser() {
        List<User> user = userDao.loadAll();
        return user.size();
    }

    @Override
    public List<UserBean> getAllUser() {
        List<User> user = userDao.loadAll();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd " + " - " + " hh:mm:ss");
        List<UserBean> list = new ArrayList<>();
        for (User user1 : user) {
            UserBean userBean = new UserBean();
            userBean.setName(user1.getName());
            userBean.setId(user1.getId());
            userBean.setLogin(simpleDateFormat.format(user1.getLastLogin()));
            userBean.setEmailId(user1.getEmailId());
            userBean.setPhoneNo(user1.getPhone_no());
            userBean.setPassword(user1.getPassword());
            userBean.setStatus(user1.getStatus());
            Packagetable packagetable = packagetableDao.loadById(new Long(user1.getPackageId()));
            userBean.setPackageName(packagetable.getPackageName());
            list.add(userBean);
        }
        return list;

    }

    @Override
    public Status deleteUser(String userid) {
        Status status = new Status();
        String id[] = userid.split(",");
        for (int i = 0; i < id.length; i++) {
            User user = userDao.loadById(new Long(id[i]));
            userDao.delete(user);
        }
        status.setStatus(1);
        return status;
    }

    @Override
    public List<SubcategoryBean> getSubcategoryByCategory(long categoryid) {
        List<Subcategory> subcategorys = subcategoryDao.fetchSubcategoryByCategory(categoryid);
        List<SubcategoryBean> list = new ArrayList<>();
        for (Subcategory subcategory : subcategorys) {
            SubcategoryBean bean = new SubcategoryBean();
            bean.setCategoryname(subcategory.getCategory().getName());
            System.out.println("Category Name is" + subcategory.getCategory().getName());
            bean.setId(subcategory.getId());
            System.out.println("Subcategory Id is" + subcategory.getId());
            bean.setName(subcategory.getName());
            System.out.println("Subcategory Id is" + subcategory.getName());
            list.add(bean);
        }
        return list;
    }

    @Override
    public Status addKeyword(String keywordname, long categoryid, long subcategoryid) {

        Keyword keyword = keywordDao.checkKeywordName(keywordname);
        Status status = new Status();
        if (keyword != null) {
            status.setStatus(0);
            status.setMsg(JustDial.keyword);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            Keyword k = new Keyword();
            k.setStatus(true);
            k.setKeywordName(keywordname);
            k.setCategory(categoryDao.loadById(categoryid));
            k.setSubcategory(subcategoryDao.loadById(subcategoryid));
            keywordDao.save(k);
        }
        return status;

    }

    @Override
    public List<KeywordBean> getAllKeyword() {
        List<Keyword> keywords = keywordDao.loadAll();
        List<KeywordBean> list = new ArrayList<>();
        for (Keyword keyword : keywords) {
            KeywordBean bean = new KeywordBean();
            if (keyword.isStatus()) {
                bean.setStatus(JustDial.show);
            } else {
                bean.setStatus(JustDial.hide);
            }

            bean.setId(keyword.getId());
            bean.setKeywordName(keyword.getKeywordName());
            bean.setCategoryname(keyword.getCategory().getName());
            bean.setSubcategoryname(keyword.getSubcategory().getName());
            list.add(bean);
        }
        return list;
    }

    @Override
    public Status upDateKeywordName(String name, long id) {
        Keyword keyword = keywordDao.loadById(id);
        keyword.setKeywordName(name);
        keywordDao.save(keyword);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Keyword Name Update successfully");
        return status;
    }

    @Override
    public Status upDateKeywordStatus(String s, long id) {
        Keyword keyword = keywordDao.loadById(id);
        if (s.equalsIgnoreCase("Show")) {
            keyword.setStatus(false);
        } else {
            keyword.setStatus(true);
        }
        keywordDao.save(keyword);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Status Update successfully");
        return status;
    }

    @Override
    public List<CityBean> getCityByState(long stateid) {
        List<City> citys = cityDao.fetchCityByState(stateid);
        List<CityBean> list = new ArrayList<>();
        for (City city : citys) {
            CityBean bean = new CityBean();
            bean.setStatename(city.getState().getStateName());
            System.out.println("state name is" + city.getState().getStateName());
            bean.setId(city.getId());
            System.out.println("City Id is" + city.getId());
            bean.setCityName(city.getCityName());
            System.out.println("City name is" + city.getCityName());
            list.add(bean);
        }
        return list;

    }

    @Override
    public Status DeleteStaffByStaffId(long id) {
        Employeeposition employeeposition = employeepositionDao.loadById(id);
        employeepositionDao.delete(employeeposition);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Staff Deleted Successfully ");
        return status;
    }

    @Override
    public Status addCity(String cityname, long stateid) {
        State state = stateDao.loadById(stateid);
        City city = cityDao.checkCityName(cityname, state);
        Status status = new Status();
        if (city != null) {
            status.setStatus(0);
            status.setMsg(JustDial.city);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            City c = new City();
            c.setStatus(true);
            c.setCityName(cityname);
            c.setState(state);
            cityDao.save(c);
        }
        return status;
    }

    @Override
    public List<CityBean> getAllCity() {
        List<City> citys = cityDao.loadAll();
        List<CityBean> list = new ArrayList<>();
        for (City city : citys) {
            CityBean status = new CityBean();
            if (city.isStatus()) {
                status.setStatus(JustDial.show);
            } else {
                status.setStatus(JustDial.hide);
            }
            status.setId(city.getId());
            status.setName(city.getCityName() + " , " + city.getState().getStateName());
            status.setCityName(city.getCityName());
            status.setStatename(city.getState().getStateName());
            list.add(status);
        }

        return list;
    }

    @Override
    public Status upDateCityName(String name, long id) {
        City city = cityDao.loadById(id);
        city.setCityName(name);
        cityDao.save(city);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("City Name Update successfully");
        return status;
    }

    @Override
    public Status upDateCityStatus(String s, long id) {
        City city = cityDao.loadById(id);
        if (s.equals("show")) {
            city.setStatus(false);
        } else {
            city.setStatus(true);
        }
        cityDao.save(city);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Status Update successfully");
        return status;
    }

    @Override
    public Status deleteCityById(long id) {
        City city = cityDao.loadById(id);
        cityDao.delete(city);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Delete successfully");
        return status;
    }

    @Override
    public Status employeeAdd(EmployeePositionBean employeePositionBean) {

        Employeeposition employeeposition = employeepositionDao.checkPositionName(employeePositionBean.getPositionName());
        Status status = new Status();
        if (employeeposition != null) {
            status.setStatus(0);
            status.setMsg(JustDial.checkEmployeePosition);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            Employeeposition e = new Employeeposition();
            e.setPositionName(employeePositionBean.getPositionName());
            e.setIntroducerName(employeePositionBean.getIntroducerName());
            e.setState(stateDao.loadById(employeePositionBean.getStateId()));
            e.setCity(cityDao.loadById(employeePositionBean.getCityId()));
            e.setOwnBusinnersPercent(employeePositionBean.getOwnlineBusiness());
            e.setDownlineBusinessPercent(employeePositionBean.getDownlineBusiness());
            e.setContactNo(employeePositionBean.getMobileNo());
            String code = RandomString.randGenerator(4);
            e.setUserId(employeePositionBean.getPositionName() + "-" + code);
            employeepositionDao.save(e);
        }
        return status;
    }

    @Override
    public List<EmployeePositionBean> getAllPosition() {
        List<Employeeposition> employeepositions = employeepositionDao.loadAll();
        List<EmployeePositionBean> list = new ArrayList<>();
        for (Employeeposition e : employeepositions) {
            EmployeePositionBean bean = new EmployeePositionBean();
            bean.setId(e.getId());
            bean.setPositionName(e.getPositionName());
            bean.setIntroducerName(e.getIntroducerName());
            bean.setOwnlineBusiness(e.getOwnBusinnersPercent());
            bean.setDownlineBusiness(e.getDownlineBusinessPercent());
            list.add(bean);
        }
        return list;
    }

    @Override
    public Status UpdateStaffPosition(EmployeePositionBean employeePositionBean) {
        Employeeposition employeeposition = employeepositionDao.loadById(employeePositionBean.getId());
        employeeposition.setPositionName(employeePositionBean.getPositionName());
        employeeposition.setIntroducerName(employeePositionBean.getIntroducerName());
        employeeposition.setState(stateDao.loadById(employeePositionBean.getStateId()));
        employeeposition.setCity(cityDao.loadById(employeePositionBean.getCityId()));
        employeepositionDao.save(employeeposition);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg(JustDial.success);
        return status;
    }

    @Override
    public List<String> getAllKeyWordById(long catagoryId, long subcatagoryId) {
        List<Keyword> keywords = keywordDao.getKeyWord(catagoryId, subcatagoryId);
        List<String> list = new ArrayList<>();
        for (Keyword keyword : keywords) {
            list.add(keyword.getKeywordName());
        }
        return list;
    }

    @Override
    public List<CategoryBeans> getAllCategorys() {
        List<CategoryBeans> categoryBeanses = new ArrayList<>();
        List<Category> categorys = categoryDao.loadAll();
        for (Category category : categorys) {
            CategoryBeans categoryBeans = new CategoryBeans();
            categoryBeans.setCategoryName(category.getName());
            categoryBeans.setId(category.getId().toString());
            List<Subcategory> list = subcategoryDao.fetchSubcategoryByCategory(category.getId());
            List<SubcategoryBean> beans = new ArrayList<>();
            for (Subcategory subcategory : list) {
                SubcategoryBean subcategoryBean = new SubcategoryBean();
                subcategoryBean.setName(subcategory.getName());
                subcategoryBean.setId(subcategory.getId());
                beans.add(subcategoryBean);
            }
            categoryBeans.setSubcategoryBeans(beans);
            categoryBeanses.add(categoryBeans);
        }
        return categoryBeanses;
    }

    @Override
    public List<CustomerBean> getAllCustomer() {
        List<Customerregistration> customerregistration = customerDao.loadAll();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd " + " - " + " hh:mm:ss");
        List<CustomerBean> list = new ArrayList<>();
        for (Customerregistration c : customerregistration) {
            CustomerBean cb = new CustomerBean();
            cb.setName(c.getName());
            cb.setId(c.getId());
            cb.setAddress(c.getAddress());
            cb.setMobileNo(c.getMobileNo());
            cb.setEmailId(c.getEmailId());
            cb.setUserId(c.getUserId());
            cb.setLogin(simpleDateFormat.format(c.getLastLogin()));
            list.add(cb);
        }
        return list;
    }

    @Override
    public Status addBackOffice(BackofficeEmployeeBean backofficeEmployeeBean) {
        Backofficeemployee backofficeemployee = backOfficeDao.checkDesignationName(backofficeEmployeeBean.getDesignation());
        Status status = new Status();
        if (backofficeemployee != null) {
            status.setStatus(0);
            status.setMsg(JustDial.checkDesignationName);
        } else {
            status.setStatus(1);
            status.setMsg(JustDial.success);
            Backofficeemployee b = new Backofficeemployee();
            b.setDesignation(backofficeEmployeeBean.getDesignation());
            b.setUserName(backofficeEmployeeBean.getUserName());
            b.setPassword(backofficeEmployeeBean.getPassword());
            if (backofficeEmployeeBean.getAdManagement()) {
                b.setAdManagement(true);
            } else {
                b.setAdManagement(false);
            }
            if (backofficeEmployeeBean.getAdPackage()) {
                b.setAdPackage(true);
            } else {
                b.setAdPackage(false);
            }
            if (backofficeEmployeeBean.getCreateUser()) {
                b.setCreateUser(true);
            } else {
                b.setCreateUser(false);
            }
            if (backofficeEmployeeBean.getCustomerSupport()) {
                b.setCustomerSupport(true);
            } else {
                b.setCustomerSupport(false);
            }
            if (backofficeEmployeeBean.getFeedback()) {
                b.setFeedback(true);
            } else {
                b.setFeedback(false);
            }
            b.setId(backofficeEmployeeBean.getId());
            if (backofficeEmployeeBean.getKeywords()) {
                b.setKeywords(true);
            } else {
                b.setKeywords(false);
            }
            if (backofficeEmployeeBean.getLocationList()) {
                b.setLocationList(true);
            } else {
                b.setLocationList(false);
            }
            if (backofficeEmployeeBean.getManageAc()) {
                b.setManageAc(true);
            } else {
                b.setManageAc(false);
            }
            if (backofficeEmployeeBean.getManageCategories()) {
                b.setManageCategories(true);
            } else {
                b.setManageCategories(false);
            }
            if (backofficeEmployeeBean.getManageCustomer()) {
                b.setManageCustomer(true);
            } else {
                b.setManageCustomer(false);
            }
            if (backofficeEmployeeBean.getManageEmployee()) {
                b.setManageEmployee(true);
            } else {
                b.setManageEmployee(false);
            }
            if (backofficeEmployeeBean.getManageLocation()) {
                b.setManageLocation(true);
            } else {
                b.setManageLocation(false);
            }
            if (backofficeEmployeeBean.getManagePages()) {
                b.setManagePages(true);
            } else {
                b.setManagePages(false);
            }
            if (backofficeEmployeeBean.getManageReports()) {
                b.setManageReports(true);
            } else {
                b.setManageReports(false);
            }
            if (backofficeEmployeeBean.getViewerList()) {
                b.setViewerList(true);
            } else {
                b.setViewerList(false);
            }
            backOfficeDao.save(b);
        }
        return status;
    }

    @Override
    public List<OwnerBean> getAllOwner() {
        List<Ownerform> ownerforms = ownerDao.loadAll();
        List<OwnerBean> list = new ArrayList<>();
        for (Ownerform ownerform : ownerforms) {
            OwnerBean ownerBean = new OwnerBean();
            ownerBean.setId(ownerform.getId());
            ownerBean.setCompanyName(ownerform.getCompanyName());
            ownerBean.setName(ownerform.getOwnername());
            ownerBean.setContactNo(ownerform.getMobileNo());
            State s = stateDao.loadById(new Long(ownerform.getState().getId()));
            ownerBean.setState(s.getStateName());
            if (ownerform.getStatus()) {
                ownerBean.setStatus(true);
            } else {
                ownerBean.setStatus(false);
            }
            list.add(ownerBean);
        }
        return list;
    }
//22-02-17

    @Override
    public void uploadLandingAdvt(LandingAdvtBean landingAdvtBean) {
        Landingpageadvt landingpageadvt = new Landingpageadvt();
        CloudnaryFileUpload f = new CloudnaryFileUpload();

        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(landingAdvtBean.getAdvt());
            landingpageadvt.setAdvt(imgUrl.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvtOne().isEmpty()) {
            Map<String, String> imgUrl1 = f.uploadImage(landingAdvtBean.getAdvtOne());
            landingpageadvt.setAdvtOne(imgUrl1.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvtTwo().isEmpty()) {
            Map<String, String> imgUrl2 = f.uploadImage(landingAdvtBean.getAdvtTwo());
            landingpageadvt.setAdvtTwo(imgUrl2.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvtThree().isEmpty()) {
            Map<String, String> imgUrl3 = f.uploadImage(landingAdvtBean.getAdvtThree());
            landingpageadvt.setAdvtThree(imgUrl3.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvtFour().isEmpty()) {
            Map<String, String> imgUrl4 = f.uploadImage(landingAdvtBean.getAdvtFour());
            landingpageadvt.setAdvtFour(imgUrl4.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvtFive().isEmpty()) {
            Map<String, String> imgUrl5 = f.uploadImage(landingAdvtBean.getAdvtFive());
            landingpageadvt.setAdvtFive(imgUrl5.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl6 = f.uploadImage(landingAdvtBean.getAdvtSix());
            landingpageadvt.setAdvtSix(imgUrl6.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl7 = f.uploadImage(landingAdvtBean.getAdvtSeven());
            landingpageadvt.setAdvtSeven(imgUrl7.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl8 = f.uploadImage(landingAdvtBean.getAdvtEight());
            landingpageadvt.setAdvtEight(imgUrl8.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl9 = f.uploadImage(landingAdvtBean.getAdvtNine());
            landingpageadvt.setAdvtNine(imgUrl9.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl10 = f.uploadImage(landingAdvtBean.getAdvtTen());
            landingpageadvt.setAdvtTen(imgUrl10.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl11 = f.uploadImage(landingAdvtBean.getAdvtEleven());
            landingpageadvt.setAdvtEleven(imgUrl11.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl12 = f.uploadImage(landingAdvtBean.getAdvtTwelve());
            landingpageadvt.setAdvtTwelve(imgUrl12.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl13 = f.uploadImage(landingAdvtBean.getAdvtThirteen());
            landingpageadvt.setAdvtThirteen(imgUrl13.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl14 = f.uploadImage(landingAdvtBean.getAdvtFourteen());
            landingpageadvt.setAdvtFourteen(imgUrl14.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl15 = f.uploadImage(landingAdvtBean.getAdvtFifteen());
            landingpageadvt.setAdvtFifteen(imgUrl15.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl16 = f.uploadImage(landingAdvtBean.getAdvtSixteen());
            landingpageadvt.setAdvtSixteen(imgUrl16.get("secureUrl"));
        }
        if (!landingAdvtBean.getAdvt().isEmpty()) {
            Map<String, String> imgUrl17 = f.uploadImage(landingAdvtBean.getAdvtSeventeen());
            landingpageadvt.setAdvtSeventeen(imgUrl17.get("secureUrl"));
        }
        landingAdDao.save(landingpageadvt);

    }

    @Override
    public void uploadSideAdvt(SideAdvtBean sideAdvtBean) {
        Sideadvt sideadvt = new Sideadvt();
        CloudnaryFileUpload f = new CloudnaryFileUpload();

        if (!sideAdvtBean.getImage().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(sideAdvtBean.getImage());
            sideadvt.setImage(imgUrl.get("secureUrl"));
        }
        if (!sideAdvtBean.getImageOne().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(sideAdvtBean.getImageOne());
            sideadvt.setImageOne(imgUrl.get("secureUrl"));
        }
        if (!sideAdvtBean.getImageTwo().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(sideAdvtBean.getImageTwo());
            sideadvt.setImageTwo(imgUrl.get("secureUrl"));
        }
        if (!sideAdvtBean.getImageThree().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(sideAdvtBean.getImageThree());
            sideadvt.setImageThree(imgUrl.get("secureUrl"));
        }
        if (!sideAdvtBean.getImageFour().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(sideAdvtBean.getImageFour());
            sideadvt.setImageFour(imgUrl.get("secureUrl"));
        }
        if (!sideAdvtBean.getImageFive().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(sideAdvtBean.getImageFive());
            sideadvt.setImageFive(imgUrl.get("secureUrl"));
        }
        if (!sideAdvtBean.getImageSix().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(sideAdvtBean.getImageSix());
            sideadvt.setImageSix(imgUrl.get("secureUrl"));
        }
        sideAdDao.save(sideadvt);
    }

    @Override
    public List<String> getSideImage() {
        Sideadvt sideadvt = sideAdDao.loadById(Long.valueOf("1"));
        List<String> list = new ArrayList<>();
        if (sideadvt != null) {
            if (sideadvt.getImage() != null) {
                list.add(sideadvt.getImage());
            }
            if (sideadvt.getImageOne() != null) {
                list.add(sideadvt.getImageOne());
            }
            if (sideadvt.getImageTwo() != null) {
                list.add(sideadvt.getImageTwo());
            }
            if (sideadvt.getImageThree() != null) {
                list.add(sideadvt.getImageThree());
            }
            if (sideadvt.getImageFour() != null) {
                list.add(sideadvt.getImageFour());
            }
            if (sideadvt.getImageFive() != null) {
                list.add(sideadvt.getImageFive());
            }
            if (sideadvt.getImageSix() != null) {
                list.add(sideadvt.getImageSix());
            }
        }
        return list;
    }

    @Override
    public void uploadMiddleAdvt(MiddleAdvtBean middleAdvtBean) {
        Middleadvt middleadvt = new Middleadvt();
        CloudnaryFileUpload f = new CloudnaryFileUpload();
        if (!middleAdvtBean.getImage().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(middleAdvtBean.getImage());
            middleadvt.setImage(imgUrl.get("secureUrl"));
        }
        if (!middleAdvtBean.getImageOne().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(middleAdvtBean.getImageOne());
            middleadvt.setImageOne(imgUrl.get("secureUrl"));
        }
        if (!middleAdvtBean.getImageTwo().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(middleAdvtBean.getImageTwo());
            middleadvt.setImageTwo(imgUrl.get("secureUrl"));
        }
        if (!middleAdvtBean.getImageThree().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(middleAdvtBean.getImageThree());
            middleadvt.setImageThree(imgUrl.get("secureUrl"));
        }
        if (!middleAdvtBean.getImageFour().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(middleAdvtBean.getImageFour());
            middleadvt.setImageFour(imgUrl.get("secureUrl"));
        }
        if (!middleAdvtBean.getImageFive().isEmpty()) {
            Map<String, String> imgUrl = f.uploadImage(middleAdvtBean.getImageFive());
            middleadvt.setImageFive(imgUrl.get("secureUrl"));
        }
        middleAdDao.save(middleadvt);
    }

    @Override
    public List<String> getMiddleImage() {
        Middleadvt middleadvt = middleAdDao.loadById(Long.valueOf("1"));
        List<String> list = new ArrayList<>();
        if (middleadvt != null) {
            if (middleadvt.getImage() != null) {
                list.add(middleadvt.getImage());
            }
            if (middleadvt.getImageOne() != null) {
                list.add(middleadvt.getImageOne());
            }
            if (middleadvt.getImageTwo() != null) {
                list.add(middleadvt.getImageTwo());
            }
            if (middleadvt.getImageThree() != null) {
                list.add(middleadvt.getImageThree());
            }
            if (middleadvt.getImageFour() != null) {
                list.add(middleadvt.getImageFour());
            }
            if (middleadvt.getImageFive() != null) {
                list.add(middleadvt.getImageFive());
            }

        }
        return list;
    }
    @Override
    public Status allowOwner(String s, long id) {
        Ownerform ownerform=ownerDao.loadById(id);
        ownerform.setStatus(true);
        ownerDao.save(ownerform);
        Status status = new Status();
        status.setStatus(1);
        status.setMsg("Allowed successfully");
        return status;
    }

}

