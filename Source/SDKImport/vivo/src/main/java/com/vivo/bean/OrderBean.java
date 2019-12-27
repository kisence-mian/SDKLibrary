package com.vivo.bean;

public class OrderBean {
    private String cpOrderNumber; //cp订单号
    private String extInfo;  //扩展参数
    private String notifyUrl; //回调地址
    private String orderAmount;  //商品金额
    private String productName; //商品名称
    private String productDesc;  //商品描述

    private RoleInfoBean roleInfoBean; //角色信息


    public OrderBean(String cpOrderNumber, String extInfo, String notifyUrl, String orderAmount, String productName, String productDesc,RoleInfoBean roleInfoBean) {
        this.cpOrderNumber = cpOrderNumber;
        this.extInfo = extInfo;
        this.notifyUrl = notifyUrl;
        this.orderAmount = orderAmount;
        this.productName = productName;
        this.productDesc = productDesc;
        this.roleInfoBean = roleInfoBean;
    }

    public String getCpOrderNumber() {
        return cpOrderNumber;
    }

    public void setCpOrderNumber(String cpOrderNumber) {
        this.cpOrderNumber = cpOrderNumber;
    }

    public String getExtInfo() {
        return extInfo;
    }

    public void setExtInfo(String extInfo) {
        this.extInfo = extInfo;
    }

    public String getNotifyUrl() {
        return notifyUrl;
    }

    public void setNotifyUrl(String notifyUrl) {
        this.notifyUrl = notifyUrl;
    }

    public String getOrderAmount() {
        return orderAmount;
    }

    public void setOrderAmount(String orderAmount) {
        this.orderAmount = orderAmount;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public RoleInfoBean getRoleInfoBean() {
        return roleInfoBean;
    }

    public void setRoleInfoBean(RoleInfoBean roleInfoBean) {
        this.roleInfoBean = roleInfoBean;
    }

    @Override
    public String toString() {
        return "OrderBean{" +
                "cpOrderNumber='" + cpOrderNumber + '\'' +
                ", extInfo='" + extInfo + '\'' +
                ", notifyUrl='" + notifyUrl + '\'' +
                ", orderAmount='" + orderAmount + '\'' +
                ", productName='" + productName + '\'' +
                ", productDesc='" + productDesc + '\'' +
                ", roleInfoBean=" + roleInfoBean +
                '}';
    }
}
