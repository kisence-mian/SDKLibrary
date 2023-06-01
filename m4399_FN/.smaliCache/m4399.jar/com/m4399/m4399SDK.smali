.class public Lcom/m4399/m4399SDK;
.super LsdkInterface/SDKBase;
.source "m4399SDK.java"

# interfaces
.implements LsdkInterface/ILogin;
.implements LsdkInterface/IPay;
.implements LsdkInterface/IOther;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m4399/m4399SDK$HttpGetTask;,
        Lcom/m4399/m4399SDK$HttpCallback;
    }
.end annotation


# instance fields
.field payInfo:LsdkInterface/module/PayInfo;

.field roleId:Ljava/lang/String;

.field roleLevel:Ljava/lang/String;

.field roleName:Ljava/lang/String;

.field serverId:Ljava/lang/String;

.field serverName:Ljava/lang/String;

.field uid:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    .line 47
    new-instance v0, LsdkInterface/module/PayInfo;

    invoke-direct {v0}, LsdkInterface/module/PayInfo;-><init>()V

    iput-object v0, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    .line 49
    const-string v0, "\u7528\u6237Id"

    iput-object v0, p0, Lcom/m4399/m4399SDK;->uid:Ljava/lang/String;

    .line 50
    const-string v0, "\u7528\u6237\u540d"

    iput-object v0, p0, Lcom/m4399/m4399SDK;->userName:Ljava/lang/String;

    .line 51
    const-string v0, "\u89d2\u8272Id"

    iput-object v0, p0, Lcom/m4399/m4399SDK;->roleId:Ljava/lang/String;

    .line 52
    const-string v0, "\u89d2\u8272\u540d"

    iput-object v0, p0, Lcom/m4399/m4399SDK;->roleName:Ljava/lang/String;

    .line 53
    const-string v0, "\u89d2\u8272\u7b49\u7ea7"

    iput-object v0, p0, Lcom/m4399/m4399SDK;->roleLevel:Ljava/lang/String;

    .line 54
    const-string v0, "\u5f53\u524d\u670d\u52a1\u5668Id"

    iput-object v0, p0, Lcom/m4399/m4399SDK;->serverId:Ljava/lang/String;

    .line 55
    const-string v0, "\u670d\u52a1\u5668\u540d\u79f0"

    iput-object v0, p0, Lcom/m4399/m4399SDK;->serverName:Ljava/lang/String;

    return-void
.end method

