package services;

import java.nio.charset.Charset;
import java.sql.SQLException;
import java.util.Random;

public class RandomTextService extends Services {
    public static String nextRandom(int length) throws SQLException {
        String randomText;
        Random random = new Random();
        byte[] bytes = new byte[length];
        for (int i = 0; i < bytes.length; i++) {
            bytes[i] = (byte) (random.nextInt(94) + 33);
        }
        randomText = new String(bytes);
        if (ProductService.getAllIDProducts().contains(randomText)) nextRandom(6);
        return randomText;
    }

    public static void main(String[] args) throws SQLException {
        System.out.println(nextRandom(6));
    }

}
