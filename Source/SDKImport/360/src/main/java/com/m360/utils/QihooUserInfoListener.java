
package com.m360.utils;

/**
 * 此接口由应用客户端与应用服务器协商决定。
 */
public interface QihooUserInfoListener {

    public void onGotUserInfo(QihooUserInfo userInfo);

}
