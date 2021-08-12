.class Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;
.super Ljava/lang/Object;

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
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 7

    const-class v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_57

    :cond_21
    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_2f

    :cond_48
    iget-object v4, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v4, v3}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;Ljava/io/File;)V

    iget-object v3, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;->a:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    invoke-static {v3}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b(Lcom/kwad/sdk/core/diskcache/ApkCacheManager;)Z

    move-result v3
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_59

    if-eqz v3, :cond_2f

    :try_start_55
    monitor-exit v0

    return-object v1

    :cond_57
    :goto_57
    monitor-exit v0

    return-object v1

    :catchall_59
    move-exception v2

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_5d
    monitor-exit v0

    return-object v1

    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
