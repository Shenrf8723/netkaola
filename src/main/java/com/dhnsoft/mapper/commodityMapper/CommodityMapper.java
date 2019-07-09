package com.dhnsoft.mapper.commodityMapper;

import com.dhnsoft.po.Commodity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommodityMapper {
    //分页查询商品信息
    public List<Commodity> findPageCommodity(@Param("cid") String cid, @Param("name") String name, @Param("currentPage") int currentPage, @Param("pageSize") int pageSize);
    //查询总记录数
    public Integer findPageNum(@Param("cid") String cid, @Param("name") String name);
    //修改商品信息
    public int updateCommodity(Commodity commodity);
    //删除商品信息
    public int deleteCommidity(@Param("id") Integer id);
    //添加商品信息
    public int addCommidity(Commodity commodity);
    //按照分类查询商品信息
    public List<Commodity> findCommidtiyByCid(@Param("cid") String cid);

    //按照商品id查询商品信息
    public List<Commodity>  findCommidtiyById(@Param("id") Integer id);

    //查询全部商品信息
    public List<Commodity> findCommodity();
}
