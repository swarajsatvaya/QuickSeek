/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.controller;

import in.myproject.test.business.AdminService;
import in.myproject.test.business.UserService;
import in.myproject.test.dto.DetailsBean;
import in.myproject.test.dto.LandingAdvtBean;
import in.myproject.test.dto.PackageBean;
import in.myproject.test.dto.SearchBean;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


/*
 *
 * @author sayan
 */
@Controller
public class HomeController {

    @Autowired
    UserService userService;
    @Autowired
    AdminService adminService;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("/Register")
    public String register() {
        return "login";
    }

    @RequestMapping("/freelist")
    public String freelist() {
        return "freeListing";
    }

    @RequestMapping("/registersuccess")
    public String registersuccess() {
        return "registerSuccess";
    }

    @RequestMapping("/signUp")
    public String signUp() {
        return "quicksignup";
    }

    @RequestMapping("/registerUser")
    public String registerUser() {
        return "userreg";
    }

    @RequestMapping("/registerEmployee")
    public String registerEmployee() {
        return "employeereg";
    }

    @RequestMapping("/aboutUs")
    public String aboutUs() {
        return "aboutUs";
    }

    @RequestMapping(value = "/ownerList", method = RequestMethod.POST)
    public String ownerList(@ModelAttribute("searchBean") SearchBean searchBean, ModelMap modelMap) {
        String[] a = searchBean.getCity().split(",");
        searchBean.setCity(a[0]);
        List<DetailsBean> detailsBeans = userService.searchResult(searchBean);
        modelMap.addAttribute("detailsBeans", detailsBeans);
        return "ownerList";
    }

    @RequestMapping(value = "/ownerDetails/{id}", method = RequestMethod.GET)
    public String ownerDetails(@PathVariable("id") long id, ModelMap modelMap) {
        System.out.println("id==" + id);
        DetailsBean detailsBean = userService.getallDetails(id);
        modelMap.addAttribute("detailsBean", detailsBean);
        return "ownerDetails";
    }

    @RequestMapping("/business")
    public String business(HttpServletRequest request, ModelMap modelMap) {
        String comapnyName = (String) request.getSession().getAttribute("comapnyName");
        modelMap.addAttribute("comapnyName", comapnyName);
        return "freelistingBusiness";
    }

    @RequestMapping(value = "/Register-Search", method = RequestMethod.GET)
    public String register2(ModelMap modelMap, HttpServletRequest request) {
        String phoneNo = (String) request.getSession().getAttribute("phoneNo");
        modelMap.addAttribute("phoneNo", phoneNo);
        return "register2";
    }

    @RequestMapping("/Login")
    public String sigin() {
        return "sigin";
    }

    @RequestMapping(value = "/packageDetails", method = RequestMethod.GET)
    public @ResponseBody
    List<PackageBean> packageDetails() {
        return userService.getAllPackage();
    }

    @RequestMapping(value = "/lookingDetils", method = RequestMethod.GET)
    public @ResponseBody
    List<String> searchDetails() {
        return userService.getAllprobability();
    }

    
}


