package Model;

import services.DisplayService;

import java.util.*;

public class Cart {
    static Cart instance = null;
    private static final double TAX = 0.03;
    private Map<String, Product> cart;
    int quantity;
    long totalPrice;

    private Cart() {
        cart = new HashMap<>();
    }

    public static Cart getInstance() {
        if (Cart.instance == null) {
            Cart.instance = new Cart();
        }
        return Cart.instance;
    }

    public void removeAll() {
        cart.clear();
    }


    public void addToCart(Product p) {
        if (cart.containsKey(p.getId())) return;
        cart.put(p.getId(), p);
    }

    public String getDisplayTotalPrice() {
        return DisplayService.toVND(this.getTotalPrice());
    }

    public long getTotalPrice() {
        totalPrice = 0L;
        for (Product p : cart.values())
            totalPrice += p.getPrice();
        return totalPrice;
    }

    public String getDisplayTax() {
        return DisplayService.toPercents(TAX);
    }

    public String getDisplayAfterTaxes() {
        return DisplayService.toVND(getAfterTaxes());
    }

    public long getTax() {
        return (long) (getTotalPrice() * TAX);
    }

    public long getAfterTaxes() {
        return getTotalPrice() + getTax();
    }

    public int getQuantity() {
        quantity = cart.size();
        return quantity;
    }

    public void showCart() {
        for (Product p : cart.values())
            System.out.println(p);
    }

    public void removeFromCart(String id) {
        cart.remove(id);
    }

    public void removeFromCart(Product product) {
        cart.remove(product.getId());
    }

    public Collection<Product> getProductList() {
//        Collections.shuffle(cart.values().stream().toList());
        return cart.values();
    }

    public List<Product> getList() {
        List<Product> list = cart.values().stream().toList();
        return list;
    }


    public static void main(String[] args) {
        Product p1 = new Product("p1", "wooden", "abc", 3L, "no description", "123", "1");
        Product p2 = new Product("p2", "wooden", "abc", 4L, "no description", "123", "1");
        Product p3 = new Product("p3", "wooden", "abc", 5L, "no description", "123", "1");
        Product p4 = new Product("p4", "wooden", "abc", 6L, "no description", "123", "1");
        Product p5 = new Product("p1", "wooden", "abc", 7L, "no description", "123", "1");
        Cart cart = new Cart();
        cart.getProductList();
        cart.addToCart(p1);
        cart.addToCart(p2);
        cart.addToCart(p3);
        cart.addToCart(p4);
        cart.addToCart(p5);
        System.out.println(cart.getList());
        List<Product> list = new ArrayList<>();
//        list.add(p1);
//        list.add(p2);
//        list.add(p3);
//        list.add(p4);
//        list.add(p5);
        list = cart.cart.values().stream().toList();
        Collections.shuffle(list);
        for (Product p : list)
                System.out.println(p);
        }

    }

