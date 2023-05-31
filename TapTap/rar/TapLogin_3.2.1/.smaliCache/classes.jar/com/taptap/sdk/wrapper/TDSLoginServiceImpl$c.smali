.class Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;
.super Ljava/lang/Object;
.source "TDSLoginServiceImpl.java"

# interfaces
.implements Lcom/taptap/sdk/net/Api$ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->getTestQualification(Lcom/tds/common/bridge/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/net/Api$ApiCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/tds/common/bridge/BridgeCallback;

.field final synthetic c:Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;Ljava/util/Map;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->c:Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;

    iput-object p2, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->b:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "userTestQualification"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->b:Lcom/tds/common/bridge/BridgeCallback;

    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->a:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "userTestQualification"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->b:Lcom/tds/common/bridge/BridgeCallback;

    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
