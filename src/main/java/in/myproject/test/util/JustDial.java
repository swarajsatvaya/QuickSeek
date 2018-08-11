package in.myproject.test.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author supriya
 */
public class JustDial {

    public static final String success = "SUCCESS";
    public static final String failure = "FAILURE";
    public static final String checkLoginStatus = "Username/Email id  is already exist";
    public static final String passwordStatus = "Old password did not match";
    public static final String retypepasswordStatus = "new password and retype password did not match";
    public static final String state = "State Name already exist";
    public static final String district = "District already exist";
    public static final String city = "City Name already exist";
    public static final String show = "Show";
    public static final String hide = "Hide";
    public static final String checkCategoryStatus="Category already exist";
    public static final String checkSubCategoryStatus="SubCategory already exist";
    public static final String checkBrandStatus="Brand already exist";
    public static final String checkProductStatus="Product already exist";
    public static final String checkUserStatus="User already exist";
    public static final String keyword="Keyword already exist";
    public static final String checkEmployeePosition="Emp Position already exist";
    public static final String checkDesignationName="Designation already exist";
    public JustDial() {
    }

    public Date formatDate(String date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
        SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        Date convertedDate;
        Date NewDate = null;
        try {
            convertedDate = dateFormat.parse(date);
            String newDate = dateFormat1.format(convertedDate);
            NewDate = dateFormat1.parse(newDate);
        } catch (ParseException ex) {

            ex.printStackTrace();
            return new Date();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return NewDate;

    }

}
