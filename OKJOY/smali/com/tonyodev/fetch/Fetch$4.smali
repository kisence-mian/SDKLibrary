.class Lcom/tonyodev/fetch/Fetch$4;
.super Landroid/content/BroadcastReceiver;
.source "Fetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downloadedBytes:J

.field private error:I

.field private fileSize:J

.field private id:J

.field private progress:I

.field private status:I

.field final synthetic this$0:Lcom/tonyodev/fetch/Fetch;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/Fetch;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tonyodev/fetch/Fetch;

    .prologue
    .line 954
    iput-object p1, p0, Lcom/tonyodev/fetch/Fetch$4;->this$0:Lcom/tonyodev/fetch/Fetch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, -0x1

    .line 966
    if-nez p2, :cond_6

    .line 988
    :cond_5
    :goto_5
    return-void

    .line 970
    :cond_6
    const-string v2, "com.tonyodev.fetch.extra_id"

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tonyodev/fetch/Fetch$4;->id:J

    .line 971
    const-string v2, "com.tonyodev.fetch.extra_status"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tonyodev/fetch/Fetch$4;->status:I

    .line 972
    const-string v2, "com.tonyodev.fetch.extra_progress"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tonyodev/fetch/Fetch$4;->progress:I

    .line 973
    const-string v2, "com.tonyodev.fetch.extra_downloaded_bytes"

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tonyodev/fetch/Fetch$4;->downloadedBytes:J

    .line 974
    const-string v2, "com.tonyodev.fetch.extra_file_size"

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tonyodev/fetch/Fetch$4;->fileSize:J

    .line 975
    const-string v2, "com.tonyodev.fetch.extra_error"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tonyodev/fetch/Fetch$4;->error:I

    .line 978
    :try_start_36
    iget-object v2, p0, Lcom/tonyodev/fetch/Fetch$4;->this$0:Lcom/tonyodev/fetch/Fetch;

    # invokes: Lcom/tonyodev/fetch/Fetch;->getListenerIterator()Ljava/util/Iterator;
    invoke-static {v2}, Lcom/tonyodev/fetch/Fetch;->access$200(Lcom/tonyodev/fetch/Fetch;)Ljava/util/Iterator;

    move-result-object v11

    .line 979
    .local v11, "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tonyodev/fetch/listener/FetchListener;>;"
    :goto_3c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 980
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch/listener/FetchListener;

    .line 981
    .local v1, "listener":Lcom/tonyodev/fetch/listener/FetchListener;
    iget-wide v2, p0, Lcom/tonyodev/fetch/Fetch$4;->id:J

    iget v4, p0, Lcom/tonyodev/fetch/Fetch$4;->status:I

    iget v5, p0, Lcom/tonyodev/fetch/Fetch$4;->progress:I

    iget-wide v6, p0, Lcom/tonyodev/fetch/Fetch$4;->downloadedBytes:J

    iget-wide v8, p0, Lcom/tonyodev/fetch/Fetch$4;->fileSize:J

    iget v10, p0, Lcom/tonyodev/fetch/Fetch$4;->error:I

    invoke-interface/range {v1 .. v10}, Lcom/tonyodev/fetch/listener/FetchListener;->onUpdate(JIIJJI)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_57} :catch_58

    goto :goto_3c

    .line 983
    .end local v1    # "listener":Lcom/tonyodev/fetch/listener/FetchListener;
    .end local v11    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tonyodev/fetch/listener/FetchListener;>;"
    :catch_58
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tonyodev/fetch/Fetch$4;->this$0:Lcom/tonyodev/fetch/Fetch;

    # invokes: Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z
    invoke-static {v2}, Lcom/tonyodev/fetch/Fetch;->access$300(Lcom/tonyodev/fetch/Fetch;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 985
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
