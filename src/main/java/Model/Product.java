package Model;

import services.DisplayService;

import java.io.Serializable;

public class Product implements Serializable {
    private String id;
    private String name;
    private String img;
    private long price;
    String description;
    String nameCate;
    String idCate;

    public Product(String id, String name, String img, long price, String description, String nameCate, String idCate) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.description = description;
        this.nameCate = nameCate;
        this.idCate = idCate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getNameCate() {
        return nameCate;
    }

    public void setNameCate(String nameCate) {
        this.nameCate = nameCate;
    }

    public String getIdCate() {
        return idCate;
    }

    public void setIdCate(String idCate) {
        this.idCate = idCate;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", nameCate='" + nameCate + '\'' +
                '}';
    }
    public String getDisplayPrice(){
        return DisplayService.toVND(this.price);
    }
}
