.class Lcom/ssjj/fnsdk/core/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/LruDiskCache;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/n;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/n;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/n;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Lcom/ssjj/fnsdk/core/LruDiskCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit v0

    return-object v2

    :cond_e
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/n;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->b(Lcom/ssjj/fnsdk/core/LruDiskCache;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/n;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->c(Lcom/ssjj/fnsdk/core/LruDiskCache;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/n;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->d(Lcom/ssjj/fnsdk/core/LruDiskCache;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/n;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Lcom/ssjj/fnsdk/core/LruDiskCache;I)V

    :cond_26
    monitor-exit v0

    return-object v2

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/n;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
