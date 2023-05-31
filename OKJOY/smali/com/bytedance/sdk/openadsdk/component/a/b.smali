.class public Lcom/bytedance/sdk/openadsdk/component/a/b;
.super Lcom/bytedance/sdk/openadsdk/component/a/c;
.source "TTDrawFeedAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;


# instance fields
.field private m:Z

.field private n:Landroid/graphics/Bitmap;

.field private o:I

.field private p:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/a/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;I)V

    .line 29
    return-void
.end method

.method private a(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->c(I)I

    move-result v2

    .line 93
    const/4 v3, 0x3

    if-ne v3, v2, :cond_e

    .line 102
    :cond_d
    :goto_d
    return v0

    .line 95
    :cond_e
    if-ne v1, v2, :cond_1a

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v0, v1

    .line 96
    goto :goto_d

    .line 97
    :cond_1a
    const/4 v3, 0x2

    if-ne v3, v2, :cond_d

    .line 98
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/w;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2d
    move v0, v1

    .line 99
    goto :goto_d
.end method

.method private h()V
    .registers 4

    .prologue
    const/16 v2, 0xc8

    const/16 v1, 0x14

    .line 112
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->o:I

    if-lt v0, v2, :cond_b

    .line 113
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->o:I

    .line 117
    :cond_a
    :goto_a
    return-void

    .line 114
    :cond_b
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->o:I

    if-gt v0, v1, :cond_a

    .line 115
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->o:I

    goto :goto_a
.end method


# virtual methods
.method public bridge synthetic a()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(II)V
    .registers 3

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(II)V

    return-void
.end method

.method public bridge synthetic a(JJ)V
    .registers 6

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(JJ)V

    return-void
.end method

.method public bridge synthetic c()V
    .registers 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .registers 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->d()V

    return-void
.end method

.method public bridge synthetic d_()V
    .registers 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->d_()V

    return-void
.end method

.method public bridge synthetic e()V
    .registers 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->e()V

    return-void
.end method

.method public bridge synthetic f()V
    .registers 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->f()V

    return-void
.end method

.method public getAdView()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 33
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    if-nez v2, :cond_a

    .line 66
    :cond_9
    :goto_9
    return-object v4

    .line 35
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/b;->g()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 37
    :try_start_10
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v3, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 38
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/a/b$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/b;)V

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    .line 48
    invoke-virtual {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdLoadListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V

    .line 49
    invoke-virtual {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;)V

    .line 50
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v2

    .line 51
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/a/b;->a(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(I)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V

    .line 53
    move-object v0, v3

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    move-object v2, v0

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->m:Z

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;->setCanInterruptVideoPlay(Z)V

    .line 54
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->n:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5b

    .line 55
    move-object v0, v3

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    move-object v2, v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->n:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->o:I

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;->a(Landroid/graphics/Bitmap;I)V

    .line 57
    :cond_5b
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->p:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setDrawVideoListener(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_60} :catch_74

    .line 63
    :goto_60
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/b;->g()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v7, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(JZZ)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v4, v3

    .line 66
    goto :goto_9

    .line 58
    :catch_74
    move-exception v2

    move-object v3, v4

    .line 59
    goto :goto_60

    :cond_77
    move-object v3, v4

    goto :goto_60
.end method

.method public bridge synthetic getVideoDuration()D
    .registers 3

    .prologue
    .line 21
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getVideoDuration()D

    move-result-wide v0

    return-wide v0
.end method

.method public setCanInterruptVideoPlay(Z)V
    .registers 2

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->m:Z

    .line 73
    return-void
.end method

.method public setDrawVideoListener(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->p:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    .line 109
    return-void
.end method

.method public setPauseIcon(Landroid/graphics/Bitmap;I)V
    .registers 3

    .prologue
    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->n:Landroid/graphics/Bitmap;

    .line 78
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->o:I

    .line 79
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/a/b;->h()V

    .line 80
    return-void
.end method

.method public bridge synthetic setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
    .registers 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    return-void
.end method
