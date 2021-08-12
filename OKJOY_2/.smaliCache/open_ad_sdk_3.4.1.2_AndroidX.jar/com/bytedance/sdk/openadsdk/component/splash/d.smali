.class public Lcom/bytedance/sdk/openadsdk/component/splash/d;
.super Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.source "SplashVideoController.java"


# instance fields
.field private j:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 48
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->j:Z

    .line 22
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .line 26
    const/4 v0, 0x3

    return v0
.end method

.method protected a(II)V
    .registers 6

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 32
    return-void

    .line 35
    :cond_5
    const/16 v0, 0x134

    if-ne p1, v0, :cond_a

    .line 36
    return-void

    .line 38
    :cond_a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->h:Z

    if-eqz v0, :cond_11

    const-string v0, "play_error"

    goto :goto_13

    :cond_11
    const-string v0, "play_start_error"

    .line 39
    :goto_13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;IILcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object p1

    .line 40
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->h:Z

    if-eqz p2, :cond_48

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->p()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "duration"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->r()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "percent"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "buffers_time"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_48
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v2, "splash_ad"

    invoke-static {p2, v1, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    return-void
.end method

.method protected b()V
    .registers 10

    .line 52
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->j:Z

    if-nez v0, :cond_21

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->j:Z

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->c:J

    const/16 v7, 0x64

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->C()Ljava/util/Map;

    move-result-object v8

    .line 54
    const-string v3, "splash_ad"

    const-string v4, "feed_over"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 57
    :cond_21
    return-void
.end method

.method protected c()V
    .registers 1

    .line 63
    return-void
.end method

.method protected d()V
    .registers 1

    .line 69
    return-void
.end method

.method protected e()V
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->B()Ljava/util/Map;

    move-result-object v2

    .line 73
    const-string v3, "splash_ad"

    const-string v4, "feed_play"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    return-void
.end method

.method protected f()V
    .registers 6

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->B()Ljava/util/Map;

    move-result-object v2

    .line 79
    const-string v3, "splash_ad"

    const-string v4, "feed_play"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    return-void
.end method
