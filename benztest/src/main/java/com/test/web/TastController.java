package com.test.web;
import com.test.domain.Tast;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tasts")
@Controller
@RooWebScaffold(path = "tasts", formBackingObject = Tast.class)
public class TastController {
}
