/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.controller;

import in.myproject.test.business.AdminService;
import in.myproject.test.dto.AdminBean;
import in.myproject.test.dto.BackofficeEmployeeBean;
import in.myproject.test.dto.BrandBean;
import in.myproject.test.dto.CategoryBean;
import in.myproject.test.dto.CategoryBeans;
import in.myproject.test.dto.CityBean;
import in.myproject.test.dto.CustomerBean;
import in.myproject.test.dto.DistrictBean;
import in.myproject.test.dto.EmployeePositionBean;
import in.myproject.test.dto.KeywordBean;
import in.myproject.test.dto.LandingAdvtBean;
import in.myproject.test.dto.MiddleAdvtBean;
import in.myproject.test.dto.OwnerBean;
import in.myproject.test.dto.ProductBean;
import in.myproject.test.dto.SideAdvtBean;
import in.myproject.test.dto.Status;
import in.myproject.test.dto.SubcategoryBean;
import in.myproject.test.dto.UserBean;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author PC6
 */
@CrossOrigin
@Controller
@RequestMapping(value = "/admin/**")
public class AdminController {

    @Autowired
    AdminService adminService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public @ResponseBody
    Status userLogin(@RequestParam String username, @RequestParam String password, HttpServletRequest request) {
        Status status = adminService.loginAdmin(username, password);
        if (status.getStatus() == 1) {
            request.getSession().setAttribute("superUser", status);
        }
        return status;
    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String userLogin(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "dashboard";
        }

    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/admin";
    }

    @RequestMapping(value = "/noofRegisteredUser", method = RequestMethod.GET)
    public @ResponseBody
    int noofRegisteredUser() {
        return adminService.noofRegisterdUser();
    }

    @RequestMapping(value = "/")
    public String adminLogin() {
        return "adminlogin";
    }

