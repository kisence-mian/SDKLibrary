.class public abstract Lcom/bytedance/sdk/openadsdk/preload/a/v;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/l;"
        }
    .end annotation

    .line 234
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;-><init>()V

    .line 235
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 237
    :catch_d
    move-exception p1

    .line 238
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a()Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/v$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/v;)V

    return-object v0
.end method

.method public abstract a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
