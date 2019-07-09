package com.dhnsoft.service.commodity;

import com.dhnsoft.mapper.commodityMapper.CommodityMapper;
import com.dhnsoft.po.Commodity;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CommodityServiceImpl implements CommodityService {
    @Autowired
    private CommodityMapper commodityMapper;

    @Override
    public List<Commodity> findPageCommodity(@Param("cid") String cid, @Param("name") String name, @Param("currentPage") int currentPage, @Param("pageSize") int pageSize){
        return commodityMapper.findPageCommodity(cid,name,currentPage,pageSize);
    }

    @Override
    public Integer findPageNum(@Param("cid") String cid, @Param("name") String name) {
        return commodityMapper.findPageNum(cid,name);
    }

    @Override
    public int updateCommodity(Commodity commodity) {
        return commodityMapper.updateCommodity(commodity);
    }

    @Override
    public int deleteCommidity(Integer id) {
        return commodityMapper.deleteCommidity(id);
    }

    @Override
    public int addCommidity(Commodity commodity) {
        return commodityMapper.addCommidity(commodity);
    }

}
