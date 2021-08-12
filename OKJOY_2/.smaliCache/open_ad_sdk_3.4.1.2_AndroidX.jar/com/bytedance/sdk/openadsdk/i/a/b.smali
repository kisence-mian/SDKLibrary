.class public Lcom/bytedance/sdk/openadsdk/i/a/b;
.super Lcom/bytedance/sdk/openadsdk/i/a/a;
.source "DiskCache.java"


# instance fields
.field public final a:Ljava/io/File;


# virtual methods
.method public a()V
    .registers 2

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/a/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/i/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/b;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method public b()V
    .registers 5

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/d;->d()V

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->a()Landroid/content/Context;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_15

    .line 50
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/i/b/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(I)V

    .line 53
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 54
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 56
    :try_start_21
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    .line 58
    goto :goto_26

    .line 57
    :catchall_25
    move-exception v3

    .line 54
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 60
    :cond_29
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method e(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
