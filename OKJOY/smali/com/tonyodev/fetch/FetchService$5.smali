.class Lcom/tonyodev/fetch/FetchService$5;
.super Landroid/content/BroadcastReceiver;
.source "FetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchService;->removeAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchService;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$5;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 588
    if-eqz p2, :cond_b

    .line 589
    invoke-static {p2}, Lcom/tonyodev/fetch/FetchRunnable;->getIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v0

    .line 590
    .local v0, "id":J
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$5;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->removeAction(J)V
    invoke-static {v2, v0, v1}, Lcom/tonyodev/fetch/FetchService;->access$2100(Lcom/tonyodev/fetch/FetchService;J)V

    .line 593
    .end local v0    # "id":J
    :cond_b
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$5;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/tonyodev/fetch/FetchService;->access$2200(Lcom/tonyodev/fetch/FetchService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_39

    .line 594
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$5;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->removeAllAction()V
    invoke-static {v2}, Lcom/tonyodev/fetch/FetchService;->access$2300(Lcom/tonyodev/fetch/FetchService;)V

    .line 595
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$5;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
    invoke-static {v2}, Lcom/tonyodev/fetch/FetchService;->access$1800(Lcom/tonyodev/fetch/FetchService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 596
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$5;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;
    invoke-static {v2}, Lcom/tonyodev/fetch/FetchService;->access$1900(Lcom/tonyodev/fetch/FetchService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 597
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$5;->this$0:Lcom/tonyodev/fetch/FetchService;

    const/4 v3, 0x0

    # setter for: Lcom/tonyodev/fetch/FetchService;->runningTask:Z
    invoke-static {v2, v3}, Lcom/tonyodev/fetch/FetchService;->access$2002(Lcom/tonyodev/fetch/FetchService;Z)Z

    .line 598
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$5;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->startDownload()V
    invoke-static {v2}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    .line 600
    :cond_39
    return-void
.end method
