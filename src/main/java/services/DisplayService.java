package services;

import Model.Units;

public class DisplayService extends Services {

    public static String toVND(long amount) {

        return numberFormat(amount) + " " + Units.VND;
    }

    public static String toPercents(double rate) {
        return (rate * 100) + " " + Units.getPercents();
    }

    private static String numberFormat(long number) {
        StringBuilder builder = new StringBuilder(String.valueOf(number));
        for (int i = builder.length() - 3; i > 0; i -= 3) {
            builder.insert(i, ',');
        }
        return builder.toString();
    }

    public static void main(String[] args) {
        long i = 1234562278;
        System.out.println(toVND(i));
    }
}
