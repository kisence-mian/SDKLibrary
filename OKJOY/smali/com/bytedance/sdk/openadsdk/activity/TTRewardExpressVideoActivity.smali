.class public Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;
.source "TTRewardExpressVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;


# instance fields
.field aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

.field aG:Landroid/widget/FrameLayout;

.field aH:J

.field aI:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field aJ:Ljava/lang/String;

.field aK:Landroid/os/Handler;

.field aL:Z

.field aM:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;-><init>()V

    .line 53
    const-string v0, "rewarded_video"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aJ:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aL:Z

    .line 56
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aM:Z

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .prologue
    .line 532
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 533
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 534
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_13

    .line 535
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    .line 538
    :goto_12
    return-object v0

    .line 532
    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 538
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 526
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aJ:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    .line 528
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private f(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_19

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowCountDown(Z)V

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    .line 110
    :cond_19
    if-eqz p1, :cond_26

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ar:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 117
    :goto_25
    return-void

    .line 114
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ar:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    goto :goto_25
.end method


# virtual methods
.method protected I()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_8

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->finish()V

    .line 67
    :goto_7
    return-void

    .line 64
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->az:Z

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)V

    .line 66
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->I()V

    goto :goto_7
.end method

.method public J()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a()V

    .line 278
    :cond_9
    return-void
.end method

.method public K()J
    .registers 5

    .prologue
    .line 338
    const-string v0, "TTRewardExpressVideoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCurrentPlayTime mVideoCurrent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aH:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aH:J

    return-wide v0
.end method

.method public L()I
    .registers 3

    .prologue
    const/4 v0, 0x3

    .line 344
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aL:Z

    if-eqz v1, :cond_7

    .line 345
    const/4 v0, 0x4

    .line 360
    :cond_6
    :goto_6
    return v0

    .line 347
    :cond_7
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aM:Z

    if-eqz v1, :cond_d

    .line 348
    const/4 v0, 0x5

    goto :goto_6

    .line 350
    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->t()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 351
    const/4 v0, 0x1

    goto :goto_6

    .line 353
    :cond_15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->r()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 354
    const/4 v0, 0x2

    goto :goto_6

    .line 356
    :cond_1d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->s()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6
.end method

.method public M()V
    .registers 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->H()V

    .line 366
    return-void
.end method

.method public N()V
    .registers 2

    .prologue
    .line 379
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->N()V

    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    if-eqz v0, :cond_c

    .line 381
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->g()V

    .line 383
    :cond_c
    return-void
.end method

.method protected a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 10
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 433
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_7

    .line 522
    :cond_6
    :goto_6
    return-void

    .line 436
    :cond_7
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 437
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_2f

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 439
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2f

    .line 440
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 443
    :cond_2f
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 444
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    .line 445
    if-nez v0, :cond_c4

    .line 446
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 447
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    move-object v6, v0

    .line 450
    :goto_43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_4c

    .line 451
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0, v6}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 454
    :cond_4c
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;)V

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 490
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$4;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aJ:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 497
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 498
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 499
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 500
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 501
    const-string v2, "rit_scene"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ac:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Ljava/util/Map;)V

    .line 504
    :cond_84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 506
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$5;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aJ:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 513
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 514
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 515
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 516
    const-string v2, "rit_scene"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ac:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Ljava/util/Map;)V

    .line 519
    :cond_b4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 520
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    .line 521
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    goto/16 :goto_6

    :cond_c4
    move-object v6, v0

    goto/16 :goto_43
.end method

.method public a(JZ)Z
    .registers 17

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aG:Landroid/widget/FrameLayout;

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v0, :cond_1c

    .line 123
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/f;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aG:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 125
    :cond_1c
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 126
    const-string v2, "dynamic_show_type"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->m()Z

    move-result v0

    if-eqz v0, :cond_a0

    move v0, v1

    :goto_2c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 128
    const-string v0, "rit_scene"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ac:Ljava/lang/String;

    invoke-interface {v11, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/util/Map;)V

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;)V

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_63
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->v:Ljava/lang/String;

    if-eqz v2, :cond_82

    .line 241
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->v:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_82

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->v:Ljava/lang/String;

    .line 244
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->x:Z

    :cond_82
    move-object v2, v0

    .line 247
    const-string v0, "wzj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoUrl:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v0, :cond_a4

    .line 258
    :cond_9f
    :goto_9f
    return v3

    :cond_a0
    move v0, v3

    .line 126
    goto :goto_2c

    :cond_a2
    move-object v0, v6

    .line 239
    goto :goto_63

    .line 251
    :cond_a4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aG:Landroid/widget/FrameLayout;

    .line 252
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v7

    iget-boolean v10, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->M:Z

    move-wide v8, p1

    .line 251
    invoke-interface/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v3

    .line 253
    if-eqz v3, :cond_9f

    if-nez p3, :cond_9f

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "rewarded_video"

    invoke-static {v0, v1, v2, v11}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    .line 255
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->N()V

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aN:I

    goto :goto_9f
