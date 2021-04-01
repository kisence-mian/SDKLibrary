.class public Lcom/bytedance/sdk/openadsdk/component/reward/f;
.super Lcom/bytedance/sdk/openadsdk/core/video/b/a;
.source "RewardVideoController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method protected a(II)V
    .registers 9

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_5

    .line 44
    :goto_4
    return-void

    .line 34
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->z()Z

    move-result v2

    .line 35
    if-eqz v2, :cond_60

    const-string v0, "play_error"

    move-object v1, v0

    .line 36
    :goto_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v3

    invoke-static {v0, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;IILcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;

    move-result-object v3

    .line 37
    const-string v0, "play_type"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->g:Z

    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    if-eqz v2, :cond_50

    .line 39
    const-string v0, "duration"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->o()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "percent"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "buffers_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v4, "rewarded_video"

    invoke-static {v0, v2, v4, v1, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->k(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 35
    :cond_60
    const-string v0, "play_start_error"

    move-object v1, v0

    goto :goto_e
.end method

.method protected b()V
    .registers 9

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->B()Ljava/util/Map;

    move-result-object v7

    .line 49
    const-string v0, "play_type"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->g:Z

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "rewarded_video"

    const-string v3, "feed_over"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->c:J

    const/16 v6, 0x64

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 52
    return-void
.end method

.method protected c()V
    .registers 9

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->B()Ljava/util/Map;

    move-result-object v7

    .line 57
    const-string v0, "play_type"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->g:Z

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "rewarded_video"

    const-string v3, "play_pause"

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->o()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->q()I

    move-result v6

    .line 58
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 60
    return-void
.end method

.method protected d()V
    .registers 9

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->B()Ljava/util/Map;

    move-result-object v7

    .line 65
    const-string v0, "play_type"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->g:Z

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "rewarded_video"

    const-string v3, "continue_play"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->h:J

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->q()I

    move-result v6

    .line 66
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 68
    return-void
.end method

.method protected e()V
    .registers 6

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->A()Ljava/util/Map;

    move-result-object v1

    .line 73
    const-string v0, "play_type"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->g:Z

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "rewarded_video"

    const-string v4, "feed_play"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    return-void
.end method

.method protected f()V
    .registers 6

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->A()Ljava/util/Map;

    move-result-object v1

    .line 81
    const-string v0, "play_type"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->g:Z

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/f;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "rewarded_video"

    const-string v4, "feed_play"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    return-void
.end method
