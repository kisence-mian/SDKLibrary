.class Lcom/tds/common/bridge/Bridge$3;
.super Ljava/lang/Object;
.source "Bridge.java"

# interfaces
.implements Lcom/tds/common/bridge/BridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/bridge/Bridge;->execute(Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/bridge/Bridge;

.field final synthetic val$callback:Lcom/tds/common/bridge/BridgeCallback;

.field final synthetic val$command:Lcom/tds/common/bridge/command/Command;


# direct methods
.method constructor <init>(Lcom/tds/common/bridge/Bridge;Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/common/bridge/Bridge;

    .line 118
    iput-object p1, p0, Lcom/tds/common/bridge/Bridge$3;->this$0:Lcom/tds/common/bridge/Bridge;

    iput-object p2, p0, Lcom/tds/common/bridge/Bridge$3;->val$command:Lcom/tds/common/bridge/command/Command;

    iput-object p3, p0, Lcom/tds/common/bridge/Bridge$3;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .registers 7
    .param p1, "resultJson"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/tds/common/bridge/Bridge$3;->this$0:Lcom/tds/common/bridge/Bridge;

    iget-object v1, p0, Lcom/tds/common/bridge/Bridge$3;->val$command:Lcom/tds/common/bridge/command/Command;

    iget-object v1, v1, Lcom/tds/common/bridge/command/Command;->callbackId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tds/common/bridge/Bridge$3;->val$command:Lcom/tds/common/bridge/command/Command;

    iget-boolean v2, v2, Lcom/tds/common/bridge/command/Command;->onceTime:Z

    const/4 v3, 0x1

    const-string v4, "Success"

    invoke-static {v3, p1, v4, v1, v2}, Lcom/tds/common/bridge/result/Result;->newInstance(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tds/common/bridge/result/Result;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/common/bridge/Bridge$3;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    # invokes: Lcom/tds/common/bridge/Bridge;->sendMessage(Lcom/tds/common/bridge/result/Result;Lcom/tds/common/bridge/BridgeCallback;)V
    invoke-static {v0, v1, v2}, Lcom/tds/common/bridge/Bridge;->access$300(Lcom/tds/common/bridge/Bridge;Lcom/tds/common/bridge/result/Result;Lcom/tds/common/bridge/BridgeCallback;)V

    .line 122
    return-void
.end method
