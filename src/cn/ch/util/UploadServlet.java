package cn.ch.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;

/**
 * Servlet implementation class UploadServlet
 */
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");   
		response.setCharacterEncoding("UTF-8");
		String realDir = request.getSession().getServletContext().getRealPath("/images");
		String contextpath = request.getContextPath();
		String basePath = request.getScheme() + "://"
		+ request.getServerName() + ":" + request.getServerPort()
		+ contextpath + "/";
 
		try {
		String filePath = "uploadfiles";
		String realPath = realDir+"\\"+filePath;
		System.out.println("realpath:"+realPath);
		System.out.println("----------------");
		File dir = new File(realPath);
		if(!dir.isDirectory())
		    dir.mkdir();
 
		if(ServletFileUpload.isMultipartContent(request)){
 
		    DiskFileItemFactory dff = new DiskFileItemFactory();
		    dff.setRepository(dir);
		    dff.setSizeThreshold(1024000);
		    ServletFileUpload sfu = new ServletFileUpload(dff);
		    FileItemIterator fii = null;
		    fii = sfu.getItemIterator(request);
		    String title = ""; 
		    String url = "";   
		    String fileName = "";
			String state="SUCCESS";
			String realFileName="";
		    while(fii.hasNext()){
		        FileItemStream fis = fii.next();
 
		        try{
		            if(!fis.isFormField() && fis.getName().length()>0){
		                fileName = fis.getName();
						Pattern reg=Pattern.compile("[.]jpg|png|jpeg|gif$");
						Matcher matcher=reg.matcher(fileName);
						if(!matcher.find()) {
							state = "文件类型不允许";
							break;
						}
						realFileName = new Date().getTime()+fileName.substring(fileName.lastIndexOf("."),fileName.length());
		                url = realPath+"\\"+realFileName;
 
		                BufferedInputStream in = new BufferedInputStream(fis.openStream());
		                FileOutputStream a = new FileOutputStream(new File(url));
		                BufferedOutputStream output = new BufferedOutputStream(a);
		                Streams.copy(in, output, true);
		            }else{
		                String fname = fis.getFieldName();
 
		                if(fname.indexOf("pictitle")!=-1){
		                    BufferedInputStream in = new BufferedInputStream(fis.openStream());
		                    byte c [] = new byte[10];
		                    int n = 0;
		                    while((n=in.read(c))!=-1){
		                        title = new String(c,0,n);
		                        break;
		                    }
		                }
		            }
 
		        }catch(Exception e){
		            e.printStackTrace();
		        }
		    }
		    response.setStatus(200);
		    String retxt ="{src:'"+basePath+filePath+"/"+realFileName+"',status:success}";
		    request.getServletContext().setAttribute("imagepath", filePath+"/"+realFileName);
		    System.out.println(retxt);
		    response.getWriter().print(retxt);
		}
		}catch(Exception ee) {
			ee.printStackTrace();
		}

	}

}
