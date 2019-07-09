package com.dhnsoft.po;

public class Shopping {
    private int id;
    private String commodity_name;
    private Double commodity_price;
    private String commodity_img;

    @Override
    public String toString() {
        return "Shopping{" +
                "id=" + id +
                ", commodity_name='" + commodity_name + '\'' +
                ", commodity_price=" + commodity_price +
                ", commodity_img='" + commodity_img + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCommodity_name() {
        return commodity_name;
    }

    public void setCommodity_name(String commodity_name) {
        this.commodity_name = commodity_name;
    }

    public Double getCommodity_price() {
        return commodity_price;
    }

    public void setCommodity_price(Double commodity_price) {
        this.commodity_price = commodity_price;
    }

    public String getCommodity_img() {
        return commodity_img;
    }

    public void setCommodity_img(String commodity_img) {
        this.commodity_img = commodity_img;
    }
}
