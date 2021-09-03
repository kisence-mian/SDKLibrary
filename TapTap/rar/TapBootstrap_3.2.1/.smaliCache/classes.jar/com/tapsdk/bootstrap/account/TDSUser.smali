.class public Lcom/tapsdk/bootstrap/account/TDSUser;
.super Lcn/leancloud/LCUser;
.source "TDSUser.java"


# annotations
.annotation runtime Lcn/leancloud/annotation/LCClassName;
    value = "_User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;
    }
.end annotation


# static fields
.field protected static final TAPTAP_OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final TAPTAP_OAUTH_AVATAR:Ljava/lang/String; = "avatar"

.field protected static final TAPTAP_OAUTH_GENDER:Ljava/lang/String; = "gender"

.field protected static final TAPTAP_OAUTH_KID:Ljava/lang/String; = "kid"

.field protected static final TAPTAP_OAUTH_MAC_ALGORITHM:Ljava/lang/String; = "mac_algorithm"

.field protected static final TAPTAP_OAUTH_MAC_KEY:Ljava/lang/String; = "mac_key"

.field public static final TAPTAP_OAUTH_NICKNAME:Ljava/lang/String; = "nickname"

.field protected static final TAPTAP_OAUTH_OPEN_ID:Ljava/lang/String; = "openid"

.field protected static final TAPTAP_OAUTH_TOKEN_TYPE:Ljava/lang/String; = "token_type"

.field protected static final TAPTAP_OAUTH_UNION_ID:Ljava/lang/String; = "unionid"

.field protected static final TAPTAP_OAUTH_USERNAME:Ljava/lang/String; = "name"


# instance fields
.field private friendshipQuery:Lcn/leancloud/livequery/LCLiveQuery;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcn/leancloud/LCUser;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcn/leancloud/LCLogger;
    .registers 1

    .line 46
    sget-object v0, Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;

    return-object v0
.end method

.method static synthetic access$100()Lcn/leancloud/LCLogger;
    .registers 1

    .line 46
    sget-object v0, Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;

    return-object v0
.end method

.method static synthetic access$200()Lcn/leancloud/LCLogger;
    .registers 1

    .line 46
    sget-object v0, Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;

    return-object v0
.end method

.method static synthetic access$300()Lcn/leancloud/LCLogger;
    .registers 1

    .line 46
    sget-object v0, Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;

    return-object v0
.end method

.method static synthetic access$400()Lcn/leancloud/LCLogger;
    .registers 1

    .line 46
    sget-object v0, Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;

    return-object v0
.end method

.method public static becomeWithSessionToken(Ljava/lang/String;)Lcom/tapsdk/bootstrap/account/TDSUser;
    .registers 2
    .param p0, "sessionToken"    # Ljava/lang/String;

    .line 430
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapsdk/bootstrap/account/TDSUser;->becomeWithSessionToken(Ljava/lang/String;Z)Lcom/tapsdk/bootstrap/account/TDSUser;

    move-result-object v0

    return-object v0
.end method

