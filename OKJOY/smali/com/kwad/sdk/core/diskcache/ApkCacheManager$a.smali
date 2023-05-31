.class Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/diskcache/ApkCacheManager;
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
.field final synthetic a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 7

    const/4 v5, 0x0

    const-class v1, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_5c

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_59

    :goto_21
    return-object v5

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v3, v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;Ljava/io/File;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Z
    :try_end_54
    .catchall {:try_start_22 .. :try_end_54} :catchall_5c

    move-result v0

    if-eqz v0, :cond_32

    :try_start_57
    monitor-exit v1

    goto :goto_21

    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_59

    throw v0

    :catchall_5c
    move-exception v0

    :try_start_5d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_59

    goto :goto_21
.end method
