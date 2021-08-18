package org.zerock.domain;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	
	private static final Logger logger = LoggerFactory.getLogger(FileUtil.class);
	
	String filePath = ""; 
	
	public FileUtil(String uploadPath) {
		this.filePath = uploadPath;
	}

	
	//이미지 첨부 수정용 
    public List<FileVO> saveAllFiles(List<MultipartFile> upfiles,int num) throws Exception {
    	
        List<FileVO> filelist = new ArrayList<FileVO>();

        for (MultipartFile uploadfile : upfiles ) {
            if (uploadfile.getSize() == 0) {
                continue;
            }
            
            String newName = getNewName();
            
            saveFile(uploadfile, filePath + "/" + newName.substring(0,4) + "/", newName);
            
            FileVO filedo = new FileVO();
            filedo.setFilename(uploadfile.getOriginalFilename());
            filedo.setRealname(newName);
            filedo.setFilesize(uploadfile.getSize());
            filedo.setParentPK(num);
            filelist.add(filedo);
            
            logger.info(filedo.getParentPK().toString());
        }
        return filelist;
    }    
    
    
    //이미지 첨부용
    public List<FileVO> saveAllFiles(List<MultipartFile> upfiles) throws Exception {
    	
        List<FileVO> filelist = new ArrayList<FileVO>();

        for (MultipartFile uploadfile : upfiles ) {
            if (uploadfile.getSize() == 0) {
                continue;
            }
            
            String newName = getNewName();
            
            saveFile(uploadfile, filePath + "/" + newName.substring(0,4) + "/", newName);
            
            FileVO filedo = new FileVO();
            filedo.setFilename(uploadfile.getOriginalFilename());
            filedo.setRealname(newName);
            filedo.setFilesize(uploadfile.getSize());
            filelist.add(filedo);
            
            //logger.info(filedo.getParentPK().toString());
        }
        return filelist;
    }    
    
    public void makeBasePath(String path) {
        File dir = new File(path); 
        if (!dir.exists()) {
            dir.mkdirs();
        }
    }


    public String saveFile(MultipartFile file, String basePath, String fileName){
        if (file == null || file.getName().equals("") || file.getSize() < 1) {
            return null;
        }
     
        makeBasePath(basePath);
        String serverFullPath = basePath + fileName;
  
        File file1 = new File(serverFullPath);
        try {
            file.transferTo(file1);
        } catch (IllegalStateException ex) {
            System.out.println("IllegalStateException: " + ex.toString());
        } catch (IOException ex) {
            System.out.println("IOException: " + ex.toString());
        }
        
        return serverFullPath;
    }
    

    public String getNewName() {
        SimpleDateFormat ft = new SimpleDateFormat("yyyyMMddhhmmssSSS");
        return ft.format(new Date()) + (int) (Math.random() * 10);
    }
    
    public String getFileExtension(String filename) {
          Integer mid = filename.lastIndexOf(".");
          return filename.substring(mid, filename.length());
    }

    public String getRealPath(String path, String filename) {
        return path + filename.substring(0,4) + "/";
    }
    
    public void deleteFiles(List<FileVO> files) {
    	
    	//String filePath = "";
    	
    	for(FileVO vo : files) {
    		File deleteFile = new File(filePath + vo.getRealname());
    		if(deleteFile!=null) {
        		
        		deleteFile.delete();
        		
        		System.out.println("파일을 삭제하였습니다.");
        	} 
    	}
    }
    
    
    //인테리어 이미지 첨부용
    public List<InteriorFileVO> saveAllInteriorFiles(List<MultipartFile> upfiles) throws Exception {
    	
        List<InteriorFileVO> filelist = new ArrayList<InteriorFileVO>();

        for (MultipartFile uploadfile : upfiles ) {
            if (uploadfile.getSize() == 0) {
                continue;
            }
            
            String newName = getNewName();
            
            saveFile(uploadfile, filePath + "/" + newName.substring(0,4) + "/", newName);
            
            InteriorFileVO filedo = new InteriorFileVO();
            filedo.setFilename(uploadfile.getOriginalFilename());
            filedo.setRealname(newName);
            filedo.setFilesize(uploadfile.getSize());
            filelist.add(filedo);
            
            //logger.info(filedo.getParentPK().toString());
        }
        return filelist;
    }    
    
    //인테리어 파일 삭제.
	 public void deleteInteriorFiles(List<InteriorFileVO> files) {
	    	
	    	//String filePath = "";
	    	
	    	for(InteriorFileVO vo : files) {
	    		File deleteFile = new File(filePath + vo.getRealname());
	    		if(deleteFile!=null) {
	        		
	        		deleteFile.delete();
	        		
	        		System.out.println("파일을 삭제하였습니다.");
	        	} 
	    	}
	    }
}
    

