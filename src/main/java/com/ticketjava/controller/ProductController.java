package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.ProductService;
import com.ticketjava.vo.ProductVo;
import com.ticketjava.vo.TheaterVo;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	

	// prodType별 상품 리스트 불러오기
	@RequestMapping("/type")
	public String musical(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
						  @RequestParam("prodType") int prodType, Model model) {
		
		model.addAttribute("type", productService.typeList(prodType, crtPage));
		return "product/pList";
	}
	
	// sports 상품 리스트
	@RequestMapping("/sports")
	public String sports(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
						 @RequestParam("prodType") int prodType, Model model) {
		
		model.addAttribute("type", productService.typeList(prodType, crtPage));
		return "product/pListbySports";
	}
	
	
	// '공연장'페이지  (공연장 & 공지사항 리스트)
	@RequestMapping("/theaterList")
	public String theaterList(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
							  Model model) {
		
		model.addAttribute("listMap", productService.getList(crtPage));
		return "product/theater";
	}
	
	
	// 공연장별 리스트
	@RequestMapping("/listbyTheater")
	public String listbyTheater(@ModelAttribute TheaterVo vo, Model model) {
		
		model.addAttribute("map", productService.getTheater(vo));
		return "product/pListbyTheater";
	}
	
	
	// 상품 상세보기
	@RequestMapping("/info")
	public String productInfo(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
							  @RequestParam("prodNo") int prodNo, Model model) {
		
		model.addAttribute("product", productService.getProduct(prodNo, crtPage));
		return "product/productInfo";
	}
	
	@RequestMapping("/preview")
	public String productPreview(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
					  @RequestParam("prodNo") int prodNo, Model model) {
		
		model.addAttribute("product", productService.getProduct(prodNo, crtPage));
		return "product/productInfo";
	}

	// 상품 검색하기
	@RequestMapping("/search")
	public String search(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
						 @RequestParam("keyword") String key, Model model) {

		model.addAttribute("result", productService.searchResult(key, crtPage));
		return "product/productSearch";
	}
	
	// '지역' 페이지 
	@RequestMapping("/region")
	public String region(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
						 @RequestParam("cateNo") int no, Model model) {

		model.addAttribute("allprod", productService.allprod(no, crtPage));
		return "product/pListbyRegion";
	}
	
	// '랭킹' 페이지
	@RequestMapping("/ranking")
	public String ranking(Model model) {

		model.addAttribute("rank", productService.ranking());
		return "product/pListbyRanking";
	}
	
	// 공연 노출
	@ResponseBody
	@PostMapping("/modifyExposure")
	public String modifyExposure(@ModelAttribute ProductVo productVo) {
		productService.modifyExposure(productVo);
		return "";
	}
}
