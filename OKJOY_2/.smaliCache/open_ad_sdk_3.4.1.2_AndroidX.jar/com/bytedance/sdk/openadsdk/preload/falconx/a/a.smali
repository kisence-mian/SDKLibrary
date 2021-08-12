.class public Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;
.super Ljava/lang/Object;
.source "GeckoResLoader.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    if-eqz p1, :cond_2d

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 37
    if-eqz p3, :cond_1d

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;

    .line 41
    return-void

    .line 38
    :cond_1d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "resRootDir == null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_25
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "access key empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "GeckoResLoader ready to load, file:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "WebOffline-falcon"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 46
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "released!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 73
    return-void

    .line 75
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;->a()V

    .line 76
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/b;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 55
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "released!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
