package com.tp.farm.service;


import com.tp.farm.dao.BoardDAO;
import com.tp.farm.vo.BoardVO;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

@Service
public class BoardService {

    @Autowired
    private BoardDAO boardDAO;

    public boolean createBoard(ServletRequestContext src) throws Exception {
        boolean flag = false;
        String path = "c:\\download";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setRepository(new File(path));
        factory.setSizeThreshold(1024*1024);
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> list = upload.parseRequest(src);
        BoardVO board = new BoardVO();
        for(FileItem item : list) {
            if(item.isFormField()) {
                String filedName = item.getFieldName();
                if(filedName.equals("memberId")) {
                    board.setMi_id(item.getString("UTF-8"));
                } else if(filedName.equals("title")) {
                    board.setCb_title(item.getString("UTF-8"));
                } else if(filedName.equals("content")) {
                    board.setCb_content(item.getString("UTF-8"));
                }
            } else {
                String name = item.getFieldName();
                if(name.equals("attachName")) {
                    String temp = item.getName();
                    System.out.println(temp);
                    if(temp==null||temp.trim().equals("")) {
                        System.out.println("첨부파일 없음");
                    } else {
                        int idx = temp.lastIndexOf("\\");
                        String fileName = temp.substring(idx+1);
                        System.out.println("파일이름 확인");
                        board.setCb_attachedFile(fileName);
                        //업로드 실행
                        File filePath = new File(path + "\\" + fileName);
                        item.write(filePath);
                    }
                }
            }
        }
        flag = boardDAO.insertBoard(board);
        if(flag) {
            System.out.println("service insert성공");
        } else {
            System.out.println("service insert실패");
        }
        return flag;
    }

    public List<BoardVO> selectAllBoard() {
        List<BoardVO> list = boardDAO.selectAll();
        return list;
    }

    public boolean download(HttpServletResponse response, int seq, String attachName, String token) throws IOException {
        boolean flag = false;
        /////////////////////////////한글처리///////////////////////////////
        File download = new File("c:\\download\\"+attachName);
        attachName = new String(attachName.getBytes("UTF-8"), "ISO-8859-1");
        /////////////////////////////한글처리///////////////////////////////
        response.setContentType("text/html; charset=UTF-8");
        response.setHeader("Cache-Control", "no-cache");
        response.addHeader("Content-Disposition", "attatchment;filename="+attachName);
        System.out.println(attachName);

        FileInputStream fis = new FileInputStream(download);
        OutputStream os = response.getOutputStream();
        byte[] buffer = new byte[256];
        int len = 0;
        while((len=fis.read(buffer))!=-1) {
            os.write(buffer, 0, len);
        }
        flag = boardDAO.updateCount(seq, token);
        os.close();
        fis.close();
        return flag;
    }

    public BoardVO readBoard(String seq) {
        BoardVO board = new BoardVO();
        board = boardDAO.selectOneBoard(seq);
        return board;
    }

    public boolean updateBoard(ServletRequestContext src) throws Exception {
        boolean flag = false;
        String path = "c:\\download";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setRepository(new File(path));
        factory.setSizeThreshold(1024*1024);
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> list = upload.parseRequest(src);
        BoardVO board = new BoardVO();
        for(FileItem item : list) {
            if(item.isFormField()) {
                String filedName = item.getFieldName();
                if(filedName.equals("seq")) {
                    board.setCb_seq(Integer.parseInt(item.getString("UTF-8")));
                } else if(filedName.equals("title")) {
                    board.setCb_title(item.getString("UTF-8"));
                } else if(filedName.equals("content")) {
                    board.setCb_content(item.getString("UTF-8"));
                }
            } else {
                String name = item.getFieldName();
                if(name.equals("attachName")) {
                    String temp = item.getName();
                    System.out.println(temp);
                    if(temp==null||temp.trim().equals("")) {
                        System.out.println("첨부파일 없음");
                    } else {
                        int idx = temp.lastIndexOf("\\");
                        String fileName = temp.substring(idx+1);
                        System.out.println("파일이름 확인");
                        board.setCb_attachedFile(fileName);
                        //업로드 실행
                        File filePath = new File(path + "\\" + fileName);
                        item.write(filePath);
                    }
                }
            }
        }
        flag = boardDAO.update(board);
        if(flag) {
            System.out.println("service update성공");
        } else {
            System.out.println("service update실패");
        }
        return flag;
    }

    public boolean deleteBoard(String seq) {
        boolean flag = false;
        flag = boardDAO.deleteOne(seq);
        return flag;
    }
}
