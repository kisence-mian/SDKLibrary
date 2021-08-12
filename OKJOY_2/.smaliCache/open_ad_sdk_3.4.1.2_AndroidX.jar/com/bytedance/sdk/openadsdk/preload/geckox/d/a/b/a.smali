.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/a;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "CheckMergedSingleFileMD5Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "Landroid/util/Pair<",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
        ">;",
        "Landroid/util/Pair<",
        "Ljava/io/File;",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Landroid/util/Pair;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "Landroid/util/Pair<",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "start check merged single file, channel:"

    aput-object v2, v0, v1

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "gecko-debug-tag"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    .line 24
    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->b(J)V

    .line 25
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 27
    :try_start_25
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/h;->a(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_44

    .line 34
    nop

    .line 35
    new-instance v1, Landroid/util/Pair;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->f()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 28
    :catchall_44
    move-exception p1

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check merged single file failed, channel\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkg id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getPatch()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", caused by:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
