.class Lcom/tds/common/bridge/Bridge$4;
.super Ljava/lang/Object;
.source "Bridge.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/bridge/Bridge;->constructorEngineHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/bridge/Bridge;


# direct methods
.method constructor <init>(Lcom/tds/common/bridge/Bridge;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/bridge/Bridge;

    .line 166
    iput-object p1, p0, Lcom/tds/common/bridge/Bridge$4;->this$0:Lcom/tds/common/bridge/Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bridge Engine Handler Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n Message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_90

    .line 172
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tds/common/bridge/result/Result;

    .line 173
    .local v0, "result":Lcom/tds/common/bridge/result/Result;
    iget-object v1, p0, Lcom/tds/common/bridge/Bridge$4;->this$0:Lcom/tds/common/bridge/Bridge;

    # getter for: Lcom/tds/common/bridge/Bridge;->mBridgeCallbackMaps:Ljava/util/Map;
    invoke-static {v1}, Lcom/tds/common/bridge/Bridge;->access$400(Lcom/tds/common/bridge/Bridge;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/tds/common/bridge/result/Result;->callbackId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/bridge/BridgeCallback;

    .line 174
    .local v1, "callback":Lcom/tds/common/bridge/BridgeCallback;
    if-eqz v1, :cond_90

    .line 175
    invoke-virtual {v0}, Lcom/tds/common/bridge/result/Result;->toJSON()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 176
    iget-boolean v2, v0, Lcom/tds/common/bridge/result/Result;->onceTime:Z

    if-eqz v2, :cond_70

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bridge Engine CallbackHolder remove currentCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tds/common/bridge/result/Result;->callbackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/tds/common/bridge/Bridge$4;->this$0:Lcom/tds/common/bridge/Bridge;

    # getter for: Lcom/tds/common/bridge/Bridge;->mBridgeCallbackMaps:Ljava/util/Map;
    invoke-static {v2}, Lcom/tds/common/bridge/Bridge;->access$400(Lcom/tds/common/bridge/Bridge;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/tds/common/bridge/result/Result;->callbackId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bridge Engine Callback Holder Last:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/common/bridge/Bridge$4;->this$0:Lcom/tds/common/bridge/Bridge;

    # getter for: Lcom/tds/common/bridge/Bridge;->mBridgeCallbackMaps:Ljava/util/Map;
    invoke-static {v3}, Lcom/tds/common/bridge/Bridge;->access$400(Lcom/tds/common/bridge/Bridge;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 183
    .end local v0    # "result":Lcom/tds/common/bridge/result/Result;
    .end local v1    # "callback":Lcom/tds/common/bridge/BridgeCallback;
    :cond_90
    const/4 v0, 0x0

    return v0
.end method
