package com.vivo;

import com.vivo.bean.OrderBean;
import com.vivo.unionsdk.open.VivoPayInfo;

import java.util.HashMap;

import static com.vivo.Constant.APP_ID_PARAM;
import static com.vivo.Constant.BALANCE;
import static com.vivo.Constant.CP_ORDER_NUMBER;
import static com.vivo.Constant.EXT_INFO;
import static com.vivo.Constant.LEVEL;
import static com.vivo.Constant.NOTIFY_URL;
import static com.vivo.Constant.ORDER_AMOUNT;
import static com.vivo.Constant.PARTY;
import static com.vivo.Constant.PRODUCT_DESC;
import static com.vivo.Constant.PRODUCT_NAME;
import static com.vivo.Constant.ROLE_ID;
import static com.vivo.Constant.ROLE_NAME;
import static com.vivo.Constant.SERVER_NAME;
import static com.vivo.Constant.VIP;

public class VivoSign {
    //TODO 有服务器的游戏，请让服务器去计算验签，如果没有服务器，可以通过这段代码去生成验签
    /**
     * 计算验签
     *
     * @param orderBean 订单信息
     * @return
     */
    public static String getSignature(OrderBean orderBean,String appID,String appKey) {
        HashMap<String, String> params = new HashMap<>();
        params.put(APP_ID_PARAM, appID);
        params.put(CP_ORDER_NUMBER, orderBean.getCpOrderNumber());
        params.put(EXT_INFO, orderBean.getExtInfo());
        params.put(NOTIFY_URL, orderBean.getNotifyUrl());
        params.put(ORDER_AMOUNT, orderBean.getOrderAmount());
        params.put(PRODUCT_DESC, orderBean.getProductDesc());
        params.put(PRODUCT_NAME, orderBean.getProductName());

        params.put(BALANCE, orderBean.getRoleInfoBean().getBalance());
        params.put(VIP, orderBean.getRoleInfoBean().getVip());
        params.put(LEVEL, orderBean.getRoleInfoBean().getLevel());
        params.put(PARTY, orderBean.getRoleInfoBean().getParty());
        params.put(ROLE_ID, orderBean.getRoleInfoBean().getRoleId());
        params.put(ROLE_NAME, orderBean.getRoleInfoBean().getRoleName());
        params.put(SERVER_NAME, orderBean.getRoleInfoBean().getServerName());
        return VivoSignUtils.getVivoSign(params, appKey);
    }

    /**
     * 登录vivo帐号后，创建VivoPayInfo
     *
     * @param uid       用户id
     * @param orderBean 订单信息
     * @return
     */
    public static VivoPayInfo createPayInfo(String uid, OrderBean orderBean,String appID,String appKey) {
        //步骤1：计算支付参数签名
        String signature = getSignature(orderBean,appID,appKey);
        //步骤2：创建VivoPayInfo
        VivoPayInfo vivoPayInfo = new VivoPayInfo.Builder()
                //基本支付信息
                .setAppId(appID)
                .setCpOrderNo(orderBean.getCpOrderNumber())
                .setExtInfo(orderBean.getExtInfo())
                .setNotifyUrl(orderBean.getNotifyUrl())
                .setOrderAmount(orderBean.getOrderAmount())
                .setProductDesc(orderBean.getProductDesc())
                .setProductName(orderBean.getProductName())
                //角色信息
                .setBalance(orderBean.getRoleInfoBean().getBalance())
                .setVipLevel(orderBean.getRoleInfoBean().getVip())
                .setRoleLevel(orderBean.getRoleInfoBean().getLevel())
                .setParty(orderBean.getRoleInfoBean().getParty())
                .setRoleId(orderBean.getRoleInfoBean().getRoleId())
                .setRoleName(orderBean.getRoleInfoBean().getRoleName())
                .setServerName(orderBean.getRoleInfoBean().getServerName())
                //计算出来的参数验签
                .setVivoSignature(signature)
                //接入vivo帐号传uid，未接入传""
                .setExtUid(uid)
                .build();

        return vivoPayInfo;
    }
}
