.class public Lcom/bytedance/sdk/openadsdk/component/reward/b;
.super Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.source "FullScreenVideoController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 21
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->b(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .line 26
    const/4 v0, 0x2

    return v0
.end method

.method protected a(II)V
    .registers 6

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 32
    return-void

    .line 34
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->h:Z

    if-eqz v0, :cond_c

    const-string v0, "play_error"

    goto :goto_e

    :cond_c
    const-string v0, "play_start_error"

    .line 35
    :goto_e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;IILcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object p1

    .line 36
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->g:Z

    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "play_type"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->h:Z

    if-eqz p2, :cond_52

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->p()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "duration"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->r()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "percent"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "buffers_time"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_52
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v2, "fullscreen_interstitial_ad"

    invoke-static {p2, v1, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method protected b()V
    .registers 9

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->C()Ljava/util/Map;

    move-result-object v7

    .line 48
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->g:Z

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "play_type"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->c:J

    const-string v2, "fullscreen_interstitial_ad"

    const-string v3, "feed_over"

    const/16 v6, 0x64

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 51
    return-void
.end method

.method protected c()V
    .registers 9

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->C()Ljava/util/Map;

    move-result-object v7

    .line 56
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->g:Z

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "play_type"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->p()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->r()I

    move-result v6

    .line 57
    const-string v2, "fullscreen_interstitial_ad"

    const-string v3, "play_pause"

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 59
    return-void
.end method

.method protected d()V
    .registers 9

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->C()Ljava/util/Map;

    move-result-object v7

    .line 64
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->g:Z

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "play_type"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->i:J

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->r()I

    move-result v6

    .line 65
    const-string v2, "fullscreen_interstitial_ad"

    const-string v3, "continue_play"

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 67
    return-void
.end method

.method protected e()V
    .registers 6

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->B()Ljava/util/Map;

    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->g:Z

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v3, "fullscreen_interstitial_ad"

    const-string v4, "feed_play"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    return-void
.end method

.method protected f()V
    .registers 6

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/b;->B()Ljava/util/Map;

    move-result-object v0

    .line 81
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->g:Z

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v3, "fullscreen_interstitial_ad"

    const-string v4, "feed_play"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    return-void
.end method
