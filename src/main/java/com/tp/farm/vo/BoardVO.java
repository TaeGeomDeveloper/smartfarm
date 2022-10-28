package com.tp.farm.vo;

import java.sql.Timestamp;

public class BoardVO {
    private int cb_seq;
    private String mi_id;
    private String cb_title;
    private String cb_content;
    private int cb_viewCount;
    private Timestamp cb_regDate;
    private String cb_attachedFile;
    private String cb_downloadCount;

    public BoardVO() {}
    public BoardVO(int cb_seq, String mi_id, String cb_title, String cb_content, int cb_viewCount, Timestamp cb_regDate, String cb_attachedFile, String cb_downloadCount) {
        this.cb_seq = cb_seq;
        this.mi_id = mi_id;
        this.cb_title = cb_title;
        this.cb_content = cb_content;
        this.cb_viewCount = cb_viewCount;
        this.cb_regDate = cb_regDate;
        this.cb_attachedFile = cb_attachedFile;
        this.cb_downloadCount = cb_downloadCount;
    }

    public String getMi_id() {
        return mi_id;
    }

    public void setMi_id(String mi_id) {
        this.mi_id = mi_id;
    }

    public int getCb_viewCount() {
        return cb_viewCount;
    }

    public void setCb_viewCount(int cb_viewCount) {
        this.cb_viewCount = cb_viewCount;
    }

    public Timestamp getCb_regDate() {
        return cb_regDate;
    }

    public void setCb_regDate(Timestamp cb_regDate) {
        this.cb_regDate = cb_regDate;
    }

    public int getCb_seq() {
        return cb_seq;
    }

    public void setCb_seq(int cb_seq) {
        this.cb_seq = cb_seq;
    }

    public String getCb_title() {
        return cb_title;
    }

    public void setCb_title(String cb_title) {
        this.cb_title = cb_title;
    }

    public String getCb_content() {
        return cb_content;
    }

    public void setCb_content(String cb_content) {
        this.cb_content = cb_content;
    }

    public String getCb_attachedFile() {
        return cb_attachedFile;
    }

    public void setCb_attachedFile(String cb_attachedFile) {
        this.cb_attachedFile = cb_attachedFile;
    }

    public String getCb_downloadCount() {
        return cb_downloadCount;
    }

    public void setCb_downloadCount(String cb_downloadCount) {
        this.cb_downloadCount = cb_downloadCount;
    }
}
