.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$15;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 502
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/net/URI;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    .line 506
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 507
    return-object v2

    .line 510
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    .line 511
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_19
    goto :goto_20

    :cond_1a
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_1f} :catch_21

    goto :goto_19

    :goto_20
    return-object v2

    .line 512
    :catch_21
    move-exception p1

    .line 513
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$15;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/net/URI;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/net/URI;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p2

    :goto_8
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 519
    return-void
.end method

.method public synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$15;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method
