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
	// 회원가입
	@RequestMapping(value = "/Register.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Register";
		mav.setViewName(viewName);
		return mav;
	}
	// 공지사항
	@RequestMapping(value = "/Notice.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Notice(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName = "/smartfarm/Notice";
		mav.setViewName(viewName);
		return mav;
	}
	// 자유 게시판
	@RequestMapping(value = "/Board.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Board(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Board";
		mav.setViewName(viewName);
		return mav;
	}
	// 자료실
	@RequestMapping(value = "/Reference.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Reference(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Reference";
		mav.setViewName(viewName);
		return mav;
	}
	// 지원 사업
	@RequestMapping(value = "/Support.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Support(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Support";
		mav.setViewName(viewName);
		return mav;
	}
	// 상담 문의
	@RequestMapping(value = "/Advice.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Advice(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Advice";
		mav.setViewName(viewName);
		return mav;
	}
	// 농업 용품
	@RequestMapping(value = "/AgriculturalSupplies.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView AgriculturalSupplies(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/AgriculturalSupplies";
		mav.setViewName(viewName);
		return mav;
	}
	// 농부 절차
	@RequestMapping(value = "/HowFarmer.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView HowFarmer(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/HowFarmer";
		mav.setViewName(viewName);
		return mav;
	}
	// 관련 뉴스
	@RequestMapping(value = "/News.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView News(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/News";
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/PotatoSalesList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView PotatoSalesList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/PotatoSalesList";
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/ItemInfo.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView ItemInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/ItemInfo";
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/Farm.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Farm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Farm";
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/Sample.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Sample(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = this.getViewName(request);
		viewName= "/smartfarm/Sample";
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/registProcess.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView registProcess(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();

		String mi_id = request.getParameter("mi_id");
		String mi_password = request.getParameter("mi_password");
		String mi_name = request.getParameter("mi_name");
		String mi_email = request.getParameter("mi_email");
		String[] mi_phone = request.getParameterValues("mi_phone");
		String[] mi_wireline = request.getParameterValues("mi_wireline");
		String phone =  mi_phone[0] + mi_phone[1] + mi_phone[2];
		String wireline = mi_wireline[0] + mi_wireline[1] + mi_wireline[2];
		String mi_address = request.getParameter("mi_address");
		String mi_addressDetail = request.getParameter("mi_addressDetail");
		String mi_addressCode = request.getParameter("mi_addressCode");
		String mi_regidentRegNumber = request.getParameter("mi_regidentRegNumber");

		System.out.println(mi_addressDetail);

		MemberVO memberVO = new MemberVO(mi_id, mi_password, mi_name, mi_email, phone,  wireline, mi_address, mi_addressDetail, mi_addressCode, mi_regidentRegNumber, null);

		memberDAO.insertOneMember(memberVO);
		mav.setViewName("Main");
		return mav;
	}

	@RequestMapping(value="/loginProcess.do", method= RequestMethod.POST)
	public ModelAndView loginProcess(@RequestParam("mi_id") String mi_id, @RequestParam("mi_password") String mi_password, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();

		MemberVO memberVO = memberDAO.checkMember(mi_id, mi_password);

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
	//내 정보 버튼 클릭 시 해당 회원 개인정보 리스트 출력
	@RequestMapping(value = "/ReadInfo.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView readInfo(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		String mi_id = request.getParameter("mi_id");
		MemberVO member = memberDAO.selectOneMember(mi_id);
		mav.addObject("member",member);
		System.out.println(member);
		mav.setViewName("/smartfarm/ReadInfo");
		return mav;
	}

	@RequestMapping(value = "/UpdateMember.do", method = RequestMethod.POST)
	public ModelAndView UpdateMember(@ModelAttribute("info")MemberVO member, HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		memberDAO.updateOneMember(member);
		mav.addObject("member",member);
		System.out.println("memberID--->"+member.getMi_id());
		mav.setViewName("redirect:/smartfarm/ReadInfo.do?mi_id="+member.getMi_id()+"&mode=r");
		return mav;
	}

	@RequestMapping(value = "/deleteMember.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView deleteMember(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();

		String mi_id = request.getParameter("mi_id");
		System.out.println("memberID--->"+mi_id);
		memberDAO.deleteOneMember(mi_id);
//		mav.setViewName("redirect:/smartfarm/Main.do");
		request.getSession().invalidate();
		//String viewName = "redirect:/smartfarm/Main.do";
		mav.setViewName("Main");
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

//	@RequestMapping(value = "/findPwd.do", method = {RequestMethod.POST, RequestMethod.GET})
//	public ModelAndView findPwd(HttpServletRequest request, HttpServletResponse response) throws Exception{
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html;charset=UTF-8");
//		ModelAndView mav = new ModelAndView();
//		String mi_id = request.getParameter("mi_id");
//		String mi_email = request.getParameter("mi_email");
//		MemberVO member = memberDAO.findPwd(mi_id,mi_email);
//		if(member!=null){
//			String mi_password = member.getMi_password();
//			System.out.println(mi_password+"find pwd success");
//			mailService.sendMail(mi_email,"smartfarm find password",mi_id+" password is"+mi_password+".");
//			mav.setViewName("/smartfarm/Login");
//		}else{
//			mav.setViewName("/smartfarm/Forgot");
//		}
//		return mav;
//	}
//
//	@RequestMapping(value = "/findId.do", method = {RequestMethod.POST, RequestMethod.GET})
//	public ModelAndView findId(HttpServletRequest request, HttpServletResponse response) throws  Exception{
//		ModelAndView mav = new ModelAndView();
//		String mi_name = request.getParameter("mi_name");
//		String mi_phone = request.getParameter("mi_phone");
//
//		MemberVO member = memberDAO.findId(mi_name, mi_phone);
//		if(member!=null){
//			String mi_id = member.getMi_id();
//			System.out.println(mi_id+" find id success");
//			mav.setViewName("/smartfarm/Login");
//		}else{
//			mav.setViewName("/smartfarm/Forgot");
//		}
//		return mav;
//	}

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
