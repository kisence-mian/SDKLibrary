.class public Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;
.source "TTRewardExpressVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;


# instance fields
.field aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

.field aU:Landroid/widget/FrameLayout;

.field aV:J

.field aW:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field aX:Ljava/lang/String;

.field aY:Landroid/os/Handler;

.field aZ:Z

.field ba:Z

.field private bf:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;-><init>()V

    .line 56
    const-string v0, "rewarded_video"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aX:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aZ:Z

    .line 59
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->ba:Z

    .line 60
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->bf:Z

    return-void
.end method

.method private Z()V
    .registers 3

    .line 97
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->bf:Z

    if-eqz v0, :cond_5

    .line 98
    return-void

    .line 100
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->bf:Z

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .line 668
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 669
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 670
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_12

    .line 671
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    .line 668
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 674
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .line 604
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 605
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aX:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    return-object p1

    .line 607
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;[F)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a([F)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .registers 4

    .line 611
    if-eqz p1, :cond_1d

    if-nez p2, :cond_5

    goto :goto_1d

    .line 614
    :cond_5
    nop

    .line 615
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p2, :cond_11

    .line 616
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p2

    goto :goto_13

    .line 615
    :cond_11
    const-string p2, ""

    .line 618
    :goto_13
    nop

    .line 619
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$7;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 665
    return-void

    .line 612
    :cond_1d
    :goto_1d
    return-void
.end method

.method private a([F)V
    .registers 6

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    .line 126
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 127
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    .line 128
    invoke-virtual {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 129
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aX:Ljava/lang/String;

    invoke-direct {v0, p0, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    .line 130
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setExpressVideoListenerProxy(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;)V

    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 132
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aU:Landroid/widget/FrameLayout;

    .line 134
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->o:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->h()V

    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->m()Z

    move-result p1

    if-nez p1, :cond_64

    .line 137
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->g(Z)V

    .line 139
    :cond_64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->i()V

    .line 140
    return-void
.end method

.method private g(Z)V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_53

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aD()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    goto :goto_53

    .line 151
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    goto :goto_53

    .line 155
    :cond_2e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_53

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aD()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    goto :goto_53

    .line 161
    :cond_4e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    .line 166
    :cond_53
    :goto_53
    if-eqz p1, :cond_60

    .line 167
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 168
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aw:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    goto :goto_6d

    .line 170
    :cond_60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 171
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aw:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 173
    :goto_6d
    return-void
.end method


# virtual methods
.method protected P()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_8

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->finish()V

    .line 66
    return-void

    .line 68
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aG:Z

    .line 70
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->P()V

    .line 71
    return-void
.end method

.method public Q()V
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_9

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a()V

    .line 353
    :cond_9
    return-void
.end method

.method public R()J
    .registers 4

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetCurrentPlayTime mVideoCurrent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aV:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTRewardExpressVideoActivity"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aV:J

    return-wide v0
.end method

.method public S()I
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aZ:Z

    if-eqz v0, :cond_6

    .line 422
    const/4 v0, 0x4

    return v0

    .line 424
    :cond_6
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->ba:Z

    if-eqz v0, :cond_c

    .line 425
    const/4 v0, 0x5

    return v0

    .line 427
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->x()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 428
    const/4 v0, 0x1

    return v0

    .line 430
    :cond_14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->v()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 431
    const/4 v0, 0x2

    return v0

    .line 433
    :cond_1c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->w()Z

    .line 434
    const/4 v0, 0x3

    return v0
.end method

.method public T()V
    .registers 1

    .line 442
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->M()V

    .line 443
    return-void
.end method

.method public U()V
    .registers 2

    .line 456
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->U()V

    .line 457
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    if-eqz v0, :cond_a

    .line 458
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->g()V

    .line 460
    :cond_a
    return-void
.end method

.method protected a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 13

    .line 511
    if-eqz p1, :cond_c0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_8

    goto/16 :goto_c0

    .line 514
    :cond_8
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aW:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 515
    if-eqz v0, :cond_2c

    .line 516
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 517
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2c

    .line 518
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aW:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 521
    :cond_2c
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 522
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    .line 523
    if-nez v0, :cond_3f

    .line 524
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 525
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 528
    :cond_3f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aW:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_46

    .line 529
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 532
    :cond_46
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 568
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$5;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->e:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aX:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v7

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 575
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 576
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aW:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 577
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->af:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "rit_scene"

    if-nez v2, :cond_7d

    .line 578
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 579
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->af:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Ljava/util/Map;)V

    .line 582
    :cond_7d
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 584
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$6;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->e:Landroid/content/Context;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aX:Ljava/lang/String;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v9

    move-object v4, v1

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 591
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 592
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->af:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_aa

    .line 593
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 594
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->af:Ljava/lang/String;

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Ljava/util/Map;)V

    .line 597
    :cond_aa
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aW:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 598
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    .line 599
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 600
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aW:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    .line 601
    return-void

    .line 512
    :cond_c0
    :goto_c0
    return-void
.end method

.method public a(JZ)Z
    .registers 20

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aU:Landroid/widget/FrameLayout;

    .line 178
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v1, :cond_1b

    .line 179
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/f;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aU:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 181
    :cond_1b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 182
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->m()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dynamic_show_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->af:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 184
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->af:Ljava/lang/String;

    const-string v3, "rit_scene"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_3e
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/util/Map;)V

    .line 187
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 309
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_61

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v2

    goto :goto_62

    :cond_61
    move-object v2, v3

    .line 310
    :goto_62
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->x:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_84

    .line 311
    new-instance v4, Ljava/io/File;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->x:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_84

    .line 313
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->x:Ljava/lang/String;

    .line 314
    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->z:Z

    move-object v7, v2

    goto :goto_85

    .line 317
    :cond_84
    move-object v7, v2

    :goto_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoUrl:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "wzj"

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v2, :cond_a3

    const/4 v1, 0x0

    return v1

    .line 321
    :cond_a3
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 322
    const/16 v4, 0x12c

    iput v4, v2, Landroid/os/Message;->what:I

    .line 323
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 324
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aU:Landroid/widget/FrameLayout;

    .line 326
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aU:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v12

    iget-boolean v15, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->P:Z

    .line 325
    move-wide/from16 v13, p1

    invoke-interface/range {v6 .. v15}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v2

    .line 327
    if-eqz v2, :cond_110

    if-nez p3, :cond_110

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pangolin ad show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v5, v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdEvent"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->e:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v5, "rewarded_video"

    invoke-static {v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->U()V

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->bb:I

    .line 333
    :cond_110
    return v2
.end method

.method protected b(Ljava/lang/String;)V
    .registers 2

    .line 338
    return-void
.end method

.method public d(I)V
    .registers 6

    .line 366
    const-string v0, "TTRewardExpressVideoActivity"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_9a

    goto/16 :goto_99

    .line 403
    :pswitch_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->v()Z

    move-result p1

    if-nez p1, :cond_1c

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->w()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_1c

    .line 406
    :cond_17
    invoke-virtual {p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(JZ)Z

    .line 407
    goto/16 :goto_99

    .line 404
    :cond_1c
    :goto_1c
    return-void

    .line 397
    :pswitch_1d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_99

    .line 398
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->l()V

    .line 399
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    goto/16 :goto_99

    .line 385
    :pswitch_2b
    :try_start_2b
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aM:Z

    .line 386
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aN:Z

    if-eqz p1, :cond_34

    .line 387
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->O()V

    .line 389
    :cond_34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->w()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 390
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->k()V
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_40

    .line 394
    :cond_3f
    goto :goto_99

    .line 392
    :catchall_40
    move-exception p1

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinue throw Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    goto :goto_99

    .line 375
    :pswitch_5c
    :try_start_5c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->v()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 376
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aM:Z

    .line 377
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_6b

    .line 381
    :cond_6a
    goto :goto_99

    .line 379
    :catchall_6b
    move-exception p1

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause throw Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    goto :goto_99

    .line 368
    :pswitch_87
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->v()Z

    move-result p1

    if-nez p1, :cond_98

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->w()Z

    move-result p1

    if-eqz p1, :cond_94

    goto :goto_98

    .line 371
    :cond_94
    invoke-virtual {p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(JZ)Z

    .line 372
    goto :goto_99

    .line 369
    :cond_98
    :goto_98
    return-void

    .line 411
    :cond_99
    :goto_99
    return-void

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_87
        :pswitch_5c
        :pswitch_2b
        :pswitch_1d
        :pswitch_a
    .end packed-switch
.end method

.method protected f()V
    .registers 3

    .line 75
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->f()V

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aY:Landroid/os/Handler;

    if-nez v0, :cond_12

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aY:Landroid/os/Handler;

    .line 79
    :cond_12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->n()V

    .line 80
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->P:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->m()V

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->t()V

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->l()V

    .line 84
    const-string v0, "reward_endcard"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->q()V

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    .line 87
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aG:Z

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->T:I

    .line 89
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->i()V

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->u()V

    .line 91
    return-void

    .line 93
    :cond_49
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->d(Z)V

    .line 94
    return-void
.end method

.method public f(Z)V
    .registers 3

    .line 343
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->P:Z

    if-eq v0, p1, :cond_d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_d

    .line 344
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->b()V

    .line 346
    :cond_d
    return-void
.end method

.method public onAdClicked(Landroid/view/View;I)V
    .registers 3

    .line 448
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 452
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    if-eqz v0, :cond_7

    .line 502
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->k()V

    .line 504
    :cond_7
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->onDestroy()V

    .line 505
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aY:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 508
    :cond_12
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    .line 464
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aG:Z

    .line 465
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->i()V

    .line 466
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aY:Landroid/os/Handler;

    if-nez p1, :cond_15

    .line 467
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aY:Landroid/os/Handler;

    .line 469
    :cond_15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aY:Landroid/os/Handler;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 6

    .line 480
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_12

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 481
    return-void

    .line 483
    :cond_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->m()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 484
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->g(Z)V

    .line 486
    :cond_1d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->d(Z)V

    .line 487
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aG:Z

    .line 488
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->i()V

    .line 489
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->w:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(JZ)Z

    move-result p1

    .line 490
    if-nez p1, :cond_44

    .line 491
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->u()V

    .line 492
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 493
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "vbtt_skip_type"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aX:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 496
    :cond_44
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 357
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->onResume()V

    .line 358
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->Z()V

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    if-eqz v0, :cond_d

    .line 360
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->i()V

    .line 362
    :cond_d
    return-void
.end method
