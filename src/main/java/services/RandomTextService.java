package services;

import java.nio.charset.Charset;
import java.sql.SQLException;
import java.util.Random;

public class RandomTextService extends Services {

    //    static final String[] array = {"A", "B", "C"
//            , "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
//            "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W",
//            "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h",
//            "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s",
//            "t", "u", "v", "w", "x", "y", "z",
//            "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "+", "-", "*", "@"};
    static final char[] array = {'a', 'b', 'c', 'd', 'f', 'e', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    static final char[] pass = {'a', 'b', 'c', 'd', 'f', 'e', 'A',
            'B', 'C', 'D', 'E', 'F', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    private static final int LENGTH = 10;
    private static final int PASSWORD_LENGTH = 12;

    public static String nextRandom() throws SQLException {
        String randomText = "";
        Random random = new Random();
        for (int i = 0; i < LENGTH; i++)
            randomText += array[random.nextInt(array.length)];
        return ProductService.getAllIDProducts().contains(randomText) ? nextRandom() : randomText;
    }

    public static String nextRandomPassword() {
        String randomText = "";
        Random random = new Random();
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            randomText += pass[random.nextInt(pass.length)];
        }
        return randomText;
    }

    public static void main(String[] args) throws SQLException {
        // "[]|{}^\\`"\
        System.out.println(nextRandomPassword());
    }

}
