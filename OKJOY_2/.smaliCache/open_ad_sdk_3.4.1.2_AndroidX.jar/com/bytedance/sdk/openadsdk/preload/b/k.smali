.class public abstract Lcom/bytedance/sdk/openadsdk/preload/b/k;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "RetryInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "TIN;TOUT;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIN;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TOUT;>;TIN;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    :goto_0
    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 26
    :try_start_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Lcom/bytedance/sdk/openadsdk/preload/b/i$a; {:try_start_6 .. :try_end_e} :catch_12
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object p1

    .line 29
    :catchall_f
    move-exception p2

    move-object p3, p2

    .line 30
    goto :goto_17

    .line 27
    :catch_12
    move-exception p2

    .line 28
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/i$a;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    .line 31
    :goto_17
    goto :goto_0

    .line 33
    :cond_18
    throw p3
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Throwable;)Z
.end method

.method public final a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TOUT;>;TIN;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/b/k;->d:Ljava/lang/Object;

    .line 11
    :try_start_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Lcom/bytedance/sdk/openadsdk/preload/b/i$a; {:try_start_2 .. :try_end_a} :catch_11
    .catchall {:try_start_2 .. :try_end_a} :catchall_b

    return-object p1

    .line 14
    :catchall_b
    move-exception v0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :catch_11
    move-exception v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/b/i$a;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/k;->d:Ljava/lang/Object;

    return-object v0
.end method

.method protected final g()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIN;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/k;->d:Ljava/lang/Object;

    return-object v0
.end method
