.class Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;
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
.field final synthetic this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit v0

    return-object v2

    :cond_e
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToSize()V
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToFileCount()V
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->rebuildJournal()V
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$400(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    const/4 v3, 0x0

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I
    invoke-static {v1, v3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$502(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;I)I

    :cond_2b
    monitor-exit v0

    return-object v2

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method
