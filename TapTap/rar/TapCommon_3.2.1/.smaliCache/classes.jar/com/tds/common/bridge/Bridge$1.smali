.class Lcom/tds/common/bridge/Bridge$1;
.super Ljava/lang/Object;
.source "Bridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/bridge/Bridge;->registerHandler(Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
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

    .line 85
    iput-object p1, p0, Lcom/tds/common/bridge/Bridge$1;->this$0:Lcom/tds/common/bridge/Bridge;

    iput-object p2, p0, Lcom/tds/common/bridge/Bridge$1;->val$command:Lcom/tds/common/bridge/command/Command;

    iput-object p3, p0, Lcom/tds/common/bridge/Bridge$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/tds/common/bridge/Bridge$1;->this$0:Lcom/tds/common/bridge/Bridge;

    iget-object v1, p0, Lcom/tds/common/bridge/Bridge$1;->val$command:Lcom/tds/common/bridge/command/Command;

    iget-object v2, p0, Lcom/tds/common/bridge/Bridge$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    # invokes: Lcom/tds/common/bridge/Bridge;->execute(Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V
    invoke-static {v0, v1, v2}, Lcom/tds/common/bridge/Bridge;->access$200(Lcom/tds/common/bridge/Bridge;Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V

    .line 89
    return-void
.end method
