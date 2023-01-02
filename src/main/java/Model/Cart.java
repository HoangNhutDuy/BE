package Model;

import java.util.*;

public class Cart {
    static Cart instance = null;
    private Map<String, Product> cart;
    int quantity;
    long totalPrice;
    final double TAX = 0.05;

    private Cart() {
        cart = new HashMap<>();
//        init();
    }

    public static Cart getInstance() {
        if (Cart.instance == null) {
            Cart.instance = new Cart();
        }
        return Cart.instance;
    }
    public void removeAll(){
        cart.clear();
    }

//    private void init(){
//        Product p1 = new Product("p1", "wooden", "abc", 3L, "no description", "123");
//        Product p2 = new Product("p2", "wooden", "abc", 4L, "no description", "123");
//        Product p3 = new Product("p3", "wooden", "abc", 5L, "no description", "123");
//        Product p4 = new Product("p4", "wooden", "abc", 6L, "no description", "123");
//        Product p5 = new Product("p1", "wooden", "abc", 7L, "no description", "123");
//        addToCart(p1);
//        addToCart(p2);
//        addToCart(p3);
//        addToCart(p4);
//        addToCart(p5);
//    }

    public void addToCart(Product p) {
        if (cart.containsKey(p.getId())) return;
        cart.put(p.getId(), p);
    }

    public long getTotalPrice() {
        totalPrice = 0L;
        for (Product p : cart.values())
            totalPrice += p.getPrice();
        return totalPrice;
    }

    public long getTax() {
        return (long) (getTotalPrice() * TAX);
    }

    public long getAfterTaxes() {
        return getTotalPrice() - getTax();
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
        return cart.values();
    }

    public static void main(String[] args) {
        Product p1 = new Product("p1", "wooden", "abc", 3L, "no description", "123");
        Product p2 = new Product("p2", "wooden", "abc", 4L, "no description", "123");
        Product p3 = new Product("p3", "wooden", "abc", 5L, "no description", "123");
        Product p4 = new Product("p4", "wooden", "abc", 6L, "no description", "123");
        Product p5 = new Product("p1", "wooden", "abc", 7L, "no description", "123");
        Cart cart = new Cart();
        cart.addToCart(p1);
        cart.addToCart(p2);
        cart.addToCart(p3);
        cart.addToCart(p4);
        cart.addToCart(p5);
        System.out.println(cart.getTotalPrice());
        cart.showCart();
    }

}
