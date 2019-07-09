package com.dhnsoft.mapper.shoppingMapper;

import com.dhnsoft.po.Shopping;

import java.util.List;

public interface ShoppingMapper {
    public List<Shopping> findShoppingMsg();
    public int addShopping(Shopping shopping);
    public int delShopping(Integer id);
}
