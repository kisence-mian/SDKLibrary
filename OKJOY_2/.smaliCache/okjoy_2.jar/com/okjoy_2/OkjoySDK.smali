.class public Lcom/okjoy_2/OkjoySDK;
.super LsdkInterface/SDKBase;
.source "OkjoySDK.java"

# interfaces
.implements LsdkInterface/ILogin;
.implements LsdkInterface/IPay;
.implements LsdkInterface/IAD;
.implements LsdkInterface/IOther;
.implements LsdkInterface/IRealName;


# static fields
.field private static adKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ADKey:Ljava/lang/String;

.field final ADKeySplit:Ljava/lang/String;

.field m_PayInfo:LsdkInterface/module/PayInfo;

.field m_userID:Ljava/lang/String;

.field m_userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/okjoy_2/OkjoySDK;->adKeys:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    .line 65
    const-string v0, "ADKey"

    iput-object v0, p0, Lcom/okjoy_2/OkjoySDK;->ADKey:Ljava/lang/String;

    .line 66
    const-string v0, "->"

    iput-object v0, p0, Lcom/okjoy_2/OkjoySDK;->ADKeySplit:Ljava/lang/String;

    .line 67
    new-instance v0, LsdkInterface/module/PayInfo;

    invoke-direct {v0}, LsdkInterface/module/PayInfo;-><init>()V

    iput-object v0, p0, Lcom/okjoy_2/OkjoySDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    return-void
.end method

.method private GetADKeyByTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 254
    sget-object v0, Lcom/okjoy_2/OkjoySDK;->adKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 255
    sget-object v0, Lcom/okjoy_2/OkjoySDK;->adKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 257
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not get ADKeyByTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 258
    const-string v0, ""

    return-object v0
.end method

.method private InitADKeys()V
    .registers 10

    .line 202
    const-string v0, "="

    :try_start_2
    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "ADKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "keyString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitOkJoyAD keyString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 207
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "keySplit":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    array-length v4, v2

    if-ge v3, v4, :cond_c7

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InitADKeys keySplit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 210
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c3

    .line 211
    aget-object v4, v2, v3

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "key_value":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InitADKeys ready : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v7, v4, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v8, v4, v7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 213
    sget-object v5, Lcom/okjoy_2/OkjoySDK;->adKeys:Ljava/util/Map;

    aget-object v8, v4, v6

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c3

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InitADKeys: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, v4, v6

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, v4, v7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 215
    sget-object v5, Lcom/okjoy_2/OkjoySDK;->adKeys:Ljava/util/Map;

    aget-object v6, v4, v6

    aget-object v7, v4, v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v4    # "key_value":[Ljava/lang/String;
    :cond_c3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3f

    .line 220
    .end local v3    # "i":I
    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitADKeys success"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/okjoy_2/OkjoySDK;->adKeys:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e3} :catch_e4

    .line 223
    .end local v1    # "keyString":Ljava/lang/String;
    .end local v2    # "keySplit":[Ljava/lang/String;
    goto :goto_e8

    .line 221
    :catch_e4
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e8
    return-void
.end method

.method private LoginResult(ZLcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V
    .registers 8
    .param p1, "success"    # Z
    .param p2, "okJoyModel"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;

    .line 435
    const-string v0, "|"

    invoke-virtual {p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "errorString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login result  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 438
    :try_start_1c
    const-string v2, ""

    .line 439
    .local v2, "typeKey":Ljava/lang/String;
    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->vsign:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 443
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send typeKey to Unity :  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 444
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 445
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v3, "ModuleName"

    const-string v4, "Login"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v3, "FunctionName"

    const-string v4, "OnLogin"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v3, "AccountId"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string v3, "IsSuccess"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 449
    const-string v3, "loginPlatform"

    const-string v4, "OKJOY_2"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v3, "Error"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->CallBack(Lorg/json/JSONObject;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_8c} :catch_8d

    .line 455
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v2    # "typeKey":Ljava/lang/String;
    goto :goto_96

    .line 452
    :catch_8d
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    const-string v2, "HuaWei4 onLoginSuccess"

    invoke-virtual {p0, v2, v0}, Lcom/okjoy_2/OkjoySDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_96
    return-void
.end method

.method static synthetic access$000(Lcom/okjoy_2/OkjoySDK;Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V
    .registers 2
    .param p0, "x0"    # Lcom/okjoy_2/OkjoySDK;
    .param p1, "x1"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;

    .line 63
    invoke-direct {p0, p1}, Lcom/okjoy_2/OkjoySDK;->sdk_submitRoleId(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/okjoy_2/OkjoySDK;ZLcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V
    .registers 3
    .param p0, "x0"    # Lcom/okjoy_2/OkjoySDK;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/okjoy_2/OkjoySDK;->LoginResult(ZLcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V

    return-void
.end method

.method static synthetic access$200(Lcom/okjoy_2/OkjoySDK;)V
    .registers 1
    .param p0, "x0"    # Lcom/okjoy_2/OkjoySDK;

    .line 63
    invoke-direct {p0}, Lcom/okjoy_2/OkjoySDK;->sdk_login()V

    return-void
.end method

.method private sdk_init(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "isDebug"    # Ljava/lang/Boolean;

    .line 142
    new-instance v0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;

    invoke-direct {v0}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;-><init>()V

    .line 144
    .local v0, "initModel":Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;->setDebug(Z)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;->setAdvDebug(Z)V

    .line 147
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->init(Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;)V

    .line 150
    return-void
.end method

.method private sdk_listener()V
    .registers 3

    .line 466
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$2;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$2;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setInitListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;)V

    .line 481
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$3;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$3;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setLoginListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;)V

    .line 510
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$4;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$4;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setLogoutListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLogoutListener;)V

    .line 529
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$5;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$5;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setSubmitRoleListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkSubmitRoleListener;)V

    .line 544
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$6;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$6;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setPayListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;)V

    .line 560
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$7;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$7;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setOpenUserCenterListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;)V

    .line 579
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$8;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$8;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setRewardAdListener(Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;)V

    .line 614
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$9;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$9;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setInterstitialAdListener(Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;)V

    .line 650
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$10;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$10;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setArchivesUploadFileListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;)V

    .line 664
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    new-instance v1, Lcom/okjoy_2/OkjoySDK$11;

    invoke-direct {v1, p0}, Lcom/okjoy_2/OkjoySDK$11;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setArchivesGetFileListener(Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;)V

    .line 681
    return-void
