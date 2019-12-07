/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assetmanagement.assetmanagement.controller;

import assetmanagement.assetmanagement.entities.Crops;
import assetmanagement.assetmanagement.entities.Farmers;
import assetmanagement.assetmanagement.entities.FarmersCrops;
import assetmanagement.assetmanagement.entities.SoldCrops;
import assetmanagement.assetmanagement.services.CropsService;
import assetmanagement.assetmanagement.services.FarmersCropsService;
import assetmanagement.assetmanagement.services.FarmersService;
import assetmanagement.assetmanagement.services.PelangganService;
import assetmanagement.assetmanagement.services.PelanggannService;
import assetmanagement.assetmanagement.services.SoldCropsService;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author arman
 */
@Controller
public class MainController {

    @Autowired
    CropsService c;
    @Autowired
    SoldCropsService sc;
    @Autowired
    FarmersCropsService fc;
    @Autowired
    FarmersService f;
    @Autowired
    PelangganService p;
    @Autowired
    PelanggannService ps;

    private String username = "";

    @RequestMapping("/")
    public String handler() {
        if (username.length() == 0) {
            return "login";
        } else if (username.equals("admin")) {
            return "redirect:/adminhome";
        } else {
            return "redirect:/pemerintahhome";
        }
    }

    @RequestMapping("/login")
    public String login(String username, String password) throws IOException {
        if (username.equals("admin") && password.equals("admin") && this.username.length() == 0) {
            this.username = username;
        }
        if (username.equals("pemerintah") && password.equals("pemerintah") && this.username.length() == 0) {
            this.username = username;
        }
        return "redirect:/";
    }

    @RequestMapping("/logout")
    public String logout() {
        username = "";
        return "redirect:/";
    }

    @RequestMapping("/adminhome")
    public String adminHome() {
        if (username.equals("admin")) {
            return "adminhome";
        }
        return "redirect:/";
    }

    @RequestMapping("/managecrops")
    public String manageCrops(Model model) {
        if (username.equals("admin")) {
            model.addAttribute("crops", c.getAll());
            return "managecrops";
        }
        return "redirect:/";
    }

    @GetMapping("/deletecrops/{id}")
    public String deleteCrops(Model model, @PathVariable int id) {
        if (username.equals("admin")) {
            c.delete(c.getById(id));
            return "redirect:/managecrops";
        }
        return "redirect:/";
    }

    @PostMapping("/savecrops")
    public String deleteCrops(Model model, Crops crops) {
        if (username.equals("admin")) {
            c.save(crops);
            return "redirect:/managecrops";
        }
        return "redirect:/";
    }

    @RequestMapping("/managefarmers")
    public String manageFarmers(Model model) {
        if (username.equals("admin")) {
            model.addAttribute("farmers", f.getAll());
            return "managefarmers";
        }
        return "redirect:/";
    }

    @GetMapping("/deletefarmers/{id}")
    public String deleteFarmers(Model model, @PathVariable String id) {
        if (username.equals("admin")) {
            f.delete(f.getById(id));
            return "redirect:/managefarmers";
        }
        return "redirect:/";
    }

    @PostMapping("/savefarmers")
    public String deleteFarmers(Model model, Farmers farmers) {
        if (username.equals("admin")) {
            f.save(farmers);
            return "redirect:/managefarmers";
        }
        return "redirect:/";
    }

    @RequestMapping("/viewsoldcrops")
    public String viewFarmersCrops(Model model) {
        if (username.equals("admin")) {
            model.addAttribute("soldCrops", sc.getAll());
            return "viewsoldcrops";
        }
        return "redirect:/";
    }
    
    @RequestMapping("/viewpelanggan")
    public String viewPelanggan(Model model) {
        if (username.equals("admin")) {
            model.addAttribute("pelanggan", p.getAll());
            return "viewpelanggan";
        }
        return "redirect:/";
    }
    
        @RequestMapping("/viewpelanggann")
    public String viewPelanggann(Model model) {
        if (username.equals("admin")) {
            model.addAttribute("pelanggann", ps.getAll());
            return "viewpelanggann";
        }
        return "redirect:/";
    }

    @RequestMapping("/managefarmerscrops")
    public String manageFarmersCrops(Model model) {
        if (username.equals("admin")) {
            model.addAttribute("farmersCrops", fc.getAll());
            model.addAttribute("farmers", f.getAll());
            model.addAttribute("crops", c.getAll());
            return "managefarmerscrops";
        }
        return "redirect:/";
    }

    @GetMapping("/deletefarmerscrops/{id}")
    public String deleteFarmersCrops(Model model, @PathVariable String id) {
        if (username.equals("admin")) {

            fc.delete(fc.getById(id));
            return "redirect:/managefarmersCrops";
        }
        return "redirect:/";
    }

    @PostMapping("/savefarmerscrops")
    public String deleteFarmersCrops(Model model, FarmersCrops farmersCrops) {
        if (username.equals("admin")) {
            farmersCrops.setId(farmersCrops.getFarmers().getPhoneNumber() + "/" + farmersCrops.getCrops().getId());
            fc.save(farmersCrops);
            return "redirect:/managefarmerscrops";
        }
        return "redirect:/";
    }

    @RequestMapping("/pemerintahhome")
    public String pemerintahHome() {
        if (username.equals("pemerintah")) {
            return "pemerintahhome";
        }
        return "redirect:/";
    }

    @RequestMapping("/viewcropsonsale")
    public String viewCropsOnSale(Model model) {
        if (username.equals("pemerintah")) {
            List<FarmersCrops> farmersCrops = new ArrayList<>();
            for (FarmersCrops farmersCrops1 : fc.getAll()) {
                if (farmersCrops1.getQuantity() > 0) {
                    farmersCrops.add(farmersCrops1);
                }
            }
            model.addAttribute("farmersCrops", farmersCrops);
            return "viewcropsonsale";
        }
        return "redirect:/";
    }

    @PostMapping("/savesoldcrops")
    public String saveSoldCrops(Model model, SoldCrops soldCrops) throws ParseException {
        if (username.equals("pemerintah")) {
            if (soldCrops.getQuantity() <= soldCrops.getFarmersCrops().getQuantity()) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
                LocalDateTime now = LocalDateTime.now();
                soldCrops.setBuyDate(formatter.parse(dtf.format(now)));
                sc.save(soldCrops);
                
                FarmersCrops fcs = soldCrops.getFarmersCrops();
                fcs.setQuantity(fcs.getQuantity() - soldCrops.getQuantity());
                fc.save(fcs);
            }
            return "redirect:/viewcropsonsale";
        }
        return "redirect:/";
    }
}
