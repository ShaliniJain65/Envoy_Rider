package com.slider;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.dao.Dao;
import com.model.Sliders;

import javax.servlet.http.*;;

public class SliderManager extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("Reached to SliderManager.java");
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		
        if (isMultipart) {
        	System.out.println("Handled Request");
            // Create a factory for disk-based file items
            FileItemFactory factory = new DiskFileItemFactory();

            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            try {
                // Parse the request
                List items = upload.parseRequest(request);
                Iterator iterator = items.iterator();
                while (iterator.hasNext()) 
                {
                    FileItem item = (FileItem) iterator.next();
                    if (!item.isFormField())
                    {

                        Dao dao = new Dao();
                            
                        /*String root = getServletContext().getRealPath("/")+ "/uploads";*/
                        
                        
                        Date d = new Date();
                		SimpleDateFormat ft = new SimpleDateFormat("dd-mm-yyyy");
                		String name = "Slider_"+ft.format(d);
                		System.out.println(name);
                		
                        
                        String fileName = name+".jpg";
                        System.out.println("File Name :"+fileName);
                        
                        String root ="C:/Users/harsh/eclipse_project/Envoy_rider_final/WebContent/slider-images";
                        File path = new File(root);
                        if (!path.exists())
                        {
                            boolean status = path.mkdirs();
                        }
                        
                        File uploadedFile = new File(path + "/" + fileName);
                        System.out.println(uploadedFile.getAbsolutePath());
                        item.write(uploadedFile);
                        Sliders slider1 = new Sliders();
                        
                        slider1.setName(fileName);
                        
                        
                        String status  = dao.insert_slider(slider1);
                        System.out.println("Slider Insert : "+ status);
                        
                        String msg = "Successfully Uploaded to Server !";
                        request.setAttribute("Message", msg);
                        request.getRequestDispatcher("/wp-content/Slider_manager.jsp").forward(request, response);
                    }
                }
            } catch (FileUploadException e){
            	String msg = "File Upload Error :" +e.getMessage() ;
                request.setAttribute("Message", msg);
                request.getRequestDispatcher("/wp-content/Slider_manager.jsp").forward(request, response);
                e.printStackTrace();
            } catch (Exception e) {
            	String msg = "Upload Error :" +e.getMessage() ;
                request.setAttribute("Message", msg);
                request.getRequestDispatcher("/wp-content/Slider_manager.jsp").forward(request, response);
                e.printStackTrace();
            }
          }
        
		
	}
}
