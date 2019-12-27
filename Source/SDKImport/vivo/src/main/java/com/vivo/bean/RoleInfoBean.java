package com.vivo.bean;

public class RoleInfoBean {
    private String balance;  //用户余额
    private String vip;  //用户vip等级
    private String level; //用户角色等级
    private String party;  //工会
    private String roleId; //角色ID
    private String roleName; //角色名
    private String serverName; //区服信息

    public RoleInfoBean(String balance, String vip, String level, String party, String roleId, String roleName, String serverName) {
        this.balance = balance;
        this.vip = vip;
        this.level = level;
        this.party = party;
        this.roleId = roleId;
        this.roleName = roleName;
        this.serverName = serverName;
    }

    public String getBalance() {
        return balance;
    }

    public String getVip() {
        return vip;
    }

    public String getLevel() {
        return level;
    }

    public String getParty() {
        return party;
    }

    public String getRoleId() {
        return roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public String getServerName() {
        return serverName;
    }

    @Override
    public String toString() {
        return "RoleInfoBean{" +
                "balance='" + balance + '\'' +
                ", vip='" + vip + '\'' +
                ", level='" + level + '\'' +
                ", party='" + party + '\'' +
                ", roleId='" + roleId + '\'' +
                ", roleName='" + roleName + '\'' +
                ", serverName='" + serverName + '\'' +
                '}';
    }
}
