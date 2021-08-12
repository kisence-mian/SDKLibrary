.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/d;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "MergePatchSingleFileInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "Landroid/util/Pair<",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
        ">;",
        "Landroid/util/Pair<",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Landroid/util/Pair;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;",
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

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start merge patch single file, channel:"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "gecko-debug-tag"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    .line 35
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->f()Ljava/io/File;

    move-result-object v1

    .line 36
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->a()V

    .line 37
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->e()V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 40
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 41
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getLocalVersion()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "res"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_107

    array-length v4, v0

    if-eqz v4, :cond_107

    .line 46
    aget-object v0, v0, v2

    .line 48
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 49
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getUrlList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->a(Ljava/io/File;)Z

    .line 52
    :try_start_94
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/BsPatch;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9f} :catch_c5
    .catchall {:try_start_94 .. :try_end_9f} :catchall_c3

    .line 58
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->a(Ljava/io/File;)Z

    .line 59
    nop

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/d;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/a;->a(Landroid/content/Context;Ljava/io/File;J)Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    move-result-object v0

    .line 62
    :try_start_b1
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_be

    .line 64
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->e()V

    .line 62
    return-object p1

    .line 64
    :catchall_be
    move-exception p1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->e()V

    .line 65
    throw p1

    .line 58
    :catchall_c3
    move-exception p1

    goto :goto_103

    .line 53
    :catch_c5
    move-exception p1

    .line 54
    :try_start_c6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge patch single file failed, channel\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkg id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getPatch()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", caused by:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_103
    .catchall {:try_start_c6 .. :try_end_103} :catchall_c3

    .line 58
    :goto_103
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->a(Ljava/io/File;)Z

    .line 59
    throw p1

    .line 44
    :cond_107
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not found old full single file,:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected varargs a([Ljava/lang/Object;)V
    .registers 3

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a([Ljava/lang/Object;)V

    .line 28
    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/d;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 29
    return-void
.end method

.method public synthetic a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/d;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
