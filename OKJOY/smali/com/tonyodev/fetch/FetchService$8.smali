.class Lcom/tonyodev/fetch/FetchService$8;
.super Landroid/content/BroadcastReceiver;
.source "FetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchService;->updateRequestUrl(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchService;

.field final synthetic val$id:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchService;JLjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    iput-wide p2, p0, Lcom/tonyodev/fetch/FetchService$8;->val$id:J

    iput-object p4, p0, Lcom/tonyodev/fetch/FetchService$8;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 799
    invoke-static {p2}, Lcom/tonyodev/fetch/FetchRunnable;->getIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchService$8;->val$id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 800
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchService$8;->val$id:J

    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService$8;->val$url:Ljava/lang/String;

    # invokes: Lcom/tonyodev/fetch/FetchService;->updateRequestUrlAction(JLjava/lang/String;)V
    invoke-static {v0, v2, v3, v1}, Lcom/tonyodev/fetch/FetchService;->access$2600(Lcom/tonyodev/fetch/FetchService;JLjava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$1800(Lcom/tonyodev/fetch/FetchService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 803
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;
    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$1900(Lcom/tonyodev/fetch/FetchService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    const/4 v1, 0x0

    # setter for: Lcom/tonyodev/fetch/FetchService;->runningTask:Z
    invoke-static {v0, v1}, Lcom/tonyodev/fetch/FetchService;->access$2002(Lcom/tonyodev/fetch/FetchService;Z)Z

    .line 805
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->startDownload()V
    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    .line 807
    :cond_30
    return-void
.end method
