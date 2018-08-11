/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.util;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;

/**
 *
 * @author pc6
 */
public class SendSms {
    public static void SendSms(String no,String text) throws Exception {
        InputStream is = new URL("http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=infofitness&password=1190136997&sendername=QKSEEK&mobileno="+no+"&message="+URLEncoder.encode(text, "UTF-8")).openStream();
        try {
            BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
            StringBuilder sb = new StringBuilder();
            int cp;
            while ((cp = rd.read()) != -1) {
                sb.append((char) cp);
            }
            String xmlText = sb.toString();
            System.out.println("xmlText="+ xmlText);
        } finally {
            is.close();
        }
    }
//    public static void main(String[] args) throws Exception{
//        SendSms("8981431261", "hiii i am sayan");
//    }
}
