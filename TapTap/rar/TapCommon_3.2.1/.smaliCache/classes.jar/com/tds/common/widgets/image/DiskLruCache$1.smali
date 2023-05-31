.class Lcom/tds/common/widgets/image/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/image/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/image/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/DiskLruCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/DiskLruCache;

    .line 167
    iput-object p1, p0, Lcom/tds/common/widgets/image/DiskLruCache$1;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$1;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$1;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$100(Lcom/tds/common/widgets/image/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 171
    monitor-exit v0

    return-object v2

    .line 173
    :cond_e
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$1;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    # invokes: Lcom/tds/common/widgets/image/DiskLruCache;->trimToSize()V
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$200(Lcom/tds/common/widgets/image/DiskLruCache;)V

    .line 174
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$1;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    # invokes: Lcom/tds/common/widgets/image/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$300(Lcom/tds/common/widgets/image/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 175
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$1;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    # invokes: Lcom/tds/common/widgets/image/DiskLruCache;->rebuildJournal()V
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$400(Lcom/tds/common/widgets/image/DiskLruCache;)V

    .line 176
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$1;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    const/4 v3, 0x0

    # setter for: Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I
    invoke-static {v1, v3}, Lcom/tds/common/widgets/image/DiskLruCache;->access$502(Lcom/tds/common/widgets/image/DiskLruCache;I)I

    .line 178
    :cond_26
    monitor-exit v0

    .line 179
    return-object v2

    .line 178
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