.method public static becomeWithSessionToken(Ljava/lang/String;Z)Lcom/tapsdk/bootstrap/account/TDSUser;
    .registers 3
    .param p0, "sessionToken"    # Ljava/lang/String;
    .param p1, "saveToCurrentUser"    # Z

    .line 443
    invoke-static {p0, p1}, Lcom/tapsdk/bootstrap/account/TDSUser;->becomeWithSessionTokenInBackground(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/bootstrap/account/TDSUser;

    .line 444
    .local v0, "usr":Lcom/tapsdk/bootstrap/account/TDSUser;
    return-object v0
.end method

.method public static becomeWithSessionTokenInBackground(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 2
    .param p0, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            ">;"
        }
    .end annotation

    .line 455
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapsdk/bootstrap/account/TDSUser;->becomeWithSessionTokenInBackground(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static becomeWithSessionTokenInBackground(Ljava/lang/String;Z)Lio/reactivex/Observable;
    .registers 3
    .param p0, "sessionToken"    # Ljava/lang/String;
    .param p1, "saveToCurrentUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            ">;"
        }
    .end annotation

    .line 469
    const-class v0, Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-static {p0, p1, v0}, Lcom/tapsdk/bootstrap/account/TDSUser;->becomeWithSessionTokenInBackground(Ljava/lang/String;ZLjava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static currentUser()Lcom/tapsdk/bootstrap/account/TDSUser;
    .registers 1

    .line 488
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->getCurrentUser()Lcom/tapsdk/bootstrap/account/TDSUser;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser()Lcom/tapsdk/bootstrap/account/TDSUser;
    .registers 1

    .line 477
    const-class v0, Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-static {v0}, Lcn/leancloud/LCUser;->getCurrentUser(Ljava/lang/Class;)Lcn/leancloud/LCUser;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/bootstrap/account/TDSUser;

    return-object v0
.end method

.method static synthetic lambda$deleteFriendshipRequest$0(Lcn/leancloud/types/LCNull;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "any"    # Lcn/leancloud/types/LCNull;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 551
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lio/reactivex/Observable;
    .registers 5
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/leancloud/LCUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 108
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static logInAnonymously()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "+",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            ">;"
        }
    .end annotation

    .line 496
    invoke-static {}, Lcn/leancloud/LCUser;->logInAnonymously()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/bootstrap/account/TDSUser$2;

    invoke-direct {v1}, Lcom/tapsdk/bootstrap/account/TDSUser$2;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static logOut()V
    .registers 1

    .line 310
    :try_start_0
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->logout()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 313
    goto :goto_5

    .line 311
    :catch_4
    move-exception v0

    .line 314
    :goto_5
    invoke-static {}, Lcn/leancloud/LCUser;->logOut()V

    .line 315
    return-void
.end method

.method public static loginByEmail(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "+",
            "Lcn/leancloud/LCUser;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .param p0, "mobile"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "+",
            "Lcn/leancloud/LCUser;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lio/reactivex/Observable;
    .registers 5
    .param p0, "mobile"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/leancloud/LCUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 145
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .param p0, "mobile"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "+",
            "Lcn/leancloud/LCUser;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lio/reactivex/Observable;
    .registers 5
    .param p0, "mobile"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/leancloud/LCUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 169
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loginWithAuthData(Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 3
    .param p1, "platform"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            ">;"
        }
    .end annotation

    .line 324
    .local p0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v0, Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-static {v0, p0, p1}, Lcn/leancloud/LCUser;->loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loginWithAuthData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .registers 11
    .param p1, "platform"    # Ljava/lang/String;
    .param p2, "unionId"    # Ljava/lang/String;
    .param p3, "unionIdPlatform"    # Ljava/lang/String;
    .param p4, "asMainAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            ">;"
        }
    .end annotation

    .line 339
    .local p0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v0, Lcom/tapsdk/bootstrap/account/TDSUser;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcn/leancloud/LCUser;->loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs loginWithTapTap(Landroid/app/Activity;Lcom/tapsdk/bootstrap/Callback;[Ljava/lang/String;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/tapsdk/bootstrap/Callback<",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 350
    .local p1, "callback":Lcom/tapsdk/bootstrap/Callback;, "Lcom/tapsdk/bootstrap/Callback<Lcom/tapsdk/bootstrap/account/TDSUser;>;"
    if-nez p1, :cond_8

    .line 351
    const-string v0, "callback is null, ignore signin request."

    invoke-static {v0}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->e(Ljava/lang/String;)V

    .line 352
    return-void

    .line 354
    :cond_8
    new-instance v0, Lcom/tapsdk/bootstrap/account/TDSUser$1;

    invoke-direct {v0, p1}, Lcom/tapsdk/bootstrap/account/TDSUser$1;-><init>(Lcom/tapsdk/bootstrap/Callback;)V

    .line 417
    .local v0, "loginCallback":Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;
    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->registerLoginCallback(Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;)V

    .line 418
    invoke-static {p0, p2}, Lcom/taptap/sdk/TapLoginHelper;->startTapLogin(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->authorizationStart()V

    .line 420
    return-void
.end method

.method public static requestLoginSmsCodeInBackground(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 3
    .param p0, "mobilePhone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestLoginSmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .param p0, "mobilePhone"    # Ljava/lang/String;
    .param p1, "validateToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestMobilePhoneVerifyInBackground(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 3
    .param p0, "mobilePhone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestMobilePhoneVerifyInBackground(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .param p0, "mobilePhone"    # Ljava/lang/String;
    .param p1, "validateToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "validateToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestSMSCodeForUpdatingPhoneNumberInBackground(Lcn/leancloud/LCUser;Ljava/lang/String;Lcn/leancloud/sms/LCSMSOption;)Lio/reactivex/Observable;
    .registers 5
    .param p0, "asAuthenticatedUser"    # Lcn/leancloud/LCUser;
    .param p1, "mobilePhone"    # Ljava/lang/String;
    .param p2, "option"    # Lcn/leancloud/sms/LCSMSOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/leancloud/LCUser;",
            "Ljava/lang/String;",
            "Lcn/leancloud/sms/LCSMSOption;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestSMSCodeForUpdatingPhoneNumberInBackground(Ljava/lang/String;Lcn/leancloud/sms/LCSMSOption;)Lio/reactivex/Observable;
    .registers 4
    .param p0, "mobilePhone"    # Ljava/lang/String;
    .param p1, "option"    # Lcn/leancloud/sms/LCSMSOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/leancloud/sms/LCSMSOption;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lio/reactivex/Observable;
    .registers 5
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/leancloud/LCUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static verifyMobilePhoneInBackground(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 3
    .param p0, "verifyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static verifySMSCodeForUpdatingPhoneNumberInBackground(Lcn/leancloud/LCUser;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 5
    .param p0, "asAuthenticatedUser"    # Lcn/leancloud/LCUser;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "mobilePhone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/leancloud/LCUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static verifySMSCodeForUpdatingPhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "mobilePhone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/types/LCNull;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptFriendshipRequest(Lcn/leancloud/LCFriendshipRequest;Ljava/util/Map;)Lio/reactivex/Observable;
    .registers 4
    .param p1, "request"    # Lcn/leancloud/LCFriendshipRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/leancloud/LCFriendshipRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/LCFriendshipRequest;",
            ">;"
        }
    .end annotation

    .line 529
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lcn/leancloud/LCUser;->acceptFriendshipRequest(Lcn/leancloud/LCUser;Lcn/leancloud/LCFriendshipRequest;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public applyFriendshipInBackground(Lcom/tapsdk/bootstrap/account/TDSUser;Ljava/util/Map;)Lio/reactivex/Observable;
    .registers 4
    .param p1, "friend"    # Lcom/tapsdk/bootstrap/account/TDSUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/LCFriendshipRequest;",
            ">;"
        }
    .end annotation

    .line 516
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lcn/leancloud/LCUser;->applyFriendshipInBackground(Lcn/leancloud/LCUser;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public declineFriendshipRequest(Lcn/leancloud/LCFriendshipRequest;)Lio/reactivex/Observable;
    .registers 3
    .param p1, "request"    # Lcn/leancloud/LCFriendshipRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/leancloud/LCFriendshipRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/LCFriendshipRequest;",
            ">;"
        }
    .end annotation

    .line 539
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Lcn/leancloud/LCUser;->declineFriendshipRequest(Lcn/leancloud/LCUser;Lcn/leancloud/LCFriendshipRequest;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteFriendshipRequest(Lcn/leancloud/LCFriendshipRequest;)Lio/reactivex/Observable;
    .registers 4
    .param p1, "request"    # Lcn/leancloud/LCFriendshipRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/leancloud/LCFriendshipRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 548
    if-nez p1, :cond_c

    .line 549
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 551
    :cond_c
    invoke-virtual {p1}, Lcn/leancloud/LCFriendshipRequest;->deleteInBackground()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/tapsdk/bootstrap/account/TDSUser$$ExternalSyntheticLambda0;->INSTANCE:Lcom/tapsdk/bootstrap/account/TDSUser$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public friendshipQuery()Lcn/leancloud/LCQuery;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/leancloud/LCQuery<",
            "Lcn/leancloud/LCFriendship;",
            ">;"
        }
    .end annotation

    .line 582
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcn/leancloud/LCUser;->friendshipQuery(Z)Lcn/leancloud/LCQuery;

    move-result-object v0

    .line 583
    .local v0, "result":Lcn/leancloud/LCQuery;, "Lcn/leancloud/LCQuery<Lcn/leancloud/LCFriendship;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "friendStatus"

    invoke-virtual {v0, v2, v1}, Lcn/leancloud/LCQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/leancloud/LCQuery;

    .line 584
    return-object v0
.end method

.method public friendshipRequestQuery(IZZ)Lcn/leancloud/LCQuery;
    .registers 5
    .param p1, "status"    # I
    .param p2, "includeTargetUser"    # Z
    .param p3, "reachToCurrentUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Lcn/leancloud/LCQuery<",
            "Lcn/leancloud/LCFriendshipRequest;",
            ">;"
        }
    .end annotation

    .line 573
    invoke-super {p0, p1, p2, p3}, Lcn/leancloud/LCUser;->friendshipRequestQuery(IZZ)Lcn/leancloud/LCQuery;

    move-result-object v0

    return-object v0
.end method

.method public registerFriendshipNotification(Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;Lcn/leancloud/callback/LCCallback;)V
    .registers 7
    .param p1, "notify"    # Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;",
            "Lcn/leancloud/callback/LCCallback<",
            "Lcn/leancloud/types/LCNull;",
            ">;)V"
        }
    .end annotation

    .line 604
    .local p2, "callback":Lcn/leancloud/callback/LCCallback;, "Lcn/leancloud/callback/LCCallback<Lcn/leancloud/types/LCNull;>;"
    if-nez p1, :cond_14

    .line 605
    if-eqz p2, :cond_13

    .line 606
    new-instance v0, Lcn/leancloud/LCException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "FriendshipNotification is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/leancloud/LCException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcn/leancloud/callback/LCCallback;->internalDone(Lcn/leancloud/LCException;)V

    .line 608
    :cond_13
    return-void

    .line 611
    :cond_14
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/leancloud/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_6c

    .line 618
    :cond_25
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser;->friendshipQuery:Lcn/leancloud/livequery/LCLiveQuery;

    if-nez v0, :cond_57

    .line 619
    new-instance v0, Lcn/leancloud/LCQuery;

    const-string v1, "_FriendshipRequest"

    invoke-direct {v0, v1}, Lcn/leancloud/LCQuery;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "selfRequestQuery":Lcn/leancloud/LCQuery;, "Lcn/leancloud/LCQuery<Lcn/leancloud/LCFriendshipRequest;>;"
    const-string v2, "user"

    invoke-virtual {v0, v2, p0}, Lcn/leancloud/LCQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/leancloud/LCQuery;

    .line 621
    new-instance v2, Lcn/leancloud/LCQuery;

    invoke-direct {v2, v1}, Lcn/leancloud/LCQuery;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 622
    .local v1, "otherRequestQuery":Lcn/leancloud/LCQuery;, "Lcn/leancloud/LCQuery<Lcn/leancloud/LCFriendshipRequest;>;"
    const-string v2, "friend"

    invoke-virtual {v1, v2, p0}, Lcn/leancloud/LCQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/leancloud/LCQuery;

    .line 623
    const/4 v2, 0x2

    new-array v2, v2, [Lcn/leancloud/LCQuery;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcn/leancloud/LCQuery;->or(Ljava/util/List;)Lcn/leancloud/LCQuery;

    move-result-object v2

    .line 624
    .local v2, "allQuery":Lcn/leancloud/LCQuery;, "Lcn/leancloud/LCQuery<Lcn/leancloud/LCFriendshipRequest;>;"
    invoke-static {v2}, Lcn/leancloud/livequery/LCLiveQuery;->initWithQuery(Lcn/leancloud/LCQuery;)Lcn/leancloud/livequery/LCLiveQuery;

    move-result-object v3

    iput-object v3, p0, Lcom/tapsdk/bootstrap/account/TDSUser;->friendshipQuery:Lcn/leancloud/livequery/LCLiveQuery;

    .line 626
    .end local v0    # "selfRequestQuery":Lcn/leancloud/LCQuery;, "Lcn/leancloud/LCQuery<Lcn/leancloud/LCFriendshipRequest;>;"
    .end local v1    # "otherRequestQuery":Lcn/leancloud/LCQuery;, "Lcn/leancloud/LCQuery<Lcn/leancloud/LCFriendshipRequest;>;"
    .end local v2    # "allQuery":Lcn/leancloud/LCQuery;, "Lcn/leancloud/LCQuery<Lcn/leancloud/LCFriendshipRequest;>;"
    :cond_57
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser;->friendshipQuery:Lcn/leancloud/livequery/LCLiveQuery;

    new-instance v1, Lcom/tapsdk/bootstrap/account/TDSUser$3;

    invoke-direct {v1, p0, p1}, Lcom/tapsdk/bootstrap/account/TDSUser$3;-><init>(Lcom/tapsdk/bootstrap/account/TDSUser;Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;)V

    invoke-virtual {v0, v1}, Lcn/leancloud/livequery/LCLiveQuery;->setEventHandler(Lcn/leancloud/livequery/LCLiveQueryEventHandler;)V

    .line 661
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser;->friendshipQuery:Lcn/leancloud/livequery/LCLiveQuery;

    new-instance v1, Lcom/tapsdk/bootstrap/account/TDSUser$4;

    invoke-direct {v1, p0, p2}, Lcom/tapsdk/bootstrap/account/TDSUser$4;-><init>(Lcom/tapsdk/bootstrap/account/TDSUser;Lcn/leancloud/callback/LCCallback;)V

    invoke-virtual {v0, v1}, Lcn/leancloud/livequery/LCLiveQuery;->subscribeInBackground(Lcn/leancloud/livequery/LCLiveQuerySubscribeCallback;)V

    .line 669
    return-void

    .line 612
    :cond_6c
    :goto_6c
    if-eqz p2, :cond_7d

    .line 613
    new-instance v0, Lcn/leancloud/LCException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "current user is not authenticated."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/leancloud/LCException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcn/leancloud/callback/LCCallback;->internalDone(Lcn/leancloud/LCException;)V

    .line 615
    :cond_7d
    return-void
.end method

.method public signUp()V
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public signUpInBackground()Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/leancloud/LCUser;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "request is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public toJSONInfo()Ljava/lang/String;
    .registers 4

    .line 694
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 696
    .local v0, "result":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "uuid"

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    const-string v1, "userName"

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string v1, "phoneNumber"

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->getMobilePhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-string v1, "email"

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string v1, "sessionToken"

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    const-string v1, "isMobilePhoneVerified"

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->isMobilePhoneVerified()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 702
    const-string v1, "isAuthenticated"

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->isAuthenticated()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 703
    const-string v1, "isAnonymous"

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/account/TDSUser;->isAnonymous()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4d} :catch_4e

    .line 706
    goto :goto_52

    .line 704
    :catch_4e
    move-exception v1

    .line 705
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 707
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_52
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFriendshipNotification(Lcn/leancloud/callback/LCCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/leancloud/callback/LCCallback<",
            "Lcn/leancloud/types/LCNull;",
            ">;)V"
        }
    .end annotation

    .line 676
    .local p1, "callback":Lcn/leancloud/callback/LCCallback;, "Lcn/leancloud/callback/LCCallback<Lcn/leancloud/types/LCNull;>;"
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser;->friendshipQuery:Lcn/leancloud/livequery/LCLiveQuery;

    if-eqz v0, :cond_17

    .line 677
    new-instance v1, Lcom/tapsdk/bootstrap/account/TDSUser$5;

    invoke-direct {v1, p0}, Lcom/tapsdk/bootstrap/account/TDSUser$5;-><init>(Lcom/tapsdk/bootstrap/account/TDSUser;)V

    invoke-virtual {v0, v1}, Lcn/leancloud/livequery/LCLiveQuery;->setEventHandler(Lcn/leancloud/livequery/LCLiveQueryEventHandler;)V

    .line 678
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser;->friendshipQuery:Lcn/leancloud/livequery/LCLiveQuery;

    new-instance v1, Lcom/tapsdk/bootstrap/account/TDSUser$6;

    invoke-direct {v1, p0, p1}, Lcom/tapsdk/bootstrap/account/TDSUser$6;-><init>(Lcom/tapsdk/bootstrap/account/TDSUser;Lcn/leancloud/callback/LCCallback;)V

    invoke-virtual {v0, v1}, Lcn/leancloud/livequery/LCLiveQuery;->unsubscribeInBackground(Lcn/leancloud/livequery/LCLiveQuerySubscribeCallback;)V

    goto :goto_1d

    .line 687
    :cond_17
    if-eqz p1, :cond_1d

    .line 688
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/leancloud/callback/LCCallback;->internalDone(Lcn/leancloud/LCException;)V

    .line 691
    :cond_1d
    :goto_1d
    return-void
.end method
