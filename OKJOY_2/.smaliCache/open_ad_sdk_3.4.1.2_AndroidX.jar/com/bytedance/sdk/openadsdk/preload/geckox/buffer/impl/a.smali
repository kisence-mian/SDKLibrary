.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/a;
.super Ljava/lang/Object;
.source "BufferPolicy.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/File;J)Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/a;->b(Landroid/content/Context;Ljava/io/File;J)Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    move-result-object p0

    .line 22
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buffer type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "gecko-debug-tag"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;J)Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    const-string v0, " caused by:"

    if-gtz p0, :cond_38

    .line 29
    :try_start_8
    new-instance p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/b;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/b;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    return-object p0

    .line 30
    :catch_e
    move-exception p0

    .line 31
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create FileBuffer failed! file:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 47
    :cond_38
    :try_start_38
    new-instance p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;

    invoke-direct {p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;-><init>(JLjava/io/File;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    return-object p0

    .line 48
    :catch_3e
    move-exception p0

    .line 49
    const-string v1, "gecko-debug-tag"

    const-string v2, "mmap failed:"

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    :try_start_46
    new-instance p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;

    invoke-direct {p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;-><init>(JLjava/io/File;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4b} :catch_4c

    return-object p0

    .line 54
    :catch_4c
    move-exception p0

    .line 55
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create random access file failed! file:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
