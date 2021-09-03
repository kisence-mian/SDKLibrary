.class final Lcom/tapsdk/bootstrap/account/TDSUser$1;
.super Ljava/lang/Object;
.source "TDSUser.java"

# interfaces
.implements Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/account/TDSUser;->loginWithTapTap(Landroid/app/Activity;Lcom/tapsdk/bootstrap/Callback;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tapsdk/bootstrap/Callback;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/Callback;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/tapsdk/bootstrap/account/TDSUser$1;->val$callback:Lcom/tapsdk/bootstrap/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 4

    .line 401
    # getter for: Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->access$300()Lcn/leancloud/LCLogger;

    move-result-object v0

    const-string v1, "signinWithTaptap Cancelled"

    invoke-virtual {v0, v1}, Lcn/leancloud/LCLogger;->w(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->authorizationCancel()V

    .line 403
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser$1;->val$callback:Lcom/tapsdk/bootstrap/Callback;

    if-eqz v0, :cond_1a

    .line 404
    new-instance v1, Lcom/tapsdk/bootstrap/exceptions/TapLoginFailError;

    const-string v2, "login is cancelled."

    invoke-direct {v1, v2}, Lcom/tapsdk/bootstrap/exceptions/TapLoginFailError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapsdk/bootstrap/Callback;->onFail(Lcom/tapsdk/bootstrap/exceptions/TapError;)V

    .line 406
    :cond_1a
    return-void
.end method

.method public onLoginError(Lcom/taptap/sdk/AccountGlobalError;)V
    .registers 5
    .param p1, "globalError"    # Lcom/taptap/sdk/AccountGlobalError;

    .line 410
    # getter for: Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->access$400()Lcn/leancloud/LCLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signinWithTaptap Failed. cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taptap/sdk/AccountGlobalError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/leancloud/LCLogger;->w(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Lcom/taptap/sdk/AccountGlobalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->authorizationFail(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser$1;->val$callback:Lcom/tapsdk/bootstrap/Callback;

    if-eqz v0, :cond_35

    .line 413
    new-instance v1, Lcom/tapsdk/bootstrap/exceptions/TapLoginFailError;

    invoke-virtual {p1}, Lcom/taptap/sdk/AccountGlobalError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapsdk/bootstrap/exceptions/TapLoginFailError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapsdk/bootstrap/Callback;->onFail(Lcom/tapsdk/bootstrap/exceptions/TapError;)V

    .line 415
    :cond_35
    return-void
.end method

.method public onLoginSuccess(Lcom/taptap/sdk/AccessToken;)V
    .registers 6
    .param p1, "token"    # Lcom/taptap/sdk/AccessToken;

    .line 357
    # getter for: Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->access$000()Lcn/leancloud/LCLogger;

    move-result-object v0

    const-string v1, "signinWithTapTap authorization succeed"

    invoke-virtual {v0, v1}, Lcn/leancloud/LCLogger;->i(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->authorizationSuccess()V

    .line 360
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v0

    .line 361
    .local v0, "profile":Lcom/taptap/sdk/Profile;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    .local v1, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p1, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v2, p1, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    const-string v3, "kid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v2, p1, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    const-string v3, "mac_key"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v2, p1, Lcom/taptap/sdk/AccessToken;->token_type:Ljava/lang/String;

    const-string v3, "token_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v2, p1, Lcom/taptap/sdk/AccessToken;->mac_algorithm:Ljava/lang/String;

    const-string v3, "mac_algorithm"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->getOpenid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->getUnionid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unionid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->getAvatar()Ljava/lang/String;

    move-result-object v2

    const-string v3, "avatar"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-class v2, Lcom/tapsdk/bootstrap/account/TDSUser;

    const-string v3, "taptap"

    invoke-static {v2, v1, v3}, Lcom/tapsdk/bootstrap/account/TDSUser;->loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/tapsdk/bootstrap/account/TDSUser$1$1;

    invoke-direct {v3, p0}, Lcom/tapsdk/bootstrap/account/TDSUser$1$1;-><init>(Lcom/tapsdk/bootstrap/account/TDSUser$1;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 397
    return-void
.end method
