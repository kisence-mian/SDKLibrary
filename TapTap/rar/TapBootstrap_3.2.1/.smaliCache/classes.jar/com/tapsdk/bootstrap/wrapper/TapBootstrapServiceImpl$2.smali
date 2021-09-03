.class Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;
.super Ljava/lang/Object;
.source "TapBootstrapServiceImpl.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->anonymouslyLogin(Lcom/tds/common/bridge/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
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

    .line 108
    iput-object p1, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;->this$0:Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;

    iput-object p2, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .line 127
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 121
    iget-object v0, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    iget-object v1, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;->this$0:Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;

    const-string v2, "{}"

    const/4 v3, 0x2

    const-string v4, "loginCallbackCode"

    # invokes: Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->constructorBridgeWrapper(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->access$000(Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onNext(Lcom/tapsdk/bootstrap/account/TDSUser;)V
    .registers 7
    .param p1, "tdsUser"    # Lcom/tapsdk/bootstrap/account/TDSUser;

    .line 116
    iget-object v0, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    iget-object v1, p0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;->this$0:Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;

    invoke-virtual {p1}, Lcom/tapsdk/bootstrap/account/TDSUser;->toJSONInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "loginCallbackCode"

    # invokes: Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->constructorBridgeWrapper(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->access$000(Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 108
    check-cast p1, Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-virtual {p0, p1}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;->onNext(Lcom/tapsdk/bootstrap/account/TDSUser;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 112
    return-void
.end method