    @RequestMapping(value = "/category")
    public String category(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "manageviewCategory";
        }
    }

    @RequestMapping(value = "/brand")
    public String brand(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "manageBrand";
        }
    }

    @RequestMapping(value = "/manageProfile")
    public String manageProfile(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "manageprofile";
        }
    }

    @RequestMapping(value = "/addproduct")
    public String addproduct(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "addProduct";
        }
    }

    @RequestMapping(value = "/viewproduct")
    public String order(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "manageviewProduct";
        }
    }

    @RequestMapping(value = "/location")
    public String location(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "manageCountry";
        }
    }

    @RequestMapping(value = "/keyword")
    public String keyword(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "businessKeyword";
        }
    }

    @RequestMapping(value = "/userList")
    public String userList(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "manageuser";
        }
    }

    @RequestMapping(value = "/enquiries")
    public String enquiry(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "contactEnquiries";
        }
    }

    @RequestMapping(value = "/orders")
    public String orderList(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "manageOrder";
        }
    }

    @RequestMapping(value = "/employee")
    public String addEmployee(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "addEmployee";
        }
    }

    @RequestMapping(value = "/allViewer")
    public String allViewer(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "allViewer";
        }
    }

    @RequestMapping(value = "/viewerDetails")
    public String viewerDetails(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "viewerDetails";
        }
    }

    @RequestMapping(value = "/viewerSearch")
    public String viewerSearch(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "searchViewer";
        }
    }

    @RequestMapping(value = "/backUser")
    public String backUser(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "backandUser";
        }
    }

    @RequestMapping(value = "/listOwner")
    public String listOwner(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "allOwner";
        }
    }

    @RequestMapping(value = "/landingAd")
    public String landingAd(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "landingAdvt";
        }
    }
    
    @RequestMapping(value = "/sideAd")
    public String sideAd(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "sideAdvt";
        }
    }
    
    @RequestMapping(value = "/middleAd")
    public String middleAd(HttpServletRequest request) {
        Status status = (Status) request.getSession().getAttribute("superUser");
        if (status == null) {
            return "redirect:/admin";
        } else {
            return "middleAdvt";
        }
    }

    @RequestMapping(value = "/updatepassword", method = RequestMethod.POST)
    public @ResponseBody
    Status updatepassword(@RequestParam String id, @RequestParam String oldpassword, @RequestParam String password, @RequestParam String repassword) {
        Status status = new Status();
        status.setId(new Long(id));
        status.setOldpassword(oldpassword);
        status.setPassword(password);
        status.setRepassword(repassword);
        return adminService.updatePassword(status);
    }

    @RequestMapping(value = "/updateDetails", method = RequestMethod.POST)
    public Status updatepassword(@RequestParam(required = true) String id, @RequestParam(required = true) String name, @RequestParam(required = true) String email) {
        AdminBean adminBean = new AdminBean();
        adminBean.setId(new Long(id));
        adminBean.setName(name);
        adminBean.setEmail(email);
        return adminService.updateDetails(adminBean);
    }

    @RequestMapping(value = "/updateImage", method = RequestMethod.POST)
    public Status updateImage(@RequestParam(required = true) String id, @RequestParam(required = true) String image) {
        return adminService.updateImage(new Long(id), image);
    }

    @RequestMapping(value = "/loadByUserid", method = RequestMethod.GET)
    public AdminBean loadByUserId(@RequestParam(required = true) String id) {
        return adminService.getByAdminID(new Long(id));
    }

    @RequestMapping(value = "/addState", method = RequestMethod.POST)
    public @ResponseBody
    Status addState(@RequestParam(required = true) String statename) {
        return adminService.addState(statename);
    }

    @RequestMapping(value = "/getAllState", method = RequestMethod.GET)
    public @ResponseBody
    List<Status> getAllState() {
        return adminService.getAllState();

    }

    @RequestMapping(value = "/updateState", method = RequestMethod.POST)
    public @ResponseBody
    Status updateState(@RequestParam(required = true) String stateId, @RequestParam(required = false) String status, @RequestParam(required = false) String stateName) {
        Status s = new Status();
        if (stateName != null) {
            s = adminService.upDateStateName(stateName, new Long(stateId));
        }
        if (status != null) {
            s = adminService.upDateStateStatus(status, new Long(stateId));
        }
        return s;
    }

    @RequestMapping(value = "/deleteState", method = RequestMethod.POST)
    public @ResponseBody
    Status deleteState(@RequestParam(required = true) String stateId) {
        return adminService.deleteStateByStateId(new Long(stateId));
    }

    @RequestMapping(value = "/addDistrict", method = RequestMethod.POST)
    public @ResponseBody
    Status addDistrict(@RequestParam(required = true) String districtname, @RequestParam(required = true) String id) {
        return adminService.addDistrict(districtname, new Long(id));
    }

    @RequestMapping(value = "/getAllDistrict", method = RequestMethod.GET)
    public @ResponseBody
    List<DistrictBean> getAllDistrict() {
        return adminService.getAllDistrict();
    }

    @RequestMapping(value = "/updateDistrict", method = RequestMethod.POST)
    public @ResponseBody
    Status updateDistrict(@RequestParam(required = true) String districtId, @RequestParam(required = false) String status, @RequestParam(required = false) String districtName) {
        Status s = new Status();
        if (districtName != null) {
            s = adminService.upDateDistrictName(districtName, new Long(districtId));
        }
        if (status != null) {
            s = adminService.upDateDistrictStatus(status, new Long(districtId));
        }
        return s;
    }

    @RequestMapping(value = "/deleteDistrict", method = RequestMethod.POST)
    public @ResponseBody
    Status deleteDistrict(@RequestParam(required = true) String districtId) {
        return adminService.deleteDistrictByDistrictId(new Long(districtId));
    }

    @RequestMapping(value = "/getDistrictByState", method = RequestMethod.GET)
    public @ResponseBody
    List<DistrictBean> getDistrictByState(@RequestParam(required = true) String stateId) {
        return adminService.getDistrictByState(new Long(stateId));
    }

    @RequestMapping(value = "/getCityByState", method = RequestMethod.GET)
    public @ResponseBody
    List<CityBean> getCityByState(@RequestParam(required = true) String stateId) {
        return adminService.getCityByState(new Long(stateId));

    }

    @RequestMapping(value = "/addNewCity", method = RequestMethod.POST)
    public @ResponseBody
    Status addCity(@RequestParam(required = true) String cityname, @RequestParam(required = true) String id) {
        return adminService.addCity(cityname, new Long(id));
    }

    @RequestMapping(value = "/getAllCity", method = RequestMethod.GET)
    public @ResponseBody
    List<CityBean> getAllCity() {
        return adminService.getAllCity();
    }

    @RequestMapping(value = "/updateCityDetails", method = RequestMethod.POST)
    public @ResponseBody
    Status updateCityDetails(@RequestParam(required = true) String cityId, @RequestParam(required = false) String status, @RequestParam(required = false) String cityName) {
        Status s = new Status();
        if (cityName != null) {
            s = adminService.upDateCityName(cityName, new Long(cityId));
        }
        if (status != null) {
            s = adminService.upDateCityStatus(status, new Long(cityId));
        }
        return s;
    }

    @RequestMapping(value = "/deleteCity", method = RequestMethod.POST)
    public @ResponseBody
    Status deleteCity(@RequestParam(required = true) String cityId) {
        return adminService.deleteCityById(new Long(cityId));
    }

    @RequestMapping(value = "/addcategory", method = RequestMethod.POST)
    public String categoryAdd(@ModelAttribute("categoryBean") CategoryBean categoryBean) {
        Status status = adminService.categoryAdd(categoryBean);
        return "manageviewCategory";

    }

    @RequestMapping(value = "/loadAllCatagory", method = RequestMethod.GET)
    public @ResponseBody
    List<CategoryBean> getAllCatagory() {
        return adminService.getAllCategory();
    }

    @RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
    public @ResponseBody
    Status updateCategory(@RequestParam(required = true) String id, @RequestParam String status) {
        return adminService.UpdateCategoryStatus(new Long(id), status);

    }

    @RequestMapping(value = "/deleteCategory", method = RequestMethod.POST)
    public @ResponseBody
    Status deleteCategory(@RequestParam(required = true) String categoryId) {
        return adminService.DeleteCategoryByCategoryId(new Long(categoryId));
    }

    @RequestMapping(value = "/addSubcategory", method = RequestMethod.POST)
    public @ResponseBody
    Status addSubcategory(@RequestParam(required = true) String id, @RequestParam String name) {
        return adminService.addSubcategory(name, new Long(id));

    }

    @RequestMapping(value = "/loadAllSubCategory", method = RequestMethod.GET)
    public @ResponseBody
    List<SubcategoryBean> getAllSubCatagory() {
        return adminService.getAllSubcategory();
    }

    @RequestMapping(value = "/getSubcategoryByCategory", method = RequestMethod.GET)
    public @ResponseBody
    List<SubcategoryBean> getSubcategoryByCategory(@RequestParam(required = true) String categoryId) {
        return adminService.getSubcategoryByCategory(new Long(categoryId));

    }

    @RequestMapping(value = "/updatesubCategory", method = RequestMethod.POST)
    public @ResponseBody
    Status updatesubCategory(@RequestParam(required = true) String id, @RequestParam String status) {
        return adminService.UpdateSubCategoryStatus(new Long(id), status);

    }

    @RequestMapping(value = "/deleteSubCategory", method = RequestMethod.POST)
    public @ResponseBody
    Status deleteSubCategory(@RequestParam(required = true) String subcategoryId) {
        return adminService.DeleteSubCategoryBySubCategoryId(new Long(subcategoryId));
    }

    @RequestMapping(value = "/addBrand", method = RequestMethod.POST)
    public @ResponseBody
    Status addBrand(@RequestParam(required = true) String id, @RequestParam String name) {
        return adminService.addBrand(name, new Long(id));

    }

    @RequestMapping(value = "/updateBrand", method = RequestMethod.POST)
    public @ResponseBody
    Status updateBrand(@RequestParam(required = true) String id, @RequestParam String status) {
        return adminService.UpdateBrandStatus(new Long(id), status);

    }

    @RequestMapping(value = "/deleteBrand", method = RequestMethod.POST)
    public @ResponseBody
    Status deleteBrand(@RequestParam(required = true) String brandId) {
        return adminService.DeleteBrandByBrandId(new Long(brandId));
    }

    @RequestMapping(value = "/loadAllBrand", method = RequestMethod.GET)
    public @ResponseBody
    List<BrandBean> getAllBrand() {
        return adminService.getAllBrand();
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("productBean") ProductBean productBean) {
        Status status = adminService.addProduct(productBean);
        return "addProduct";
    }

    @RequestMapping(value = "/deleteProduct", method = RequestMethod.POST)
    public Status deleteProduct(@RequestParam(required = true) String productId) {
        return adminService.DeleteProductByProductId(new Long(productId));
    }

    @RequestMapping(value = "/loadAllProduct", method = RequestMethod.GET)
    public @ResponseBody
    List<ProductBean> getAllProduct() {
        return adminService.getAllProduct();
    }

    @RequestMapping(value = "/getAllUser", method = RequestMethod.GET)
    public @ResponseBody
    List<UserBean> getAllUser() {
        return adminService.getAllUser();
    }

    @RequestMapping(value = "/deleteuser", method = RequestMethod.POST)
    public @ResponseBody
    Status deleteUser(@RequestParam String userid) {
        return adminService.deleteUser(userid);
    }

    @RequestMapping(value = "/addKeyword", method = RequestMethod.POST)
    public @ResponseBody
    Status addKeyword(@RequestParam(required = true) String keywordname, @RequestParam(required = true) String id, @RequestParam(required = true) String subcatId) {
        return adminService.addKeyword(keywordname, new Long(id), new Long(subcatId));

    }

    @RequestMapping(value = "/getAllKeyword", method = RequestMethod.GET)
    public @ResponseBody
    List<KeywordBean> getAllKeyword() {
        return adminService.getAllKeyword();
    }

    @RequestMapping(value = "/updateKeyword", method = RequestMethod.POST)
    public @ResponseBody
    Status updateKeywordDetails(@RequestParam(required = true) String keywordId, @RequestParam(required = false) String status, @RequestParam(required = false) String keywordName) {
        Status s = new Status();
        if (keywordName != null) {
            s = adminService.upDateKeywordName(keywordName, new Long(keywordId));

        }
        if (status != null) {
            s = adminService.upDateKeywordStatus(status, new Long(keywordId));
        }
        return s;
    }

    @RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
    public String employeeAdd(@ModelAttribute("employeePositionBean") EmployeePositionBean employeePositionBean) {
        Status status = adminService.employeeAdd(employeePositionBean);
        return "addEmployee";

    }

    @RequestMapping(value = "/loadAllPosition", method = RequestMethod.GET)
    public @ResponseBody
    List<EmployeePositionBean> getAllPosition() {
        return adminService.getAllPosition();
    }

    @RequestMapping(value = "/deleteStaff", method = RequestMethod.POST)
    public @ResponseBody
    Status deleteStaff(@RequestParam(required = true) String employeeId) {
        return adminService.DeleteStaffByStaffId(new Long(employeeId));

    }

    @RequestMapping(value = "/updateStaff", method = RequestMethod.POST)
    public @ResponseBody
    Status updatePosition(@RequestParam(required = true) String employeeid, @RequestParam(required = true) String positionName, @RequestParam(required = true) String introducerName, @RequestParam(required = true) String stateId, @RequestParam(required = true) String cityId) {
        EmployeePositionBean employeePositionBean = new EmployeePositionBean();
        employeePositionBean.setId(new Long(employeeid));
        employeePositionBean.setPositionName(positionName);
        employeePositionBean.setIntroducerName(introducerName);
        employeePositionBean.setStateId(new Long(stateId));
        employeePositionBean.setCityId(new Long(cityId));
        return adminService.UpdateStaffPosition(employeePositionBean);
    }

    @RequestMapping(value = "/getKeyWordByCatagory", method = RequestMethod.POST)
    public @ResponseBody
    List<String> getKeywordByCatagory(@RequestParam String catagoryId, @RequestParam String subcatagoyId) {
        return adminService.getAllKeyWordById(new Long(catagoryId), new Long(subcatagoyId));
    }

    @RequestMapping(value = "/getAllCatagoryWithSubCategory", method = RequestMethod.POST)
    public @ResponseBody
    List<CategoryBeans> getKeywordByCatagory() {
        return adminService.getAllCategorys();
    }

    @RequestMapping(value = "/getAllCustomer", method = RequestMethod.GET)
    public @ResponseBody
    List<CustomerBean> getAllCustomer() {
        return adminService.getAllCustomer();
    }

    @RequestMapping(value = "/addBackEmp", method = RequestMethod.POST)
    public String addBackEmp(@ModelAttribute("backofficeEmployeeBean") BackofficeEmployeeBean backofficeEmployeeBean) {
        Status status = adminService.addBackOffice(backofficeEmployeeBean);
        return "backandUser";

    }

    @RequestMapping(value = "/getAllOwner", method = RequestMethod.GET)
    public @ResponseBody
    List<OwnerBean> getAllOwner() {
        return adminService.getAllOwner();
    }
    
    @RequestMapping(value = "/allowOwner", method = RequestMethod.POST)
    public @ResponseBody
    Status allowOwner(@RequestParam(required = true) String ownerid,@RequestParam(required = false) String status){
        Status st = new Status();
        st=adminService.allowOwner(status, new Long(ownerid));
        return st;
    }

    //22-02-17
    @RequestMapping(value = "/uploadLandingAdvt", method = RequestMethod.POST)
    public String uploadLandingAdvt(@ModelAttribute("landingAdvtBean") LandingAdvtBean landingAdvtBean, HttpServletRequest request) {
        adminService.uploadLandingAdvt(landingAdvtBean);
        return "landingAdvt";
    }
    
//    23-02-17
    
    @RequestMapping(value = "/uploadSideAdvt", method = RequestMethod.POST)
    public String uploadSideAdvt(@ModelAttribute("sideAdvtBean") SideAdvtBean sideAdvtBean, HttpServletRequest request) {
        adminService.uploadSideAdvt(sideAdvtBean);
        return "sideAdvt";
    }
    
    @RequestMapping(value = "/getSideImage", method = RequestMethod.GET)
    public @ResponseBody
    List<String> getSideImage() {
        return adminService.getSideImage();
    }
    
    @RequestMapping(value = "/uploadMiddleAdvt", method = RequestMethod.POST)
    public String uploadMiddleAdvt(@ModelAttribute("middleAdvtBean") MiddleAdvtBean middleAdvtBean, HttpServletRequest request) {
        adminService.uploadMiddleAdvt(middleAdvtBean);
        return "sideAdvt";
    }
    
    @RequestMapping(value = "/getMiddleImage", method = RequestMethod.GET)
    public @ResponseBody
    List<String> getMiddleImage() {
        return adminService.getMiddleImage();
    }

}

