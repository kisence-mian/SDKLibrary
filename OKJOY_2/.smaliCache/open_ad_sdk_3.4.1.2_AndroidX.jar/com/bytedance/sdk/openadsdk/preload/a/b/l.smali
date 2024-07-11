.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/l;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/preload/a/p;
        }
    .end annotation

    .line 45
    nop

    .line 47
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_4} :catch_25
    .catch Lcom/bytedance/sdk/openadsdk/preload/a/d/d; {:try_start_1 .. :try_end_4} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_17
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_10

    .line 48
    const/4 v0, 0x0

    .line 49
    :try_start_5
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->X:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/preload/a/l;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_d} :catch_e
    .catch Lcom/bytedance/sdk/openadsdk/preload/a/d/d; {:try_start_5 .. :try_end_d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_17
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_d} :catch_10

    return-object p0

    .line 50
    :catch_e
    move-exception p0

    goto :goto_27

    .line 64
    :catch_10
    move-exception p0

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 62
    :catch_17
    move-exception p0

    .line 63
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 60
    :catch_1e
    move-exception p0

    .line 61
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 50
    :catch_25
    move-exception p0

    const/4 v0, 0x1

    .line 55
    :goto_27
    if-eqz v0, :cond_2c

    .line 56
    sget-object p0, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    return-object p0

    .line 59
    :cond_2c
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 2

    .line 77
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/Writer;

    goto :goto_d

    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Lcom/bytedance/sdk/openadsdk/preload/a/d/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->X:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 74
    return-void
.end method
