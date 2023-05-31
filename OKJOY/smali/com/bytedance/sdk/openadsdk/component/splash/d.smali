.class public Lcom/bytedance/sdk/openadsdk/component/splash/d;
.super Lcom/bytedance/sdk/openadsdk/core/video/b/a;
.source "SplashVideoController.java"


# instance fields
.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 5

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->i:Z

    .line 22
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x3

    return v0
.end method

.method protected a(II)V
    .registers 9

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_5

    .line 48
    :cond_4
    :goto_4
    return-void

    .line 35
    :cond_5
    const/16 v0, 0x134

    if-eq p1, v0, :cond_4

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->z()Z

    move-result v2

    .line 40
    if-eqz v2, :cond_55

    const-string v0, "play_error"

    move-object v1, v0

    .line 41
    :goto_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v3

    invoke-static {v0, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;IILcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;

    move-result-object v3

    .line 42
    if-eqz v2, :cond_45

    .line 43
    const-string v0, "duration"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->o()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "percent"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "buffers_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v4, "splash_ad"

    invoke-static {v0, v2, v4, v1, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->k(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 40
    :cond_55
    const-string v0, "play_start_error"

    move-object v1, v0

    goto :goto_12
.end method

.method protected b()V
    .registers 9

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->i:Z

    if-nez v0, :cond_20

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->i:Z

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "splash_ad"

    const-string v3, "feed_over"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->c:J

    const/16 v6, 0x64

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->B()Ljava/util/Map;

    move-result-object v7

    .line 56
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 59
    :cond_20
    return-void
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method

.method protected e()V
    .registers 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "splash_ad"

    const-string v3, "feed_play"

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->A()Ljava/util/Map;

    move-result-object v4

    .line 75
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method protected f()V
    .registers 6

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "splash_ad"

    const-string v3, "feed_play"

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->A()Ljava/util/Map;

    move-result-object v4

    .line 81
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    return-void
.end method
