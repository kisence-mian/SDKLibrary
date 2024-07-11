.class public Lcom/facebook/FaceBook;
.super LsdkInterface/SDKBase;
.source "FaceBook.java"

# interfaces
.implements LsdkInterface/ILogin;


# static fields
.field public static LogTag:Ljava/lang/String;


# instance fields
.field public callbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-string v0, "FaceBookLogin====="

    sput-object v0, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    return-void
.end method

.method private SignOutResultResultCallBack(Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 6
    .param p1, "isSuccess"    # Ljava/lang/Boolean;
    .param p2, "ErrorCode"    # Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SignOutResultResultCallBack======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==ErrorCode=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "LoginOut"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v1, "AccountId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v1, "IsSuccess"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v1, "loginPlatform"

    sget-object v2, LsdkInterface/define/LoginPlatform;->FaceBook:LsdkInterface/define/LoginPlatform;

    invoke-virtual {v2}, LsdkInterface/define/LoginPlatform;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "Error"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-virtual {p0, v0}, Lcom/facebook/FaceBook;->CallBack(Lorg/json/JSONObject;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4d} :catch_4e

    .line 151
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_57

    .line 148
    :catch_4e
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    const-string v1, "Google onLoginError"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/FaceBook;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method private SignResultResultCallBack(Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .registers 8
    .param p1, "isSuccess"    # Ljava/lang/Boolean;
    .param p2, "IDToken"    # Lcom/facebook/AccessToken;
    .param p3, "ErrorCode"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SignResultResultCallBack======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "==ErrorCode=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :try_start_22
    const-string v0, "-1"

    .line 114
    .local v0, "typeKey":Ljava/lang/String;
    if-eqz p2, :cond_66

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 117
    sget-object v1, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==Token=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v1, "jo":Lorg/json/JSONObject;
    const-string v2, "ModuleName"

    const-string v3, "Login"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v2, "AccountId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v2, "IsSuccess"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v2, "loginPlatform"

    sget-object v3, LsdkInterface/define/LoginPlatform;->FaceBook:LsdkInterface/define/LoginPlatform;

    invoke-virtual {v3}, LsdkInterface/define/LoginPlatform;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v2, "Error"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FaceBook Login ResultResultCallBack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/FaceBook;->SendLog(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v1}, Lcom/facebook/FaceBook;->CallBack(Lorg/json/JSONObject;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_a5} :catch_a6

    .line 131
    .end local v0    # "typeKey":Ljava/lang/String;
    .end local v1    # "jo":Lorg/json/JSONObject;
    goto :goto_af

    .line 128
    :catch_a6
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const-string v1, "Google onLoginError"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/FaceBook;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_af
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/FaceBook;Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/facebook/FaceBook;
    .param p1, "x1"    # Ljava/lang/Boolean;
    .param p2, "x2"    # Lcom/facebook/AccessToken;
    .param p3, "x3"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/FaceBook;->SignResultResultCallBack(Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Init(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 29
    sget-object v0, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    const-string v1, " Init Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/facebook/FaceBook;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lcom/facebook/FaceBook;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/FaceBook;->callbackManager:Lcom/facebook/CallbackManager;

    .line 34
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/FaceBook;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/facebook/FaceBook$1;

    invoke-direct {v2, p0}, Lcom/facebook/FaceBook$1;-><init>(Lcom/facebook/FaceBook;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 57
    return-void
.end method

.method public Login(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 68
    sget-object v0, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    const-string v1, " Start Login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 71
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 73
    .local v3, "isLoggedIn":Z
    :goto_18
    sget-object v4, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Start Login isLoggedIn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v3, :cond_58

    .line 76
    sget-object v1, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLoggedIn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "0"

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/FaceBook;->SignResultResultCallBack(Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    goto :goto_6d

    .line 81
    :cond_58
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/FaceBook;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "public_profile"

    aput-object v6, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 84
    :goto_6d
    return-void
.end method

.method public LoginOut(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 88
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 90
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    const/4 v1, 0x1

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 90
    if-nez v0, :cond_11

    .line 92
    const-string v1, "no Login"

    invoke-direct {p0, v2, v1}, Lcom/facebook/FaceBook;->SignOutResultResultCallBack(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 93
    return-void

    .line 96
    :cond_11
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 97
    .local v1, "isLoggedIn":Z
    :goto_1b
    if-eqz v1, :cond_24

    .line 99
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 102
    :cond_24
    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/facebook/FaceBook;->SignOutResultResultCallBack(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 62
    sget-object v0, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OnActivityResult requestCode\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-super {p0, p1, p2, p3}, LsdkInterface/SDKBase;->OnActivityResult(IILandroid/content/Intent;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/FaceBook;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 65
    return-void
.end method
