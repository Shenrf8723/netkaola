package com.dhnsoft.po;

import java.util.List;

public class Pager {
    //当前页
    private int currentPage;

    //每页显示多少条
    private int pageSize;
    //总记录数
    private int total;
    //一共多少页
    private int totalPage;
    //查询出来的数据集
    private List rs;

    public Pager(int currentPage, int pageSize) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
    }
    public Pager(String currentPage){
        super();
        try{
            this.currentPage=Integer.valueOf(currentPage);
        }catch (Exception e){
            this.currentPage=1;
        }
        this.pageSize=4;
    }

    public Pager() {
        super();
    }

    public int getCurrentPage() {
        return  currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getTotalPage() {
        return (int)Math.ceil(this.total*1.0/this.pageSize);
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List getRs() {
        return rs;
    }

    public void setRs(List rs) {
        this.rs = rs;
    }

    @Override
    public String toString() {
        return "Pager{" +
                "currentPage=" + currentPage +
                ", pageSize=" + pageSize +
                ", total=" + total +
                ", totalPage=" + totalPage +
                ", rs=" + rs +
                '}';
    }
}
