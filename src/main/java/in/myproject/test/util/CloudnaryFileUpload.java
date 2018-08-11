/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.util;

import com.cloudinary.Cloudinary;
import com.cloudinary.Transformation;
import com.cloudinary.utils.ObjectUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author clb14
 */
public class CloudnaryFileUpload {

    public Map<String, String> uploadImage(MultipartFile file) {
        String timeInMili = String.valueOf(new Date().getTime());
        Map params = Cloudinary.asMap("public_id", timeInMili);
        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "dnvtutax9",
                "api_key", "498755777176313",
                "api_secret", "v7-EXRxVrL7qp_nZc3OuGXTTcnc"));

        Map uploadResult;
        String url = null;
        Map result = new HashMap();
        try {
            byte[] file1 = file.getBytes();
            uploadResult = cloudinary.uploader().upload(file1, params);
            cloudinary.url().transformation(new Transformation().width(100).height(150).crop("fill")).imageTag(params);
            url = (String) uploadResult.get("url");
            String secureUrl = (String) uploadResult.get("secure_url");
            System.out.println("url" + url);
            System.out.println("secureUrl" + secureUrl);
            result.put("url", url);
            result.put("secureUrl", secureUrl);
        } catch (Exception ex) {

        }
        return result;
    }
}