.method private LoginResult(ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V
    .registers 8
    .param p1, "success"    # Z
    .param p2, "user"    # Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;
    .param p3, "errorString"    # Ljava/lang/String;

    .line 356
    const-string v0, "|"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login result  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 358
    :try_start_18
    const-string v1, ""

    .line 359
    .local v1, "typeKey":Ljava/lang/String;
    if-eqz p1, :cond_42

    if-eqz p2, :cond_42

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->ext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 364
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send typeKey to Unity :  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 365
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v2, "ModuleName"

    const-string v3, "Login"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v2, "FunctionName"

    const-string v3, "OnLogin"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v2, "AccountId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v2, "IsSuccess"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 370
    const-string v2, "loginPlatform"

    sget-object v3, LsdkInterface/define/LoginPlatform;->m4399_FN:LsdkInterface/define/LoginPlatform;

    invoke-virtual {v3}, LsdkInterface/define/LoginPlatform;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v2, "Error"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->CallBack(Lorg/json/JSONObject;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_88} :catch_89

    .line 376
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v1    # "typeKey":Ljava/lang/String;
    goto :goto_92

    .line 373
    :catch_89
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    const-string v1, "HuaWei4 onLoginSuccess"

    invoke-virtual {p0, v1, v0}, Lcom/m4399/m4399SDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_92
    return-void
.end method

.method static synthetic access$100(Lcom/m4399/m4399SDK;ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/m4399/m4399SDK;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;
    .param p3, "x3"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/m4399/m4399SDK;->LoginResult(ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ClearPurchase(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 522
    return-void
.end method

.method ExitGame()V
    .registers 3

    .line 764
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    new-instance v1, Lcom/m4399/m4399SDK$5;

    invoke-direct {v1, p0}, Lcom/m4399/m4399SDK$5;-><init>(Lcom/m4399/m4399SDK;)V

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->exit(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V

    .line 775
    return-void
.end method

.method public GetFunctionName()[Ljava/lang/String;
    .registers 2

    .line 741
    const-string v0, "setOauthData"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetGoodsInfo(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 517
    return-void
.end method

.method public Init(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 59
    invoke-super {p0, p1}, LsdkInterface/SDKBase;->Init(Lorg/json/JSONObject;)V

    .line 61
    const-string v0, "m4399SDK Init "

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/m4399/m4399SDK$1;

    invoke-direct {v2, p0}, Lcom/m4399/m4399SDK$1;-><init>(Lcom/m4399/m4399SDK;)V

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    .line 136
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    new-instance v1, Lcom/m4399/m4399SDK$2;

    invoke-direct {v1, p0}, Lcom/m4399/m4399SDK$2;-><init>(Lcom/m4399/m4399SDK;)V

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    .line 248
    return-void
.end method

.method public IsPrePay()Z
    .registers 2

    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public IsReSendPay()Z
    .registers 2

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public Login(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 404
    const-string v0, "4399 login"

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->login(Landroid/app/Activity;)V

    .line 407
    return-void
.end method

.method public LoginOut(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 412
    const-string v0, "4399 LoginOut"

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logout(Landroid/app/Activity;)V

    .line 415
    return-void
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 581
    invoke-super {p0, p1, p2, p3}, LsdkInterface/SDKBase;->OnActivityResult(IILandroid/content/Intent;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m4399SDK OnActivityResult requestCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onActivityResult(IILandroid/content/Intent;)V

    .line 586
    return-void
.end method

.method public OnAppplicationQuit()Z
    .registers 3

    .line 746
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    new-instance v1, Lcom/m4399/m4399SDK$4;

    invoke-direct {v1, p0}, Lcom/m4399/m4399SDK$4;-><init>(Lcom/m4399/m4399SDK;)V

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->showPlatformExitDialog(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V

    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public OnDestroy()V
    .registers 2

    .line 626
    invoke-super {p0}, LsdkInterface/SDKBase;->OnDestroy()V

    .line 628
    const-string v0, "m4399SDK OnDestroy"

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onDestroy()V

    .line 631
    return-void
.end method

.method public OnNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 572
    invoke-super {p0, p1}, LsdkInterface/SDKBase;->OnNewIntent(Landroid/content/Intent;)V

    .line 574
    const-string v0, "m4399SDK OnNewIntent"

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onNewIntent(Landroid/content/Intent;)V

    .line 577
    return-void
.end method

.method public OnPause()V
    .registers 2

    .line 608
    invoke-super {p0}, LsdkInterface/SDKBase;->OnPause()V

    .line 610
    const-string v0, "m4399SDK OnPause"

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 612
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onPause()V

    .line 613
    return-void
.end method

.method public OnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 635
    invoke-super {p0, p1, p2, p3}, LsdkInterface/SDKBase;->OnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m4399SDK OnRequestPermissionsResult requestCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v1, "onRequestPermissionsResult"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 640
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    .line 641
    .local v0, "params":Lcom/ssjj/fnsdk/core/SsjjFNParams;
    const-string v2, "requestCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    const-string v2, "permissions"

    invoke-virtual {v0, v2, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    const-string v2, "grantResults"

    invoke-virtual {v0, v2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v2

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    .line 646
    .end local v0    # "params":Lcom/ssjj/fnsdk/core/SsjjFNParams;
    :cond_49
    return-void
.end method

.method public OnRestart()V
    .registers 2

    .line 599
    invoke-super {p0}, LsdkInterface/SDKBase;->OnRestart()V

    .line 601
    const-string v0, "m4399SDK OnRestart"

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onRestart()V

    .line 604
    return-void
.end method

.method public OnStart()V
    .registers 2

    .line 590
    invoke-super {p0}, LsdkInterface/SDKBase;->OnStart()V

    .line 592
    const-string v0, "m4399SDK OnStart"

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 594
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onStart()V

    .line 595
    return-void
.end method

.method public OnStop()V
    .registers 2

    .line 617
    invoke-super {p0}, LsdkInterface/SDKBase;->OnStop()V

    .line 619
    const-string v0, "m4399SDK OnPause"

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onStop()V

    .line 622
    return-void
.end method

.method public Other(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 725
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4399 Other "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 726
    const-string v0, "FunctionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "functionName":Ljava/lang/String;
    const-string v1, "setOauthData"

    if-ne v0, v1, :cond_31

    .line 730
    const-string v1, "Content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v2

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setOauthData(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_31} :catch_32

    .line 736
    .end local v0    # "functionName":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :cond_31
    goto :goto_36

    .line 734
    :catch_32
    move-exception v0

    .line 735
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 737
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_36
    return-void
.end method

.method public Pay(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 422
    :try_start_0
    invoke-static {p1}, LsdkInterface/module/PayInfo;->FromJson(Lorg/json/JSONObject;)LsdkInterface/module/PayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    .line 423
    const-string v0, "GoodsID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "goodsID":Ljava/lang/String;
    const-string v1, "UserID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "playerID":Ljava/lang/String;
    new-instance v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;-><init>()V

    .line 430
    .local v2, "info":Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;
    iget-object v3, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    iget-object v3, v3, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    iput-object v3, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    .line 431
    iget-object v3, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    iget-object v3, v3, LsdkInterface/module/PayInfo;->userID:Ljava/lang/String;

    iput-object v3, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    .line 432
    iget-object v3, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    iget-object v3, v3, LsdkInterface/module/PayInfo;->goodsName:Ljava/lang/String;

    iput-object v3, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productName:Ljava/lang/String;

    .line 433
    iget-object v3, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    iget-object v3, v3, LsdkInterface/module/PayInfo;->goodsDescription:Ljava/lang/String;

    iput-object v3, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productDesc:Ljava/lang/String;

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    iget v4, v4, LsdkInterface/module/PayInfo;->price:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    .line 435
    const-string v3, "1"

    iput-object v3, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productCount:Ljava/lang/String;

    .line 438
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v3

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/m4399/m4399SDK$3;

    invoke-direct {v5, p0}, Lcom/m4399/m4399SDK$3;-><init>(Lcom/m4399/m4399SDK;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    .line 468
    .end local v0    # "goodsID":Ljava/lang/String;
    .end local v1    # "playerID":Ljava/lang/String;
    .end local v2    # "info":Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;
    goto :goto_78

    .line 466
    :catch_5d
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pay Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/m4399/m4399SDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_78
    return-void
.end method

.method SendPayCallBack(ZLjava/lang/String;)V
    .registers 8
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 474
    const-string v0, ""

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 475
    .local v1, "jo":Lorg/json/JSONObject;
    move-object v2, v0

    .line 476
    .local v2, "goodsID":Ljava/lang/String;
    iget-object v3, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    if-eqz v3, :cond_f

    .line 478
    iget-object v3, v3, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    move-object v2, v3

    .line 481
    :cond_f
    const-string v3, "ModuleName"

    const-string v4, "Pay"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v3, "GoodsID"

    iget-object v4, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    iget-object v4, v4, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string v3, "IsSuccess"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 484
    const-string v3, "OrderID"

    iget-object v4, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    iget-object v4, v4, LsdkInterface/module/PayInfo;->orderID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    const-string v3, "Error"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    const-string v3, "Payment"

    const-string v4, "m4399_FN"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    const-string v3, "Receipt"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayInfo is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_50

    const/4 v3, 0x1

    goto :goto_51

    :cond_50
    const/4 v3, 0x0

    :goto_51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "jo is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    if-nez v0, :cond_71

    .line 492
    new-instance v0, LsdkInterface/module/PayInfo;

    invoke-direct {v0}, LsdkInterface/module/PayInfo;-><init>()V

    iput-object v0, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    .line 494
    :cond_71
    iget-object v0, p0, Lcom/m4399/m4399SDK;->payInfo:LsdkInterface/module/PayInfo;

    invoke-virtual {v0, v1}, LsdkInterface/module/PayInfo;->ToJson(Lorg/json/JSONObject;)V

    .line 496
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 498
    invoke-static {v1}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_80} :catch_81

    .line 501
    .end local v1    # "jo":Lorg/json/JSONObject;
    .end local v2    # "goodsID":Ljava/lang/String;
    goto :goto_98

    .line 499
    :catch_81
    move-exception v0

    .line 500
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

    invoke-virtual {p0, v1, v0}, Lcom/m4399/m4399SDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 502
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_98
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 5

    .line 687
    invoke-super {p0}, LsdkInterface/SDKBase;->onAttachedToWindow()V

    .line 689
    const-string v0, "m4399SDK onAttachedToWindow  "

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 692
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    .line 694
    :cond_20
    return-void
.end method

.method public onBackPressed()V
    .registers 5

    .line 711
    invoke-super {p0}, LsdkInterface/SDKBase;->onBackPressed()V

    .line 713
    const-string v0, "m4399SDK onBackPressed  "

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 715
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v1, "onBackPressed"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 716
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    .line 718
    :cond_20
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 676
    invoke-super {p0, p1}, LsdkInterface/SDKBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 678
    const-string v0, "m4399SDK onConfigurationChanged  "

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 680
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    .line 681
    .local v0, "params":Lcom/ssjj/fnsdk/core/SsjjFNParams;
    const-string v1, "configuration"

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "onConfigurationChanged"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    .line 683
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 663
    invoke-super {p0, p1}, LsdkInterface/SDKBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 665
    const-string v0, "m4399SDK onRestoreInstanceState  "

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v1, "onRestoreInstanceState"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 668
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    .line 669
    .local v0, "params":Lcom/ssjj/fnsdk/core/SsjjFNParams;
    const-string v2, "bundle"

    invoke-virtual {v0, v2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 670
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v2

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    .line 672
    .end local v0    # "params":Lcom/ssjj/fnsdk/core/SsjjFNParams;
    :cond_2a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 650
    invoke-super {p0, p1}, LsdkInterface/SDKBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 652
    const-string v0, "m4399SDK onSaveInstanceState  "

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v1, "onSaveInstanceState"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 655
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    .line 656
    .local v0, "params":Lcom/ssjj/fnsdk/core/SsjjFNParams;
    const-string v2, "bundle"

    invoke-virtual {v0, v2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v2

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    .line 659
    .end local v0    # "params":Lcom/ssjj/fnsdk/core/SsjjFNParams;
    :cond_2a
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .param p1, "hasFocus"    # Z

    .line 698
    invoke-super {p0, p1}, LsdkInterface/SDKBase;->onWindowFocusChanged(Z)V

    .line 700
    const-string v0, "m4399SDK onWindowFocusChanged  "

    invoke-virtual {p0, v0}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 702
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v1, "onWindowFocusChanged"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 703
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    .line 704
    .local v0, "params":Lcom/ssjj/fnsdk/core/SsjjFNParams;
    const-string v2, "hasFocus"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 705
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v2

    invoke-virtual {p0}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    .line 707
    .end local v0    # "params":Lcom/ssjj/fnsdk/core/SsjjFNParams;
    :cond_2e
    return-void
.end method