.end method

.method protected b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 263
    return-void
.end method

.method protected d()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    .line 71
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d()V

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v5

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_8f

    move v0, v1

    .line 74
    :goto_1b
    invoke-virtual {p0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Landroid/app/Activity;)F

    move-result v4

    .line 75
    invoke-virtual {p0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b(Landroid/app/Activity;)F

    move-result v3

    .line 76
    cmpl-float v6, v4, v3

    if-lez v6, :cond_28

    move v2, v1

    :cond_28
    if-eq v0, v2, :cond_94

    .line 77
    add-float/2addr v4, v3

    .line 78
    sub-float v2, v4, v3

    .line 79
    sub-float v3, v4, v2

    .line 81
    :goto_2f
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 82
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->i(Landroid/content/Context;)F

    move-result v4

    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/content/Context;F)I

    move-result v4

    .line 83
    if-eqz v0, :cond_91

    .line 84
    int-to-float v0, v4

    sub-float/2addr v3, v0

    .line 89
    :cond_41
    :goto_41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 90
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 92
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aJ:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setExpressVideoListenerProxy(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;)V

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aG:Landroid/widget/FrameLayout;

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->m:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d(Z)V

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->h()V

    .line 100
    return-void

    :cond_8f
    move v0, v2

    .line 73
    goto :goto_1b

    .line 86
    :cond_91
    int-to-float v0, v4

    sub-float/2addr v2, v0

    goto :goto_41

    :cond_94
    move v2, v3

    move v3, v4

    goto :goto_2f
.end method

.method public d(I)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 294
    packed-switch p1, :pswitch_data_8a

    .line 334
    :cond_6
    :goto_6
    return-void

    .line 296
    :pswitch_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->r()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->s()Z

    move-result v0

    if-nez v0, :cond_6

    .line 299
    invoke-virtual {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(JZ)Z

    goto :goto_6

    .line 303
    :pswitch_17
    :try_start_17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_22} :catch_23

    goto :goto_6

    .line 306
    :catch_23
    move-exception v0

    .line 307
    const-string v1, "TTRewardExpressVideoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause throw Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 312
    :pswitch_41
    :try_start_41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 313
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->j()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4c} :catch_4d

    goto :goto_6

    .line 315
    :catch_4d
    move-exception v0

    .line 316
    const-string v1, "TTRewardExpressVideoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause throw Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 320
    :pswitch_6b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_6

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->k()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    goto :goto_6

    .line 326
    :pswitch_78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->r()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->s()Z

    move-result v0

    if-nez v0, :cond_6

    .line 329
    invoke-virtual {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(JZ)Z

    goto/16 :goto_6

    .line 294
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_17
        :pswitch_41
        :pswitch_6b
        :pswitch_78
    .end packed-switch
.end method

.method public e(Z)V
    .registers 3

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->M:Z

    if-eq v0, p1, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_d

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->b()V

    .line 271
    :cond_d
    return-void
.end method

.method public onAdClicked(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 371
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 375
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 423
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->onDestroy()V

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aK:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 425
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aK:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 427
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    if-eqz v0, :cond_16

    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->k()V

    .line 430
    :cond_16
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->az:Z

    .line 388
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->f()V

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aK:Landroid/os/Handler;

    if-nez v0, :cond_15

    .line 390
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aK:Landroid/os/Handler;

    .line 392
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aK:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 403
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 419
    :cond_12
    :goto_12
    return-void

    .line 406
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->m()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 407
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->f(Z)V

    .line 409
    :cond_1e
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d(Z)V

    .line 410
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->az:Z

    .line 411
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->f()V

    .line 412
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->u:J

    invoke-virtual {p0, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(JZ)Z

    move-result v0

    .line 413
    if-nez v0, :cond_12

    .line 414
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->q()V

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 416
    const-string v1, "vbtt_skip_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aJ:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_12
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 282
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->onResume()V

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->m()Z

    move-result v0

    if-nez v0, :cond_f

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->f(Z)V

    .line 286
    :cond_f
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/app/Activity;)V

    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    if-eqz v0, :cond_1b

    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->i()V

    .line 290
    :cond_1b
    return-void
.end method
