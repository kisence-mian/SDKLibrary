.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$3;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 296
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    .line 300
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 301
    const/4 p1, 0x0

    return-object p1

    .line 304
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_15} :catch_16

    return-object p1

    .line 305
    :catch_16
    move-exception p1

    .line 306
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Number;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/Number;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 312
    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$3;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$3;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
