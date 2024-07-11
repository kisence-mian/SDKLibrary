.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;
.super Ljava/lang/Object;
.source "ListenerProvider.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
            "**>;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
            "**>;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b/a;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a:Ljava/util/Map;

    monitor-enter v0

    .line 36
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    monitor-exit v0

    return-object p1

    .line 37
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
            "**>;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b/a;",
            ")V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a:Ljava/util/Map;

    monitor-enter v0

    .line 15
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    .line 16
    if-nez v1, :cond_1a

    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 18
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_1a
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 21
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method
