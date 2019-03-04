package jp.co.isol.controller;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.isol.entity.ItemEntity;
import jp.co.isol.form.DetailForm;
import jp.co.isol.form.LoginForm;
import jp.co.isol.form.PurchaseForm;

@Controller
public class ShoppingController {

	@RequestMapping(value = { "/", "/login" }, method = { GET, POST })
	public String login(Model model) {

		LoginForm form = new LoginForm();

		model.addAttribute(form);

		// jspのファイル名
		return "login";
	}

	@RequestMapping(value = "/menu", method = { GET, POST })
	public String toMenu(@Valid LoginForm form, BindingResult result) {

		if (result.hasErrors()) {
			return "login";
		}

		// jspのファイル名
		return "menu";
	}

	@RequestMapping(value = "/list", method = { GET, POST })
	public String toList(HttpServletRequest request,Model model) {

		List<ItemEntity> list = getItemList();
		model.addAttribute("itemList", list);

		DetailForm form = new DetailForm();
		model.addAttribute(form);

		// jspのファイル名
		return "list";
	}

	@RequestMapping(value = "/detail", method = { GET, POST })
	public String toDetail(DetailForm detailform, HttpServletRequest request, Model model) {

		request.setAttribute("dispItem", getItemFromId(detailform.getItemId()));

		PurchaseForm purchaseForm = new PurchaseForm();
		model.addAttribute(purchaseForm);

		// jspのファイル名
		return "detail";
	}

	private List<ItemEntity> getItemList() {
		List<ItemEntity> list = new ArrayList<>();
		list.add(new ItemEntity(1, "参考書", "./img/book_law_roppouzensyo.png", 1000));
		list.add(new ItemEntity(2, "CD", "./img/entertainment_music.png", 2000));
		list.add(new ItemEntity(3, "Tシャツ", "./img/fashion_sutajan.png", 3000));
		return list;
	}

	private ItemEntity getItemFromId(int id) {

		for (ItemEntity item : getItemList()) {
			if (item.getId() == id) {
				return item;
			}
		}
		return null;
	}
}