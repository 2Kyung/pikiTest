

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class pikiServlet
 */
@WebServlet("/pikiServlet")
public class pikiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	databaseTask DBtask =new databaseTask();
	GroupShare Gshare = new GroupShare();

    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pikiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setAttribute("", arg1);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		DBtask.initDB();
		DBtask.createArray();
		Gshare.setNumberOfGroup(DBtask.allCount);
		/*for(int n=0; n<DBtask.teamArray.length; n++) {
			for(int m=0; m<DBtask.teamArray[n].length; m++) {
				out.println(DBtask.teamArray[n][m]+" ");
			}
			out.println("<br>");
		}*/
		
		out.println("<head><style>");
		out.println("table {border-collapse:collapse; }");
		out.println("table, th, td {border:1px solid black; }");
		out.println("th, td {padding:10px; }");
		out.println("canvas {border:1px solid #E6E6E6; }");
		out.println("</style>");
		out.println("</head>");
		
		System.out.println(Gshare.divisor+ "명 그룹 "+ Gshare.groupColumn +"행"+ Gshare.groupRow +"열 그룹 1개<br>");		
		
		//Gshare.insertGroup(DBtask.l_Teams);
		//1213Gshare.insertGroup(DBtask.linkG, DBtask.l_Teams);
		Gshare.insertGroup(DBtask.l_Teams, DBtask.l_Capability);
			
		out.println("<table>");
		out.println("<tr><th>group</th><th></th><th>capability</th></tr>");
		for(int i=0; i<Gshare.Groups.length; i++) {
			out.println("<tr>");
	        for(int j=0; j<Gshare.Groups[i].length; j++) {
	        	 
	        	if(j==0)
	        		out.println("<th>"+Gshare.Groups[i][j]+"</th>");
	        	else if(j==1)
	        		out.println("<td>"+Gshare.Groups[i][j]);
	        	else if(j==Gshare.Groups[i].length-1) {
	        		 
	        		if(!isEmpty(Gshare.Groups[i][j])) {
	        			out.println("<td>"+String.format("%.2f", Gshare.capabilityAvg[i])+"%</td>");
	        			break;
	        		}
	        		else {
	        			out.println(", "+Gshare.Groups[i][j]+"</td>");
	        			out.println("<td>"+String.format("%.2f", Gshare.capabilityAvg[i])+"%</td>");
	        		}
	        	}
	        	else
	        		out.println(", "+Gshare.Groups[i][j]);
	         }
	         out.println("</tr>");
	    }
		out.println("</table>");
		
		//request.getRequestDispatcher("drawGraph.jsp").forward(request, response);
	}
	
	public boolean isEmpty(String object) {
		if(object == null || object.length() == 0) {
			return false;
		}
		
		return true;
	}


}
