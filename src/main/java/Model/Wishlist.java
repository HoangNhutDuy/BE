package Model;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Wishlist {
    static Wishlist instance = null;
    private Map<String, Product> wishList;

    private Wishlist() {
        wishList = new HashMap<>();
    }

    public static Wishlist getInstance() {
        if (Wishlist.instance == null) {
            Wishlist.instance = new Wishlist();
        }
        return Wishlist.instance;
    }
    public void removeAll(){
        wishList.clear();
    }


    public void addToWishList(Product p) {
        if (wishList.containsKey(p.getId())) return;
        wishList.put(p.getId(), p);
    }

    public void showWishList() {
        for (Product p : wishList.values())
            System.out.println(p);
    }
    public int getQuantity() {
        return wishList.size();
    }

    public void removeFromWishList(String id) {
        wishList.remove(id);
    }

    public void removeFromWishList(Product product) {
        wishList.remove(product.getId());
    }

    public Collection<Product> getProductList() {
        return wishList.values();
    }


}
