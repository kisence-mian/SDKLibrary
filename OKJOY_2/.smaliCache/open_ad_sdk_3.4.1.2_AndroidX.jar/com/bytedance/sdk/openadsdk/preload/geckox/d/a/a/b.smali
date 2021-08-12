.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "DownloadFullSingleFileInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "Landroid/util/Pair<",
        "Landroid/net/Uri;",
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

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 34
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    .line 35
    const/4 v0, -0x1

    const-string v1, "url path illegal, url:"

    if-eq p0, v0, :cond_35

    .line 39
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 44
    return-object p0

    .line 42
    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_35
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_4c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url empty, channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Landroid/util/Pair;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
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

    .line 57
    const-string v0, "DownloadFullSingleFile-release:"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "start download full single file channel:"

    aput-object v3, v1, v2

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "gecko-debug-tag"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 59
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getLength()J

    move-result-wide v3

    .line 61
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;->e:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getAccessKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 63
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getVersion()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--updating"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 67
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/a;->a(Landroid/content/Context;Ljava/io/File;J)Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    move-result-object v5

    .line 71
    :try_start_97
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->h()Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    move-result-object v6

    new-instance v7, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;

    invoke-direct {v7, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;)V

    invoke-interface {v6, p2, v3, v4, v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;->a(Ljava/lang/String;JLcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;)V
    :try_end_a5
    .catchall {:try_start_97 .. :try_end_a5} :catchall_c5

    .line 77
    nop

    .line 79
    :try_start_a6
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_af} :catch_ba
    .catchall {:try_start_a6 .. :try_end_af} :catchall_b8

    .line 84
    :try_start_af
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->e()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b3

    .line 87
    goto :goto_b7

    .line 85
    :catch_b3
    move-exception p2

    .line 86
    invoke-static {v2, v0, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :goto_b7
    return-object p1

    .line 83
    :catchall_b8
    move-exception p1

    goto :goto_bc

    .line 80
    :catch_ba
    move-exception p1

    .line 81
    :try_start_bb
    throw p1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_b8

    .line 84
    :goto_bc
    :try_start_bc
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->e()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_c0

    .line 87
    goto :goto_c4

    .line 85
    :catch_c0
    move-exception p2

    .line 86
    invoke-static {v2, v0, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :goto_c4
    throw p1

    .line 72
    :catchall_c5
    move-exception p1

    .line 73
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->e()V

    .line 74
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download full single file failed! url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", channel:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 75
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", pkg id:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 76
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", caused by:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected varargs a([Ljava/lang/Object;)V
    .registers 3

    .line 49
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a([Ljava/lang/Object;)V

    .line 50
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 51
    const/4 v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;->e:Ljava/io/File;

    .line 52
    return-void
.end method

.method public synthetic a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
