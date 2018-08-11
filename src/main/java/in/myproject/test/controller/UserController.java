/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.controller;

import in.myproject.test.business.UserService;
import in.myproject.test.dto.EmployeeBean;
import in.myproject.test.dto.EmployeePositionBean;
import in.myproject.test.dto.OwnerBean;
import in.myproject.test.dto.PaymentBean;
import in.myproject.test.dto.PictureBean;
import in.myproject.test.dto.Status;
import in.myproject.test.dto.UpgradeBean;
import in.myproject.test.dto.UserBean;
import in.myproject.test.util.RandomString;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author pc2
 */
@CrossOrigin
@Controller
@RequestMapping(value = "/user/**")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String userRegistration(@ModelAttribute("userBean") UserBean userBean, HttpServletRequest request) {
        Status status = userService.userRegister(userBean);
        request.getSession().setAttribute("otpstatus", status);
        return "otp";
    }

    @RequestMapping(value = "/uploadPicture", method = RequestMethod.POST)
    public String uploadPicture(@ModelAttribute("picturebean") PictureBean pictureBean, HttpServletRequest request) {
        userService.uploadImage(pictureBean);
        return "redirect:/Login";
    }

    @RequestMapping(value = "/loginsuccess", method = RequestMethod.GET)
    public String loginsuccess(HttpServletRequest request, ModelMap modelMap) {
        Status userlogin = (Status) request.getSession().getAttribute("userlogin");
        if (userlogin != null) {
            if (userlogin.getType().equals("BUSINESS-OWNER")) {
                OwnerBean ownerBean = userService.getAllDetailsByOwnerId(userlogin.getId());
                modelMap.addAttribute("ownerBean", ownerBean);
                return "ownereditProfile";
            } else {
//                OwnerBean ownerBean = userService.getAllDetailsByOwnerId(userlogin.getId());
//                modelMap.addAttribute("ownerBean", ownerBean);
                return "editemployeeProfile";
            }

        } else {
            return "redirect:/";
        }

    }

    @RequestMapping(value = "/upgrade", method = RequestMethod.GET)
    public String upgrade(HttpServletRequest request, ModelMap modelMap) {
        Status userlogin = (Status) request.getSession().getAttribute("userlogin");
        if (userlogin != null) {
            modelMap.addAttribute("upgrade", userService.getAllDetails());
            return "upgrade";
        } else {
            return "redirect:/Login";
        }

    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    @RequestMapping(value = "/mobileNoCheck", method = RequestMethod.POST)
    public @ResponseBody
    Status userRegistration(@RequestParam String phoneNo, HttpServletRequest request) {
        Status status = userService.checkPhoneNo(phoneNo);
        request.getSession().setAttribute("phoneNo", phoneNo);
        return status;
    }

    @RequestMapping(value = "/OTP-Check", method = RequestMethod.POST)
    public @ResponseBody
    Status otpcheck(@RequestParam String otp, HttpServletRequest request) {
        System.out.println("otp=" + otp);
        Status otpcheck = (Status) request.getSession().getAttribute("otpstatus");
        Status status = userService.otpCheck(otpcheck.getId(), otp);
        return status;
    }

    @RequestMapping(value = "/userLogin", method = RequestMethod.POST)
    public @ResponseBody
    Status userLogin(@RequestBody UserBean userBean, HttpServletRequest request) {
        Status status = userService.loginUser(userBean);
        request.getSession().setAttribute("userlogin", status);
        return status;
    }

    @RequestMapping(value = "/phoneNoCheck", method = RequestMethod.POST)
    public @ResponseBody
    Status ownerRegistration(@RequestParam String phoneNo, HttpServletRequest request) {
        Status status = userService.checkphoneNo(phoneNo);
        System.err.println("status is" + status);
        request.getSession().setAttribute("phoneNo", phoneNo);
        return status;
    }

    @RequestMapping(value = "/sendOtp", method = RequestMethod.POST)
    public @ResponseBody
    Status sendOtp(@RequestParam String phoneNo, HttpServletRequest request) {
        Status status = new Status();
        String code = RandomString.randGenerator(4);
        status.setStatus(1);
        status.setOtp(code.trim());
        String msg = "Welcome To Qckseek,"
                + "Your Account varification code is: " + code;
        userService.sendSms(phoneNo, msg);
        return status;
    }

    @RequestMapping(value = "/saveOwner", method = RequestMethod.POST)
    public @ResponseBody
    Status saveOwner(@RequestParam String phoneNo, @RequestParam String comapanyName, @RequestParam String stateId, @RequestParam String cityid, @RequestParam String name, @RequestParam String email, @RequestParam String otp, @RequestParam String checkotp, HttpServletRequest request) {
        return userService.saveOwner(comapanyName, new Long(stateId), new Long(cityid), name, phoneNo, email, otp, checkotp, request);
    }

    @RequestMapping(value = "/updatesaveOwner", method = RequestMethod.POST)
    public @ResponseBody
    Status updatesaveOwner(@RequestBody OwnerBean ownerBean) {
        return userService.updateGeneralInfo(ownerBean);
    }

    @RequestMapping(value = "/updateOwnerBusinessDetails", method = RequestMethod.POST)
    public @ResponseBody
    Status updateOwnerBusinessDetails(@RequestBody OwnerBean ownerBean) {
        return userService.updateBusinessDetails(ownerBean);
    }

    @RequestMapping(value = "/updateOwnerContactDetails", method = RequestMethod.POST)
    public @ResponseBody
    Status updateOwnerContactDetails(@RequestBody OwnerBean ownerBean) {
        return userService.updateContactDetails(ownerBean);
    }

    @RequestMapping(value = "/saveBussinessDetails", method = RequestMethod.POST)
    public @ResponseBody
    Status saveBussinessDetails(@RequestParam String address, @RequestParam String businessName, @RequestParam String stateId, @RequestParam String street, @RequestParam String landmark, @RequestParam String cityid, @RequestParam String pincode, @RequestParam String ownerId) {
        return userService.saveBussinessDetails(address, businessName, new Long(stateId), street, landmark, new Long(cityid), pincode, ownerId);
    }

    @RequestMapping(value = "/saveContactDetails", method = RequestMethod.POST)
    public @ResponseBody
    Status saveContactDetails(@RequestParam String personName, @RequestParam String landNo, @RequestParam String mobileNo, @RequestParam String faxNo, @RequestParam String faxAltNo, @RequestParam String tollfreeNo, @RequestParam String tollAltNo, @RequestParam String emailId, @RequestParam String website, @RequestParam String businessType, @RequestParam String ownerId) {
        return userService.saveContactDetails(personName, landNo, mobileNo, faxNo, faxAltNo, tollfreeNo, tollAltNo, emailId, website, businessType, ownerId);

    }

    @RequestMapping(value = "/phonenocheck", method = RequestMethod.POST)
    public @ResponseBody
    Status customerRegistration(@RequestParam String phoneNo, HttpServletRequest request) {
        Status status = userService.checkphoneno(phoneNo);
        System.err.println("status is" + status);
        request.getSession().setAttribute("phoneNo", phoneNo);
        return status;
    }

    @RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
    public @ResponseBody
    Status saveCustomer(@RequestParam String phoneNo, @RequestParam String name, @RequestParam String email, @RequestParam String address, @RequestParam String password, @RequestParam String confirmPassword, @RequestParam String otp, @RequestParam String checkotp, HttpServletRequest request) {
        return userService.saveCustomer(name, phoneNo, email, address, password, confirmPassword, otp, checkotp, request);

    }

    @RequestMapping(value = "/saveUserKeyword", method = RequestMethod.POST)
    public @ResponseBody
    Status saveUserKeyword(@RequestParam String categoryId, @RequestParam String subcategoryId, @RequestParam String ownerId, @RequestParam String keywordName) {
        return userService.saveUserKeyWord(new Long(categoryId), new Long(subcategoryId), Integer.parseInt(ownerId), keywordName);
    }

    @RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public @ResponseBody
    Status saveEmployee(@RequestBody EmployeeBean employeeBean) {
        return userService.saveEmployee(employeeBean);
    }

    @RequestMapping(value = "/sendOTP", method = RequestMethod.POST)
    public @ResponseBody
    Status sendOTP(@RequestParam String mobile, @RequestParam String email, @RequestParam String staffId) {
        return userService.otpSendByStaff(mobile, email, staffId);
    }

    @RequestMapping(value = "/getStaffDetails", method = RequestMethod.GET)
    public @ResponseBody
    EmployeePositionBean getStaffDetails(@RequestParam String staffId) {
        return userService.getstaffDetails(staffId);
    }
    
    //25-02
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String addToCart(@PathVariable("id") long id, HttpServletRequest request, ModelMap modelMap) {
        Status userlogin = (Status) request.getSession().getAttribute("userlogin");
        if (userlogin != null) {
            System.out.println("userlogin.getUserId()==" + userlogin.getId());
            List<UpgradeBean> myCart = userService.addToCart(id, userlogin.getId());

            double price = 0.00;
            for (UpgradeBean upgradeBean : myCart) {
                price = price + upgradeBean.getRupes();
            }
            modelMap.addAttribute("myCart", myCart);
            modelMap.addAttribute("total", price);
            request.getSession().setAttribute("myCart", myCart);
            request.getSession().setAttribute("price", price);
            return "addToCart";
        } else {
            return "redirect:/Login";
        }
    }

    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String checkOut(HttpServletRequest request, ModelMap modelMap) {
        List<UpgradeBean> beans = (List<UpgradeBean>) request.getSession().getAttribute("myCart");
        double price = (double) request.getSession().getAttribute("price");
        modelMap.addAttribute("myCart", beans);
        modelMap.addAttribute("total", price);
        return "checkout";
    }
    
    @RequestMapping(value = "/payment", method = RequestMethod.POST)
    public String payment(HttpServletRequest request,@ModelAttribute ("paymentBean") PaymentBean paymentBean) {
        request.getSession().setAttribute("paymentBean", paymentBean);
        return "payment";
    }

}
