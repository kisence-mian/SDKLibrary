.class Lcom/bytedance/sdk/openadsdk/component/a/c;
.super Lcom/bytedance/sdk/openadsdk/core/e/a;
.source "TTFeedAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;
.implements Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

.field b:Z

.field c:Z

.field d:I

.field e:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field f:I

.field private m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/e/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    .line 39
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->f:I

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->d:I

    .line 42
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->d:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(I)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/e/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    .line 48
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->f:I

    .line 49
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 50
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->d:I

    .line 52
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->d:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(I)V

    .line 53
    return-void
.end method

.method private a(I)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->c(I)I

    move-result v0

    .line 107
    const/4 v1, 0x3

    if-ne v1, v0, :cond_12

    .line 108
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 109
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    .line 121
    :cond_11
    :goto_11
    return-void

    .line 110
    :cond_12
    if-ne v3, v0, :cond_21

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 111
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 112
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    goto :goto_11

    .line 113
    :cond_21
    const/4 v1, 0x2

    if-ne v1, v0, :cond_39

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 115
    :cond_34
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 116
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    goto :goto_11

    .line 118
    :cond_39
    const/4 v1, 0x4

    if-ne v1, v0, :cond_11

    .line 119
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    goto :goto_11
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    return-object v0
.end method

.method public a(II)V
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoError(II)V

    .line 148
    :cond_9
    return-void
.end method

.method public a(JJ)V
    .registers 6

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onProgressUpdate(JJ)V

    .line 185
    :cond_9
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_9

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 178
    :cond_9
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 168
    :cond_9
    return-void
.end method

.method public d_()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_9

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 192
    :cond_9
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 158
    :cond_9
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 141
    :cond_9
    return-void
.end method

.method g()Z
    .registers 4

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getImageMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getImageMode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_11

    .line 93
    :cond_10
    const/4 v0, 0x1

    .line 95
    :cond_11
    return v0
.end method

.method public getAdView()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 87
    :cond_9
    :goto_9
    return-object v1

    .line 59
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 61
    :try_start_10
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 62
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/a/c$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/c;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    .line 72
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdLoadListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V

    .line 73
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;)V

    .line 74
    const/4 v2, 0x5

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->f:I

    if-ne v2, v3, :cond_5d

    .line 75
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    move-result v2

    :goto_36
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 79
    :goto_39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->d:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_46} :catch_63

    .line 84
    :goto_46
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->g()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(JZZ)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v1, v0

    .line 87
    goto :goto_9

    .line 75
    :cond_5a
    :try_start_5a
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    goto :goto_36

    .line 77
    :cond_5d
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_62} :catch_63

    goto :goto_39

    .line 80
    :catch_63
    move-exception v0

    move-object v0, v1

    .line 81
    goto :goto_46

    :cond_66
    move-object v0, v1

    goto :goto_46
.end method

.method public getVideoDuration()D
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d()D

    move-result-wide v0

    .line 133
    :goto_16
    return-wide v0

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_16
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    .line 126
    return-void
.end method
