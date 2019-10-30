
package com.m360.payment;

public interface Constants {
    /**
     * MONEY AMOUNT以分为单位。100分，即1元。MONEY AMOUNT大于等于100时，即定额支付。
     */
    public static final String DEMO_FIXED_PAY_MONEY_AMOUNT = "100";

    /**
     * MONEY AMOUNT为0分时，即不定额支付。
     */
    public static final String DEMO_NOT_FIXED_PAY_MONEY_AMOUNT = "0";

    /**
     * 人民币与游戏充值币的比例，例如2，代表1元人民币可以兑换2个游戏币，整数。
     */
    public static final String DEMO_PAY_EXCHANGE_RATE = "1";

    /**
     * 购买商品的商品id，应用指定，最大16字符。
     */
    public static final String DEMO_PAY_PRODUCT_ID = "100";

    /**
     * 应用内的用户id。 最大32字符。
     */
    public static final String DEMO_PAY_APP_USER_ID = "1888";

    /**
     * 应用服务器为360服务器提供的支付结果通知接口，由360服务器把支付结果通知到这个URI。URI最大255字符。具体协议请查看文档中，
     * 支付结果通知接口。
     */
    public static final String DEMO_APP_SERVER_NOTIFY_URI = "http://mgame.360.cn/gamecp/status";

    /**
     * 应用服务器为应用客户端提供的接口Url，用于通过AuthorizationCode获取TokenInfo
     * (DEMO使用的应用服务器url仅限DEMO示范使用
     * ，禁止正式上线游戏把DEMO应用服务器当做正式应用服务器使用，请使用方自己搭建自己的应用服务器。)
     */
    public static final String DEMO_APP_SERVER_URL_GET_TOKEN_BY_CODE = "http://sdbxapp.msdk.mobilem.360.cn/mobileSDK/api.php?type=get_token_by_code&debug=1&code=";
    /**
     * 应用服务器为应用客户端提供的接口Url，用于通过AccessToken获取QihooUserInfo
     * (DEMO使用的应用服务器url仅限DEMO示范使用
     * ，禁止正式上线游戏把DEMO应用服务器当做正式应用服务器使用，请使用方自己搭建自己的应用服务器。)
     */
    public static final  String DEMO_APP_SERVER_URL_GET_USER_BY_TOKEN = "http://sdbxapp.msdk.mobilem.360.cn/mobileSDK/api.php?type=get_userinfo_by_token&debug=1&token=";
    public static final String IS_LANDSCAPE = "is_landscape";
    
    /**
     * 示例标签，选中该标签的选择按钮，则进入横竖屏游戏页面时调起登录
     * 主要是在Matrix.setActivity()方法成功回调后进行登录调用
     */
    public static final String RIGHT_TO_LOGIN_TAG = "sdk_right_login";
}
