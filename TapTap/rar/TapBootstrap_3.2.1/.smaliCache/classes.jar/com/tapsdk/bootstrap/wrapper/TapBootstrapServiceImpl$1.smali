.class Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;
.super Ljava/lang/Object;
.source "TapBootstrapServiceImpl.java"

# interfaces
.implements Lcom/tapsdk/bootstrap/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->login(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapsdk/bootstrap/Callback<",
        "Lcom/tapsdk/bootstrap/account/TDSUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;

.field final synthetic val$callback:Lcom/tds/common/bridge/BridgeCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;

    .line 93
    iput-object p1, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;->this$0:Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;

    iput-object p2, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tapsdk/bootstrap/exceptions/TapError;)V
    .registers 7
    .param p1, "error"    # Lcom/tapsdk/bootstrap/exceptions/TapError;

    .line 101
    iget-object v0, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    iget-object v1, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;->this$0:Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;

    invoke-virtual {p1}, Lcom/tapsdk/bootstrap/exceptions/TapError;->toJSON()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "loginCallbackCode"

    # invokes: Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->constructorBridgeWrapper(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->access$000(Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onSuccess(Lcom/tapsdk/bootstrap/account/TDSUser;)V
    .registers 7
    .param p1, "result"    # Lcom/tapsdk/bootstrap/account/TDSUser;

    .line 96
    iget-object v0, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    iget-object v1, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;->this$0:Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;

    invoke-virtual {p1}, Lcom/tapsdk/bootstrap/account/TDSUser;->toJSONInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "loginCallbackCode"

    # invokes: Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->constructorBridgeWrapper(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->access$000(Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 93
    check-cast p1, Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-virtual {p0, p1}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;->onSuccess(Lcom/tapsdk/bootstrap/account/TDSUser;)V

    return-void
.end method
