.class public Lcom/taptap/sdk/IscTapLoginService;
.super Ljava/lang/Object;
.source "IscTapLoginService.java"


# annotations
.annotation runtime Lcom/tds/common/isc/IscService;
    value = "TapLogin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/IscTapLoginService$d;
    }
.end annotation


# instance fields
.field public loginInteracpter:Lcom/taptap/sdk/IscTapLoginService$d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSDKLoginCallback(Ljava/lang/String;Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taptap/sdk/TapLoginHelper;->addLoginResultCallbackByTag(Ljava/lang/String;Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;)V

    return-void
.end method

.method public static varargs checkLoginError(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    new-instance v0, Lcom/taptap/sdk/IscTapLoginService$c;

    invoke-direct {v0}, Lcom/taptap/sdk/IscTapLoginService$c;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/tds/common/net/TDSNetInterceptor;->checkAuthError(Ljava/lang/String;Lcom/tds/common/net/TDSNetInterceptor$CheckAuthCallback;[Ljava/lang/String;)V

    return-void
.end method

.method public static getCurrentAccessToken()Ljava/lang/String;
    .registers 1
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "currentAccessToken"
    .end annotation

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/AccessToken;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentProfile()Ljava/lang/String;
    .registers 1
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "currentProfile"
    .end annotation

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTestQualificationAsync()Lcom/tds/common/reactor/Observable;
    .registers 1
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "getTestQualification"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/taptap/sdk/IscTapLoginService$b;

    invoke-direct {v0}, Lcom/taptap/sdk/IscTapLoginService$b;-><init>()V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static handleLoginError(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "handleLoginError"
    .end annotation

    .line 1
    const-string v0, "access_denied"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taptap/sdk/IscTapLoginService;->checkLoginError(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs login(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)Lcom/tds/common/reactor/Observable;
    .registers 4
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "login"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/taptap/sdk/IscTapLoginService$a;

    invoke-direct {v0, p1, p0, p2}, Lcom/taptap/sdk/IscTapLoginService$a;-><init>(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object p0

    .line 42
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static removeSDKLoginCallback(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/taptap/sdk/TapLoginHelper;->removeLoginResultCallbackByTag(Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentAccessToken(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "setCurrentAccessToken"
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3
    :try_start_6
    new-instance v0, Lcom/taptap/sdk/AccessToken;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/AccessToken;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/taptap/sdk/AccessToken;->setCurrentToken(Lcom/taptap/sdk/AccessToken;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_13

    .line 6
    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    return-void
.end method

.method public static varargs startSDKLogin(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/TapLoginHelper;->startTapLoginByTag(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
