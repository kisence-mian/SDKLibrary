.class Lcom/tonyodev/fetch/FetchService$7;
.super Landroid/content/BroadcastReceiver;
.source "FetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchService;->removeRequest(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchService;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$7;->this$0:Lcom/tonyodev/fetch/FetchService;

    iput-wide p2, p0, Lcom/tonyodev/fetch/FetchService$7;->val$id:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 689
    invoke-static {p2}, Lcom/tonyodev/fetch/FetchRunnable;->getIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchService$7;->val$id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    .line 690
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$7;->this$0:Lcom/tonyodev/fetch/FetchService;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchService$7;->val$id:J

    # invokes: Lcom/tonyodev/fetch/FetchService;->removeRequestAction(J)V
    invoke-static {v0, v2, v3}, Lcom/tonyodev/fetch/FetchService;->access$2400(Lcom/tonyodev/fetch/FetchService;J)V

    .line 692
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$7;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$1800(Lcom/tonyodev/fetch/FetchService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 693
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$7;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;
    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$1900(Lcom/tonyodev/fetch/FetchService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 694
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$7;->this$0:Lcom/tonyodev/fetch/FetchService;

    const/4 v1, 0x0

    # setter for: Lcom/tonyodev/fetch/FetchService;->runningTask:Z
    invoke-static {v0, v1}, Lcom/tonyodev/fetch/FetchService;->access$2002(Lcom/tonyodev/fetch/FetchService;Z)Z

    .line 695
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$7;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->startDownload()V
    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    .line 697
    :cond_2e
    return-void
.end method
