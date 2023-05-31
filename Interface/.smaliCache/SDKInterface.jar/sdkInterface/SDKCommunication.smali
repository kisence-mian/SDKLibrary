.class public LsdkInterface/SDKCommunication;
.super Ljava/lang/Object;
.source "SDKCommunication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Send2C_PayLimitResult(LsdkInterface/SDKBase;ZILjava/lang/String;)V
    .registers 7
    .param p0, "sdkBase"    # LsdkInterface/SDKBase;
    .param p1, "isLimit"    # Z
    .param p2, "payAmount"    # I
    .param p3, "Tag"    # Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnPayResult isLimit  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :try_start_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "RealName"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v1, "FunctionName"

    const-string v2, "PayLimitCallBack"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "IsPayLimit"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 21
    const-string v1, "PayAmount"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {p0, v0}, LsdkInterface/SDKBase;->CallBack(Lorg/json/JSONObject;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_37

    .line 26
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_3e

    .line 23
    :catch_37
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    invoke-virtual {p0, p3, v0}, LsdkInterface/SDKBase;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 27
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method public static Send2C_RealNameLogout(LsdkInterface/SDKBase;)V
    .registers 4
    .param p0, "sdkBase"    # LsdkInterface/SDKBase;

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "RealName"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "FunctionName"

    const-string v2, "RealNameLogout"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {p0, v0}, LsdkInterface/SDKBase;->CallBack(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    .line 56
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_2e

    .line 54
    :catch_17
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send2C_RealNameLogout Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LsdkInterface/SDKBase;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 57
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2e
    return-void
.end method

.method public static Send2C_RealNameResult(LsdkInterface/SDKBase;LsdkInterface/define/RealNameStatus;Z)V
    .registers 6
    .param p0, "sdkBase"    # LsdkInterface/SDKBase;
    .param p1, "realNameStatus"    # LsdkInterface/define/RealNameStatus;
    .param p2, "isAdult"    # Z

    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "RealName"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "FunctionName"

    const-string v2, "RealNameCallBack"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v1, "RealNameStatus"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v1, "IsAdult"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {p0, v0}, LsdkInterface/SDKBase;->CallBack(Lorg/json/JSONObject;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_20} :catch_21

    .line 42
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_38

    .line 40
    :catch_21
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendPayCallBack Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LsdkInterface/SDKBase;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 43
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_38
    return-void
.end method
