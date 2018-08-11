/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.business;

import in.myproject.test.dto.AdminBean;
import in.myproject.test.dto.*;
import java.util.List;

/**
 *
 * @author PC6
 */
public interface AdminService {

    Status loginAdmin(String username, String password);

    int noofRegisterdUser();

    Status updatePassword(Status status);

    Status addState(String statename);

    Status updateDetails(AdminBean adminBean);

    Status updateImage(long id, String image);

    AdminBean getByAdminID(long id);

    List<Status> getAllState();

    Status addDistrict(String districtname, long stateid);

    List<DistrictBean> getAllDistrict();

    List<DistrictBean> getDistrictByState(long stateid);

    List<CityBean> getCityByState(long stateid);

    Status addCity(String cityname, long stateid);

    List<CityBean> getAllCity();

    Status upDateCityName(String name, long id);

    Status upDateCityStatus(String status, long id);

    Status deleteCityById(long id);

    List<KeywordBean> getAllKeyword();

    Status upDateKeywordName(String name, long id);

    Status upDateKeywordStatus(String status, long id);

    Status upDateStateName(String name, long id);

    Status upDateStateStatus(String status, long id);

    Status upDateDistrictName(String districtName, long id);

    Status upDateDistrictStatus(String status, long id);

    Status deleteStateByStateId(long id);

    Status deleteDistrictByDistrictId(long id);

    Status categoryAdd(CategoryBean categoryBean);

    List<CategoryBean> getAllCategory();

    List<SubcategoryBean> getSubcategoryByCategory(long categoryid);

    Status addSubcategory(String name, long id);

    List<SubcategoryBean> getAllSubcategory();

    Status UpdateCategoryStatus(long id, String name);

    Status UpdateSubCategoryStatus(long id, String name);

    Status addBrand(String name, long id);

    Status UpdateBrandStatus(long id, String name);

    Status DeleteCategoryByCategoryId(long id);

    Status DeleteSubCategoryBySubCategoryId(long id);

    Status DeleteBrandByBrandId(long id);

    Status addProduct(ProductBean productBean);

    Status DeleteProductByProductId(long id);

    List<BrandBean> getAllBrand();

    List<ProductBean> getAllProduct();

    List<UserBean> getAllUser();

    Status deleteUser(String userid);

    Status addKeyword(String keywordname, long categoryid, long subcategoryid);

    Status employeeAdd(EmployeePositionBean employeePositionBean);

    List<EmployeePositionBean> getAllPosition();

    Status DeleteStaffByStaffId(long id);
    
    Status UpdateStaffPosition(EmployeePositionBean employeePositionBean);
    
    List<String> getAllKeyWordById(long catagoryId,long subcatagoryId);
    
    List<CategoryBeans> getAllCategorys();
    
    List<CustomerBean> getAllCustomer();
    
    Status addBackOffice(BackofficeEmployeeBean backofficeEmployeeBean);
    
    List<OwnerBean> getAllOwner();
    
    //22-02-17
    
    void uploadLandingAdvt(LandingAdvtBean landingAdvtBean);
    
    List<String> getSideImage();
    
    void uploadSideAdvt(SideAdvtBean sideAdvtBean);
    
    void uploadMiddleAdvt(MiddleAdvtBean middleAdvtBean);
    
    List<String> getMiddleImage();
    
    Status allowOwner(String status, long id);

}
