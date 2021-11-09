package com.lmx.web;

import com.lmx.entity.Equipment;
import com.lmx.service.IEquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class EquipmentController {

    @Autowired
    private IEquipmentService equipmentService;

    //矿洞设备信息
    @RequestMapping(value = "/eqfind")
    public String efindAll(Model model, HttpServletRequest request) {
        List<Equipment> equipmentList = equipmentService.efindAll();
        HttpSession session = request.getSession();
        session.setAttribute("equipmentListw", equipmentList);
//        model.addAttribute("equipmentListw", equipmentList);
        return "../../mine.jsp";
    }
}
