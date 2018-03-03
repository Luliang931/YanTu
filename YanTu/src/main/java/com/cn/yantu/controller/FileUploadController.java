/*package com.cn.yantu.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cn.yantu.domain.User;
import com.cn.yantu.domain.UserOne;

@Controller
@RequestMapping("/file")
public class FileUploadController {
	private static long fileNumber = 0;
	//logger4J
	private static final Logger logger = Logger.getLogger(FileUploadController.class);
	
	@RequestMapping("/{form}")
	public String form(@PathVariable String form){
		return form;
	}
	
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	public String upload(HttpServletRequest request,
			@RequestParam("description") String description,
			@RequestParam("file") MultipartFile file,
			Model model) throws IllegalStateException, IOException{
		logger.info(description);
		if (!file.isEmpty()) {
			//上传文件路径
			String path = request.getServletContext().getRealPath("/images/");
			logger.info("上传保存文件的路径："+path);
			//上传文件的原名
			String filename = file.getOriginalFilename();
			logger.info("上传的文件名:"+filename);
			
			logger.info("getName():"+file.getName());
			logger.info("getContentType():"+file.getContentType());
			logger.info("getSize():"+file.getSize());
			
			//创建文件对象
			File filepath = new File(path, filename);
			logger.info(filepath);
			//判断路径是否存在，否则创建一个
			if (!filepath.getParentFile().exists()) {
				filepath.getParentFile().mkdirs();
			}
			//将上传的文件保存到一个目标文件中
			file.transferTo(new File(path+File.separator+filename));
			HashMap<String, String> map = new HashMap<>();
			map.put("description", description);
			map.put("filename", filename);
			map.put("path", path);
			map.put("size", (file.getSize()/1024.0)+"KB");
			model.addAllAttributes(map);
			return "success2";
		} else {
			return "error";
		}
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String uploadOne(HttpServletRequest request,
			@ModelAttribute User user,
			Model model) throws IllegalStateException, IOException{
		if (!user.getImage().isEmpty()) {
			//上传文件路径
			String path = request.getServletContext().getRealPath("/images/");
			logger.info("上传保存文件的路径："+path);
			//上传文件的原名
			String filename = user.getImage().getOriginalFilename();
			
			
			String[] strArr = filename.split("\\.");
			String newfielname = "";
			int length = strArr.length;
			for (int i = 0; i < length-1; i++) {
				newfielname += strArr[i];
			}
			long currentTimeMillis = System.currentTimeMillis();
			Date date = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
			String format = dateFormat.format(date);
			newfielname = newfielname+"-"+format+"-"+currentTimeMillis+"-"+(++fileNumber)+"."+strArr[length-1];
			
			
			logger.info("上传的文件名:"+filename);
			
			//创建文件对象
			File filepath = new File(path, filename);
			logger.info(filepath);
			//判断路径是否存在，否则创建一个
			if (!filepath.getParentFile().exists()) {
				filepath.getParentFile().mkdirs();
			}
			//将上传的文件保存到一个目标文件中
			user.getImage().transferTo(new File(path+File.separator+filename));
			model.addAttribute("user",user);
			model.addAttribute("filename", filename);
			return "success3";
		} else {
			return "error";
		}
	}
	
	@RequestMapping("/download")
	public ResponseEntity<byte[]> download(HttpServletRequest request,
			@RequestParam("filename") String filename,
			Model model) throws IOException{
		//下载文件路径
		String path = request.getServletContext().getRealPath("/images/");
		File file = new File(path+ File.separator +filename);
		HttpHeaders headers = new HttpHeaders();
		//下载文件名，解决文件名中文乱码问题
		String downloadfilename = new String(filename.getBytes("UTF-8"),"iso-8859-1");
		//设置浏览器以下载方式打开文件
		headers.setContentDispositionFormData("attachment", downloadfilename);
		//以二进制流下载
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
*/