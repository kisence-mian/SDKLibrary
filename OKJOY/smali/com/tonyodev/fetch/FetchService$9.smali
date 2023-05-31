.class Lcom/tonyodev/fetch/FetchService$9;
.super Landroid/content/BroadcastReceiver;
.source "FetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch/FetchService;
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
    .line 829
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$9;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 833
    if-eqz p2, :cond_28

    .line 835
    invoke-static {p2}, Lcom/tonyodev/fetch/FetchRunnable;->getIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v0

    .line 837
    .local v0, "id":J
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$9;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/tonyodev/fetch/FetchService;->access$2200(Lcom/tonyodev/fetch/FetchService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 838
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$9;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/tonyodev/fetch/FetchService;->access$2200(Lcom/tonyodev/fetch/FetchService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_23
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$9;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->startDownload()V
    invoke-static {v2}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    .line 843
    .end local v0    # "id":J
    :cond_28
    return-void
.end method
