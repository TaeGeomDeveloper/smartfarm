package smartfarm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import smartfarm.dao.MemberDAO;
import smartfarm.vo.MemberVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@Controller("personController")
@RequestMapping("/smartfarm")
public class MemberController {
	
	@Autowired
	private MemberDAO memberDAO;

	@RequestMapping(value = "/Main.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Main");
		return mav;
	}
	
	@RequestMapping(value = "/Login.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Login";
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/Forgot.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Forgot(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Forgot";
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/WriteSales.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView WriteSales(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
//		String id = request.getParameter("id");
//		MemberVO member = memberDAO.selectOneMember(id);
//		mav.addObject("member",member);
		viewName= "/smartfarm/WriteSales";
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/Register.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Register";
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value = "/registProcess.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView registProcess(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String b_num = request.getParameter("b_num");	
		String[] phone = request.getParameterValues("phone");
		String[] l_phone = request.getParameterValues("l_phone");
		String pNumber =  phone[0] + phone[1] + phone[2];
		String lNumber = l_phone[0] + l_phone[1] + l_phone[2];
		String address = request.getParameter("address");
		String d_address = request.getParameter("d_address");
		String postal_code = request.getParameter("postal_code");
		String r_num = request.getParameter("r_num");
		String member_type = request.getParameter("member_type");
		String business = request.getParameter("business");
				
		MemberVO memberVO = new MemberVO(id, pwd, name, email, b_num, pNumber, lNumber, address, d_address, Integer.parseInt(postal_code), r_num, member_type, business, null);
		
		memberDAO.insertOneMember(memberVO);
		mav.setViewName("Main");
		return mav;
	}
	
	@RequestMapping(value="/loginProcess.do", method= RequestMethod.POST)
	public ModelAndView loginProcess(@RequestParam("id") String id, @RequestParam("pwd") String pwd, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		MemberVO memberVO = memberDAO.checkMember(id, pwd);
		
		if(memberVO!=null) {
			System.out.println("login ok");
			request.getSession().setAttribute("user", memberVO);
//			mav.setViewName("redirect:/smartfarm/Main.do");
			mav.setViewName("Main");
		}else{
			System.out.println("wrong info"); 
			mav.setViewName("/smartfarm/Login");
		}
		return mav;
	}

	@RequestMapping(value="/Logout.do", method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request,
							   HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		request.getSession().invalidate();
		//String viewName = "redirect:/smartfarm/Main.do";
		mav.setViewName("Main");
		return mav;
	}
	@RequestMapping(value = "/ReadInfo.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView readInfo(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("id");
		MemberVO member = memberDAO.selectOneMember(id);
		mav.addObject("member",member);
		mav.setViewName("/smartfarm/ReadInfo");
		return mav;
	}

	@RequestMapping(value = "/UpdateMember.do", method = RequestMethod.POST)
	public ModelAndView UpdateMember(@ModelAttribute("info")MemberVO member, HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		memberDAO.updateOneMember(member);
		mav.addObject("member",member);
		System.out.println("memberID--->"+member.getId());
		mav.setViewName("redirect:/smartfarm/ReadInfo.do?id="+member.getId()+"&mode=r");
		return mav;
	}

	@RequestMapping(value = "/deleteMember.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView deleteMember(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("id");
		memberDAO.deleteOneMember(id);
		request.getSession().invalidate();
		mav.setViewName("redirect:/smartfarm/Main.do");
		return mav;
	}

	@RequestMapping(value = "/MemberList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		List<MemberVO> list = memberDAO.selectAllMemeber();
		mav.addObject("list",list);
		mav.setViewName("List");
		return mav;
	}

	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}

		
		int begin = 0; //
		if (!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length(); 
		}

		int end;
		if (uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?"); 
		} else {
			end = uri.length();
		}


		String fileName = uri.substring(begin, end);
		if (fileName.indexOf(".") != -1) {
			fileName = fileName.substring(0, fileName.lastIndexOf(".")); 
		}
		if (fileName.lastIndexOf("/") != -1) {
			fileName = fileName.substring(fileName.lastIndexOf("/"), fileName.length()); 
		}
		return fileName;
	}
	
}
