package com.dhnsoft.service.commodity;

import com.dhnsoft.po.Commodity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommodityService {
    public List<Commodity> findPageCommodity(@Param("cid") String cid, @Param("name") String name, @Param("currentPage") int currentPage, @Param("pageSize") int pageSize);
    public Integer findPageNum(@Param("cid") String cid, @Param("name") String name);
    public int updateCommodity(Commodity commodity);
    public int deleteCommidity(@Param("id") Integer id);
    public int addCommidity(Commodity commodity);
}