.end method

.method private sdk_login()V
    .registers 3

    .line 460
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->login(Landroid/app/Activity;)V

    .line 461
    return-void
.end method

.method private sdk_submitRoleId(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V
    .registers 7
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "createTime":Ljava/lang/String;
    new-instance v1, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;

    invoke-direct {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;-><init>()V

    .line 417
    .local v1, "roleModel":Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;
    const-string v2, "create"

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setScene(Ljava/lang/String;)V

    .line 418
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setRoleId(Ljava/lang/String;)V

    .line 419
    iget-object v3, p1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->userName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setRoleName(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setRoleLevel(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setServerId(Ljava/lang/String;)V

    .line 422
    const-string v2, "\u533a\u670d\u540d"

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setServerName(Ljava/lang/String;)V

    .line 423
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setVipLevel(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setPower(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v1, v0}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setCreateTime(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setBalance(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->setCurrency(Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v2

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->submitRoleInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;)V

    .line 429
    return-void
.end method


# virtual methods
.method public AttachBaseContext(Landroid/content/Context;)V
    .registers 5
    .param p1, "base"    # Landroid/content/Context;

    .line 114
    const-string v0, "OkjoySDK AttachBaseContext"

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 117
    :try_start_5
    invoke-static {p1}, Lcom/bun/miitmdid/core/JLibrary;->InitEntry(Landroid/content/Context;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 122
    goto :goto_24

    .line 119
    :catch_9
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkjoySDK AttachBaseContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/okjoy_2/OkjoySDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method public CheckPayLimit(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 405
    return-void
.end method

.method public ClearPurchase(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 368
    return-void
.end method

.method public CloseAD(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 264
    return-void
.end method

.method public GetFunctionName()[Ljava/lang/String;
    .registers 2

    .line 318
    const-string v0, "OpenGameCenter"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "funcNames":[Ljava/lang/String;
    return-object v0
.end method

.method public GetGoodsInfo(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 363
    return-void
.end method

.method public GetRealNameType()LsdkInterface/define/RealNameStatus;
    .registers 2

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetTodayOnlineTime()I
    .registers 2

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public IsAdult()Z
    .registers 2

    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public IsLoaded(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 269
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public IsPrePay()Z
    .registers 2

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public IsReSendPay()Z
    .registers 2

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public LoadAD(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 196
    return-void
.end method

.method public LogPayAmount(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 410
    return-void
.end method

.method public Login(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 274
    const-string v0, "OKJOY_2 Login"

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->login(Landroid/app/Activity;)V

    .line 276
    return-void
.end method

.method public LoginOut(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 280
    const-string v0, "OKJOY_2 LoginOut"

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->logout(Landroid/app/Activity;)V

    .line 282
    return-void
.end method

.method public OnApplicationCreate()V
    .registers 6

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkjoySDK OnApplicationCreate Build.VERSION.SDK_INT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_31

    .line 79
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "processName":Ljava/lang/String;
    sget-object v1, LsdkInterface/application/MainApplication;->instance:LsdkInterface/application/MainApplication;

    invoke-virtual {v1}, LsdkInterface/application/MainApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 81
    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 85
    .end local v0    # "processName":Ljava/lang/String;
    :cond_31
    invoke-static {}, Lcom/qiyukf/unicorn/api/Unicorn;->isInit()Z

    move-result v0

    const-string v1, "Unity"

    if-eqz v0, :cond_3f

    .line 86
    const-string v0, "\u4e03\u9c7c\u5ba2\u670d\u5df2\u521d\u59cb\u5316\uff0c\u65e0\u9700\u91cd\u590d\u521d\u59cb\u5316"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 91
    :cond_3f
    const-string v0, "\u8fdb\u884c\u4e03\u9c7c\u5ba2\u670d\u521d\u59cb\u5316"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Lcom/qiyukf/unicorn/api/YSFOptions;

    invoke-direct {v0}, Lcom/qiyukf/unicorn/api/YSFOptions;-><init>()V

    .line 94
    .local v0, "options":Lcom/qiyukf/unicorn/api/YSFOptions;
    new-instance v2, Lcom/qiyukf/nimlib/sdk/StatusBarNotificationConfig;

    invoke-direct {v2}, Lcom/qiyukf/nimlib/sdk/StatusBarNotificationConfig;-><init>()V

    iput-object v2, v0, Lcom/qiyukf/unicorn/api/YSFOptions;->statusBarNotificationConfig:Lcom/qiyukf/nimlib/sdk/StatusBarNotificationConfig;

    .line 95
    sget-object v2, LsdkInterface/application/MainApplication;->instance:LsdkInterface/application/MainApplication;

    new-instance v3, Lcom/okjoy_2/OkjoySDK$1;

    invoke-direct {v3, p0}, Lcom/okjoy_2/OkjoySDK$1;-><init>(Lcom/okjoy_2/OkjoySDK;)V

    const-string v4, "2bd1ad7f34d5baab663386f76e8c63e3"

    invoke-static {v2, v4, v0, v3}, Lcom/qiyukf/unicorn/api/Unicorn;->init(Landroid/content/Context;Ljava/lang/String;Lcom/qiyukf/unicorn/api/YSFOptions;Lcom/qiyukf/unicorn/api/UnicornImageLoader;)Z

    .line 108
    const-string v2, "\u4e03\u9c7c\u5ba2\u670d\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "options":Lcom/qiyukf/unicorn/api/YSFOptions;
    return-void
.end method

.method public OnCreate()V
    .registers 3

    .line 127
    invoke-super {p0}, LsdkInterface/SDKBase;->OnCreate()V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkjoySDK OnCreate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-static {}, LsdkInterface/SdkInterface;->IsDebug()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->setLogOpen(Z)V

    .line 134
    invoke-static {}, LsdkInterface/SdkInterface;->IsDebug()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/okjoy_2/OkjoySDK;->sdk_init(Ljava/lang/Boolean;)V

    .line 135
    invoke-direct {p0}, Lcom/okjoy_2/OkjoySDK;->sdk_listener()V

    .line 137
    invoke-direct {p0}, Lcom/okjoy_2/OkjoySDK;->InitADKeys()V

    .line 138
    return-void
.end method

.method public OnDestroy()V
    .registers 3

    .line 189
    invoke-super {p0}, LsdkInterface/SDKBase;->OnDestroy()V

    .line 190
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->onDestroy(Landroid/app/Activity;)V

    .line 191
    return-void
.end method

.method public OnLogin(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 383
    const-string v0, "OKJOY OnLogin"

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/okjoy_2/OkjoySDK;->sdk_login()V

    .line 385
    return-void
.end method

.method public OnLogout()V
    .registers 1

    .line 390
    return-void
.end method

.method public OnPause()V
    .registers 3

    .line 154
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->onPause(Landroid/app/Activity;)V

    .line 155
    return-void
.end method

.method public OnRestart()V
    .registers 3

    .line 166
    invoke-super {p0}, LsdkInterface/SDKBase;->OnRestart()V

    .line 168
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->onRestart(Landroid/app/Activity;)V

    .line 170
    return-void
.end method

.method public OnResume()V
    .registers 3

    .line 174
    invoke-super {p0}, LsdkInterface/SDKBase;->OnResume()V

    .line 176
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->onResume(Landroid/app/Activity;)V

    .line 178
    return-void
.end method

.method public OnStart()V
    .registers 3

    .line 159
    invoke-super {p0}, LsdkInterface/SDKBase;->OnStart()V

    .line 161
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->onStart(Landroid/app/Activity;)V

    .line 162
    return-void
.end method

.method public OnStop()V
    .registers 3

    .line 182
    invoke-super {p0}, LsdkInterface/SDKBase;->OnStop()V

    .line 184
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->onStop(Landroid/app/Activity;)V

    .line 185
    return-void
.end method

.method public Other(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 299
    :try_start_0
    const-string v0, "FunctionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "funcName":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3c

    :cond_e
    goto :goto_22

    :sswitch_f
    const-string v2, "UploadGameRecord"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    goto :goto_22

    :sswitch_19
    const-string v2, "OpenGameCenter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    :goto_22
    packed-switch v1, :pswitch_data_46

    goto :goto_36

    .line 308
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/okjoy_2/OkjoySDK;->UploadGameRecord(Lorg/json/JSONObject;)V

    goto :goto_36

    .line 303
    :pswitch_2a
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->openUserCenter(Landroid/app/Activity;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_35} :catch_37

    .line 305
    nop

    .line 313
    .end local v0    # "funcName":Ljava/lang/String;
    :goto_36
    goto :goto_3b

    .line 311
    :catch_37
    move-exception v0

    .line 312
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 314
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3b
    return-void

    :sswitch_data_3c
    .sparse-switch
        -0x6fc73f0f -> :sswitch_19
        -0x68df381c -> :sswitch_f
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_26
    .end packed-switch
.end method

.method public Pay(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 326
    const-string v0, "OKJOY_2 Pay"

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 327
    invoke-static {p1}, LsdkInterface/module/PayInfo;->FromJson(Lorg/json/JSONObject;)LsdkInterface/module/PayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/okjoy_2/OkjoySDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OKJoy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/okjoy_2/OkjoySDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    iget-object v1, v1, LsdkInterface/module/PayInfo;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "gameOrderId":Ljava/lang/String;
    new-instance v1, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-direct {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;-><init>()V

    .line 332
    .local v1, "payModel":Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;
    iget-object v2, p0, Lcom/okjoy_2/OkjoySDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    iget-object v2, v2, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setProductId(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, v0}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setOrderId(Ljava/lang/String;)V

    .line 334
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setChannel(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setExtraInfo(Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/okjoy_2/OkjoySDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    iget-object v3, v3, LsdkInterface/module/PayInfo;->goodsName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setProductName(Ljava/lang/String;)V

    .line 337
    iget-object v3, p0, Lcom/okjoy_2/OkjoySDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    iget-object v3, v3, LsdkInterface/module/PayInfo;->goodsDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setProductDesc(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/okjoy_2/OkjoySDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    iget-object v3, v3, LsdkInterface/module/PayInfo;->userID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setRoleId(Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/okjoy_2/OkjoySDK;->m_userName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setRoleName(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setRoleLevel(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setServerId(Ljava/lang/String;)V

    .line 342
    const-string v2, "\u533a\u670d1"

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setServerName(Ljava/lang/String;)V

    .line 343
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setVipLevel(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setPower(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setBalance(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->setCurrency(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v2

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/okjoy_2/OkjoySDK;->m_userID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;)V

    .line 348
    return-void
.end method

.method public PlayAD(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 228
    const-string v0, "OKJOY_2 PlayAD --->>-->> "

    invoke-virtual {p0, v0}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 230
    :try_start_5
    const-string v0, "ADType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "adType":Ljava/lang/String;
    const-string v1, "Tag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "adTag":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/okjoy_2/OkjoySDK;->GetADKeyByTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "ADID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OKJOY_2 PlayAD ADID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/okjoy_2/OkjoySDK;->GetADKeyByTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 236
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_8e

    :cond_41
    goto :goto_55

    :sswitch_42
    const-string v4, "Interstitial"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v3, 0x1

    goto :goto_55

    :sswitch_4c
    const-string v4, "Reward"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v3, 0x0

    :goto_55
    packed-switch v3, :pswitch_data_98

    goto :goto_71

    .line 242
    :pswitch_59
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v3

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_71

    .line 238
    :pswitch_65
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v3

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->showRewardAd(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_70} :catch_72

    .line 240
    nop

    .line 249
    .end local v0    # "adType":Ljava/lang/String;
    .end local v1    # "adTag":Ljava/lang/String;
    .end local v2    # "ADID":Ljava/lang/String;
    :goto_71
    goto :goto_8d

    .line 247
    :catch_72
    move-exception v0

    .line 248
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OKJOY PlayAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/okjoy_2/OkjoySDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 250
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_8d
    return-void

    :sswitch_data_8e
    .sparse-switch
        -0x6e4bc4b1 -> :sswitch_4c
        0x2dd6bb4c -> :sswitch_42
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_65
        :pswitch_59
    .end packed-switch
.end method

.method public StartRealNameAttestation()V
    .registers 1

    .line 395
    return-void
.end method

.method UploadGameRecord(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 287
    :try_start_0
    const-string v0, "RecordPath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "filePath":Ljava/lang/String;
    const-string v1, "RecordName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v2

    invoke-virtual {p0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->archivesUpLoadFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    .line 293
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    goto :goto_1c

    .line 291
    :catch_18
    move-exception v0

    .line 292
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 294
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1c
    return-void
.end method
