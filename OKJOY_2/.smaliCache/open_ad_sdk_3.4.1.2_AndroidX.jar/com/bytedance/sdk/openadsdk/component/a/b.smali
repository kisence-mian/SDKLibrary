.class public Lcom/bytedance/sdk/openadsdk/component/a/b;
.super Lcom/bytedance/sdk/openadsdk/component/a/c;
.source "TTDrawFeedAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;


# instance fields
.field private n:Z

.field private o:Landroid/graphics/Bitmap;

.field private p:I

.field private q:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/a/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 30
    return-void
.end method

.method private a(I)Z
    .registers 5

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(I)I

    move-result p1

    .line 92
    nop

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v2, p1, :cond_f

    .line 95
    goto :goto_2f

    .line 96
    :cond_f
    if-ne v1, p1, :cond_1b

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 97
    move v0, v1

    goto :goto_2f

    .line 98
    :cond_1b
    const/4 v2, 0x2

    if-ne v2, p1, :cond_2f

    .line 99
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 100
    :cond_2e
    move v0, v1

    .line 103
    :cond_2f
    :goto_2f
    return v0
.end method

.method private i()V
    .registers 3

    .line 113
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->p:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_9

    .line 114
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->p:I

    goto :goto_f

    .line 115
    :cond_9
    const/16 v1, 0x14

    if-gt v0, v1, :cond_f

    .line 116
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->p:I

    .line 118
    :cond_f
    :goto_f
    return-void
.end method


# virtual methods
.method public bridge synthetic a(II)V
    .registers 3

    .line 22
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(II)V

    return-void
.end method

.method public bridge synthetic a(JJ)V
    .registers 5

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(JJ)V

    return-void
.end method

.method public bridge synthetic c()V
    .registers 1

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .registers 1

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->d()V

    return-void
.end method

.method public bridge synthetic d_()V
    .registers 1

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->d_()V

    return-void
.end method

.method public bridge synthetic e()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->e()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e_()V
    .registers 1

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->e_()V

    return-void
.end method

.method public bridge synthetic f()V
    .registers 1

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->f()V

    return-void
.end method

.method public bridge synthetic g()Z
    .registers 2

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->g()Z

    move-result v0

    return v0
.end method

.method public getAdView()Landroid/view/View;
    .registers 7

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    if-nez v0, :cond_a

    goto :goto_77

    .line 35
    :cond_a
    nop

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 38
    :try_start_11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 39
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/a/b$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/b;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdLoadListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V

    .line 50
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;)V

    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v2

    .line 52
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/a/b;->a(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V

    .line 54
    move-object v2, v0

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->n:Z

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;->setCanInterruptVideoPlay(Z)V

    .line 55
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->o:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_58

    .line 56
    move-object v3, v0

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->p:I

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;->a(Landroid/graphics/Bitmap;I)V

    .line 58
    :cond_58
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->q:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setDrawVideoListener(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5d} :catch_5e

    .line 61
    goto :goto_62

    .line 59
    :catch_5e
    move-exception v0

    .line 60
    move-object v0, v1

    goto :goto_62

    .line 36
    :cond_61
    move-object v0, v1

    .line 64
    :goto_62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/b;->h()Z

    move-result v2

    if-eqz v2, :cond_76

    if-eqz v0, :cond_76

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(JZZ)Z

    move-result v2

    if-nez v2, :cond_75

    goto :goto_76

    .line 67
    :cond_75
    return-object v0

    .line 65
    :cond_76
    :goto_76
    return-object v1

    .line 34
    :cond_77
    :goto_77
    return-object v1
.end method

.method public bridge synthetic getAdViewHeight()I
    .registers 2

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getAdViewHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAdViewWidth()I
    .registers 2

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getAdViewWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;
    .registers 2

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVideoDuration()D
    .registers 3

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getVideoDuration()D

    move-result-wide v0

    return-wide v0
.end method

.method public setCanInterruptVideoPlay(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->n:Z

    .line 74
    return-void
.end method

.method public setDrawVideoListener(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->q:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    .line 110
    return-void
.end method

.method public setPauseIcon(Landroid/graphics/Bitmap;I)V
    .registers 3

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->o:Landroid/graphics/Bitmap;

    .line 79
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->p:I

    .line 80
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/a/b;->i()V

    .line 81
    return-void
.end method

.method public bridge synthetic setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
    .registers 2

    .line 22
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    return-void
.end method
