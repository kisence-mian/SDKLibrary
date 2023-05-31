.class final Lcom/taptap/sdk/IscTapLoginService$c;
.super Ljava/lang/Object;
.source "IscTapLoginService.java"

# interfaces
.implements Lcom/tds/common/net/TDSNetInterceptor$CheckAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/IscTapLoginService;->checkLoginError(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->logout()V

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getLoginCallback()Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getLoginCallback()Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/AccountGlobalError;

    invoke-direct {v1, p1}, Lcom/taptap/sdk/AccountGlobalError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;->onLoginError(Lcom/taptap/sdk/AccountGlobalError;)V

    :cond_15
    return-void
.end method
