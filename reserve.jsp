import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import domain.Reserve;
import service.BookManager;
import service.PersonManager;
import service.ReserveManager;
import web.controller.util.Util;

@Controller
public class ReserveController {
	
	@Autowired
	ReserveManager reserveManager;
	@Autowired
	BookManager bookManager;
	@Autowired
	PersonManager personManager;
	
	@RequestMapping("/myReserves.view")
	public ModelAndView myReserves(){
		ModelAndView mav = new ModelAndView("myReserves");
		
		mav.addObject("reserveList", reserveManager.findAllReserves());
		mav.addObject("personList", personManager.findAllPeople());
		
		return mav;

	}
		
	@RequestMapping("/reserveSearch.view")
	public ModelAndView reserveSearch(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("myReserves");
		
		String search = request.getParameter("search");
		String searchType = request.getParameter("searchType");
		
		if(search.isEmpty()){
			mav.addObject("reserveList",
reserveManager.findAllReserves());
			mav.addObject("personList", personManager.findAllPeople());
		}else{
				if("Title".equals(searchType)){
					mav.addObject("reserveList",
reserveManager.findReserveByTile(search));
					mav.addObject("personList",
personManager.findAllPeople());
				}else if("State".equals(searchType)){
					mav.addObject("reserveList",
reserveManager.findReserveByState(search));
					mav.addObject("personList",
personManager.findAllPeople());
				}else if("Isbn".equals(searchType)){
					mav.addObject("reserveList",
reserveManager.findReserveByIsbn(search));
					mav.addObject("personList",
personManager.findAllPeople());
			}
		}
		
		return mav;
}

	@RequestMapping("/reserveAdvancedSearch.view")
	public ModelAndView lreserveAdvancedSearch(HttpServletRequest request){
			ModelAndView mav = new ModelAndView("myReserves");
			
			String title = request.getParameter("title");
			String state = request.getParameter("state");
			String isbn = request.getParameter("isbn");
			
            Reserve reserve = new Reserve();
			
			reserve.setBookTitle(title);
			reserve.setState(state);
			reserve.setBookIsbn(isbn);
			
			if(title.isEmpty() && state.isEmpty() && isbn.isEmpty()){
				mav.addObject("reserveList",
reserveManager.findAllReserves());
				mav.addObject("personList", personManager.findAllPeople());
			}else{
				mav.addObject("reserveList",
reserveManager.findReserveBy(reserve));

				mav.addObject("personList", personManager.findAllPeople());
			}
			return mav;
}

@RequestMapping("/deleteReserve.view")
public ModelAndView reserves(HttpServletRequest request){
	ModelAndView mav = new ModelAndView("myReserves");
	
	int id = Util.convertToInt(request.getParameter("id"));
	
	reserveManager.deleteReserve(id);
	
	mav.addObject("reserveList", reserveManager.findAllReserves());
	mav.addObject("personList", personManager.findAllPeople());
	
	return mav;
}
@RequestMapping("/editReserve.view")
public ModelAndView editReserve(HttpServletRequest request){
	ModelAndView mav = new ModelAndView("myReserve");
	
	int id = Util.convertToInt(request.getParameter("id"));
	String url = request.getContextPath()+"/updateReserve.view";
	
	Reserve reserve = new Reserve();
	
	if(id != 0){
			reserve = reserveManager.findReserveById(id);
	}
	
		mav.addObject("reserve", reserve);
		mav.addObject("url", url);
		
		return mav;
	}
	
	@RequestMapping("/updateReserve.view")
	public ModelAndView updateReserve(@ModelAttribute("reserve") Reserve
reserve){
			ModelAndView mav = new ModelAndView("myReserves");
			
			reserveManager.updateReserve(reserve);
			
			if("Available".equals(reserve.getState())){
				bookManager.updateBookByIdAdding(reserve.getBookId());
			}
						
			mav.addObject("reserveList", reserveManager.findAllReserves());
			mav.addObject("personList", personManager.findAllPeople());
			
			return mav;
	}
	
@RequestMapping("/reserve.view")

		public ModelAndView reserve(HttpServletRequest request){
				ModelAndView mav = new ModelAndView("myReserves");
				
				int id = Util.convertToInt(request.getParameter("borrow"));
				int personId =
Util.convertToInt(request.getParameter("personId"));
				String isbn = request.getParameter("isbn");
				String title = request.getParameter("title");
				
				Reserve reserve = new Reserve();
				
				reserve.setBookId(id);
				reserve.setPersonId(personId);
				reserve.setBookIsbn(isbn);
				reserve.setBookTitle(title);
				
				reserveManager.addReserve(reserve);
				bookManager.updateBookByIdRemoving(id);
				
				mav.addObject("reserveList", reserveManager.findAllReserves());
				mav.addObject("personList", personManager.findAllPeople());
				
				return mav;
		}
		
}
