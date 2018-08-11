package in.myproject.test.util;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.RandomStringUtils;
import org.bouncycastle.crypto.prng.RandomGenerator;

/**
 *
 * @author supriya
 */
public class RandomString {

    public static String randGenerator(int range) {
        String randString = "";
        StringBuffer sb = new StringBuffer();
        String block = "02546621462251265611652612236";
        sb.append(block).append(block.toUpperCase()).append("0123456789");
        block = sb.toString();
        sb = new StringBuffer();
        Random random = new Random();
        try {
            for (int i = 0; i < range; i++) {
                sb.append(Character.toString(block.charAt(random.nextInt(block.length() - 1))));
            }
            randString = sb.toString();
        } catch (ArrayIndexOutOfBoundsException e) {
            Logger.getLogger(RandomGenerator.class.getName()).log(Level.SEVERE, null, e);
        } catch (NumberFormatException e) {
            Logger.getLogger(RandomGenerator.class.getName()).log(Level.SEVERE, null, e);
        } catch (Exception e) {
            Logger.getLogger(RandomGenerator.class.getName()).log(Level.SEVERE, null, e);
        }
        return randString;
    }

    public static String randomNum() {
        return RandomStringUtils.random(64, false, true);
    }

    public static String randomAlphabetic() {
        return RandomStringUtils.randomAlphabetic(64);
    }

    public static String randomAschii() {
        return RandomStringUtils.randomAscii(32);
    }

    public static String randomAlphaNumeric() {
        return RandomStringUtils.random(32, 0, 20, true, true, "bj81G5RDED3DC6142kasok".toCharArray());
    }

}
