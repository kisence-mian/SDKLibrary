.class Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$a;
.super Ljava/lang/Object;
.source "TDSLoginServiceImpl.java"

# interfaces
.implements Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->registerLoginCallback(Lcom/tds/common/bridge/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tds/common/bridge/BridgeCallback;

.field final synthetic b:Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$a;->b:Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;

    iput-object p2, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$a;->a:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$a;->a:Lcom/tds/common/bridge/BridgeCallback;

    new-instance v1, Lcom/taptap/sdk/wrapper/LoginWrapperBean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/taptap/sdk/wrapper/LoginWrapperBean;-><init>(I)V

    invoke-static {v1}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginError(Lcom/taptap/sdk/AccountGlobalError;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$a;->a:Lcom/tds/common/bridge/BridgeCallback;

    new-instance v1, Lcom/taptap/sdk/wrapper/LoginWrapperBean;

    .line 2
    invoke-virtual {p1}, Lcom/taptap/sdk/AccountGlobalError;->toJsonString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/taptap/sdk/wrapper/LoginWrapperBean;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-static {v1}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess(Lcom/taptap/sdk/AccessToken;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$a;->a:Lcom/tds/common/bridge/BridgeCallback;

    new-instance v1, Lcom/taptap/sdk/wrapper/LoginWrapperBean;

    .line 2
    invoke-virtual {p1}, Lcom/taptap/sdk/AccessToken;->toJsonString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/taptap/sdk/wrapper/LoginWrapperBean;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-static {v1}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
