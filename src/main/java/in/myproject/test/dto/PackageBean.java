/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dto;

/**
 *
 * @author PC6
 */
public class PackageBean {
    
     private String packageName;
     private String packageDetails;
     private int packageValidity;
     private long packeageId;

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getPackageDetails() {
        return packageDetails;
    }

    public void setPackageDetails(String packageDetails) {
        this.packageDetails = packageDetails;
    }

    public int getPackageValidity() {
        return packageValidity;
    }

    public void setPackageValidity(int packageValidity) {
        this.packageValidity = packageValidity;
    }

    public long getPackeageId() {
        return packeageId;
    }

    public void setPackeageId(long packeageId) {
        this.packeageId = packeageId;
    }
     
     
}
