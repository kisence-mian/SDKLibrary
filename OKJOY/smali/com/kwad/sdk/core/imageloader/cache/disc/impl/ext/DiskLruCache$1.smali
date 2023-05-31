.class Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;
.super Ljava/lang/Object;
.source ""

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
        "Ljava/util/concurrent/Callable",
        "<",
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

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    monitor-exit v1

    :goto_d
    return-object v3

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToFileCount()V
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$400(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    const/4 v2, 0x0

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$502(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;I)I

    :cond_2b
    monitor-exit v1

    goto :goto_d

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v0
.end method
