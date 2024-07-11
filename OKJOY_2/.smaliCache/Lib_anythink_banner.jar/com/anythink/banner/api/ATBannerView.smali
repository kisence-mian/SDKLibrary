.class public Lcom/anythink/banner/api/ATBannerView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/banner/api/ATBannerView$a;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field hasCallbackShow:Z

.field hasTouchWindow:Z

.field private mAdLoadManager:Lcom/anythink/banner/a/a;

.field mCountDownTimer:Landroid/os/CountDownTimer;

.field mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field private mInnerBannerListener:Lcom/anythink/banner/a/d;

.field mIsRefresh:Z

.field private mListener:Lcom/anythink/banner/api/ATBannerListener;

.field private mPlacementId:Ljava/lang/String;

.field mRefreshRunnable:Ljava/lang/Runnable;

.field mRefreshStatus:Lcom/anythink/banner/api/ATBannerView$a;

.field visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 243
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const-class p1, Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    .line 62
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 63
    iput p1, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    .line 65
    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 69
    sget-object v0, Lcom/anythink/banner/api/ATBannerView$a;->NORMAL:Lcom/anythink/banner/api/ATBannerView$a;

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshStatus:Lcom/anythink/banner/api/ATBannerView$a;

    .line 72
    new-instance v0, Lcom/anythink/banner/api/ATBannerView$1;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView$1;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView$2;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    .line 283
    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 247
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-class p1, Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    .line 62
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 63
    iput p1, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    .line 65
    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 69
    sget-object p2, Lcom/anythink/banner/api/ATBannerView$a;->NORMAL:Lcom/anythink/banner/api/ATBannerView$a;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshStatus:Lcom/anythink/banner/api/ATBannerView$a;

    .line 72
    new-instance p2, Lcom/anythink/banner/api/ATBannerView$1;

    invoke-direct {p2, p0}, Lcom/anythink/banner/api/ATBannerView$1;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance p2, Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {p2, p0}, Lcom/anythink/banner/api/ATBannerView$2;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    .line 283
    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 251
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-class p1, Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    .line 62
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 63
    iput p1, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    .line 65
    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 69
    sget-object p2, Lcom/anythink/banner/api/ATBannerView$a;->NORMAL:Lcom/anythink/banner/api/ATBannerView$a;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshStatus:Lcom/anythink/banner/api/ATBannerView$a;

    .line 72
    new-instance p2, Lcom/anythink/banner/api/ATBannerView$1;

    invoke-direct {p2, p0}, Lcom/anythink/banner/api/ATBannerView$1;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance p2, Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {p2, p0}, Lcom/anythink/banner/api/ATBannerView$2;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    .line 283
    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/banner/api/ATBannerView;Z)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->loadAd(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    return-object p0
.end method

.method static synthetic access$200(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/anythink/banner/api/ATBannerView;)Z
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->isInView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/d;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    return-object p0
.end method

.method static synthetic access$600(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/common/d/b;Z)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/banner/api/ATBannerView;->notifyBannerShow(Landroid/content/Context;Lcom/anythink/core/common/d/b;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/anythink/banner/api/ATBannerView;Ljava/lang/Runnable;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/banner/api/ATBannerView;->notifyBannerImpression(Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V

    return-void
.end method

.method private controlShow(I)V
    .registers 9

    .line 359
    iput p1, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    .line 360
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-nez v0, :cond_7

    .line 361
    return-void

    .line 364
    :cond_7
    monitor-enter v0

    .line 366
    if-nez p1, :cond_d2

    :try_start_a
    iget-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz p1, :cond_d2

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_16

    goto/16 :goto_d2

    .line 371
    :cond_16
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/d/b;

    move-result-object p1

    .line 373
    const/4 v1, 0x0

    .line 374
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v2, :cond_35

    .line 375
    invoke-virtual {p1}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    check-cast v1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    .line 379
    :cond_35
    if-nez v1, :cond_3b

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v2, :cond_51

    .line 381
    :cond_3b
    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Lcom/anythink/banner/a/a;->d()Z

    move-result v2

    if-nez v2, :cond_51

    .line 382
    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v3, "first add in window to countDown refresh!"

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V

    .line 387
    :cond_51
    iget-boolean v2, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    if-nez v2, :cond_d9

    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->isInView()Z

    move-result v2

    if-eqz v2, :cond_d9

    if-eqz v1, :cond_d9

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d9

    .line 389
    invoke-virtual {p1}, Lcom/anythink/core/common/d/b;->e()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/anythink/core/common/d/b;->a(I)V

    .line 392
    invoke-virtual {v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v2

    .line 393
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_8c

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, p0, :cond_8c

    .line 394
    iget-object v4, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v5, "Banner View already add in other parent!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 398
    :cond_8c
    iput-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    .line 401
    new-instance v4, Lcom/anythink/banner/a/b;

    iget-object v5, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    iget-boolean v6, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    invoke-direct {v4, v5, v1, v6}, Lcom/anythink/banner/a/b;-><init>(Lcom/anythink/banner/a/d;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    invoke-virtual {v1, v4}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->setAdEventListener(Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;)V

    .line 403
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v4, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    invoke-direct {p0, v1, p1, v4}, Lcom/anythink/banner/api/ATBannerView;->notifyBannerShow(Landroid/content/Context;Lcom/anythink/core/common/d/b;Z)V

    .line 405
    invoke-virtual {p0, v2}, Lcom/anythink/banner/api/ATBannerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 406
    if-gez v1, :cond_c1

    .line 407
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->removeAllViews()V

    .line 408
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 409
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 410
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    invoke-virtual {p0, v2, v1}, Lcom/anythink/banner/api/ATBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    goto :goto_ca

    .line 413
    :cond_c1
    sub-int/2addr v1, v3

    :goto_c2
    if-ltz v1, :cond_ca

    .line 414
    invoke-virtual {p0, v1}, Lcom/anythink/banner/api/ATBannerView;->removeViewAt(I)V

    .line 413
    add-int/lit8 v1, v1, -0x1

    goto :goto_c2

    .line 419
    :cond_ca
    :goto_ca
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    invoke-virtual {v1, p1}, Lcom/anythink/banner/a/a;->a(Lcom/anythink/core/common/d/b;)V

    .line 421
    iput-boolean v3, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    goto :goto_d9

    .line 368
    :cond_d2
    :goto_d2
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v1, "no in window to stop refresh!"

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_d9
    :goto_d9
    monitor-exit v0

    return-void

    :catchall_db
    move-exception p1

    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_a .. :try_end_dd} :catchall_db

    throw p1
.end method

.method private isInView()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    if-nez v0, :cond_a

    .line 449
    const/4 v0, 0x1

    return v0

    .line 451
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private loadAd(Z)V
    .registers 5

    .line 287
    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    .line 288
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_12

    .line 289
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v1, "start to load to stop countdown refresh!"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->stopAutoRefresh(Ljava/lang/Runnable;)V

    .line 293
    :cond_12
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_20

    .line 294
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/anythink/banner/a/a;->a(Landroid/content/Context;Lcom/anythink/banner/api/ATBannerView;ZLcom/anythink/banner/a/d;)V

    return-void

    .line 296
    :cond_20
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;

    const-string v1, "3001"

    const-string v2, ""

    invoke-static {v1, v2, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/anythink/banner/a/d;->onBannerFailed(ZLcom/anythink/core/api/AdError;)V

    .line 298
    return-void
.end method

.method private notifyBannerImpression(Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V
    .registers 12

    .line 512
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v2

    .line 513
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v6

    new-instance v7, Lcom/anythink/banner/api/ATBannerView$4;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/banner/api/ATBannerView$4;-><init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/d/d;Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 536
    return-void
.end method

.method private notifyBannerShow(Landroid/content/Context;Lcom/anythink/core/common/d/b;Z)V
    .registers 15

    .line 477
    invoke-virtual {p2}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v7

    .line 478
    invoke-virtual {v7}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    nop

    .line 1389
    iput-object v0, v2, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 486
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 487
    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/anythink/core/common/g/g;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/d/d;->d(Ljava/lang/String;)V

    .line 490
    :cond_36
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v9

    new-instance v10, Lcom/anythink/banner/api/ATBannerView$3;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/anythink/banner/api/ATBannerView$3;-><init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/d/d;Landroid/content/Context;JLcom/anythink/core/common/d/b;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V

    invoke-virtual {v9, v10}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method private startAutoRefresh(Ljava/lang/Runnable;)V
    .registers 7

    .line 455
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshStatus:Lcom/anythink/banner/api/ATBannerView$a;

    sget-object v1, Lcom/anythink/banner/api/ATBannerView$a;->NORMAL:Lcom/anythink/banner/api/ATBannerView$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_33

    .line 456
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->stopAutoRefresh(Ljava/lang/Runnable;)V

    .line 457
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->w()I

    move-result v1

    if-ne v1, v2, :cond_33

    .line 459
    sget-object v1, Lcom/anythink/banner/api/ATBannerView$a;->COUNTDOWN_ING:Lcom/anythink/banner/api/ATBannerView$a;

    iput-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshStatus:Lcom/anythink/banner/api/ATBannerView$a;

    .line 460
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->x()J

    move-result-wide v3

    invoke-virtual {v1, p1, v3, v4}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;J)V

    .line 464
    :cond_33
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshStatus:Lcom/anythink/banner/api/ATBannerView$a;

    sget-object v0, Lcom/anythink/banner/api/ATBannerView$a;->COUNTDOWN_FINISH:Lcom/anythink/banner/api/ATBannerView$a;

    if-ne p1, v0, :cond_3c

    .line 465
    invoke-direct {p0, v2}, Lcom/anythink/banner/api/ATBannerView;->loadAd(Z)V

    .line 468
    :cond_3c
    return-void
.end method

.method private stopAutoRefresh(Ljava/lang/Runnable;)V
    .registers 3

    .line 471
    sget-object v0, Lcom/anythink/banner/api/ATBannerView$a;->NORMAL:Lcom/anythink/banner/api/ATBannerView$a;

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshStatus:Lcom/anythink/banner/api/ATBannerView$a;

    .line 472
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method


# virtual methods
.method public checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .registers 7

    .line 301
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_52

    .line 302
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 303
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_52

    .line 308
    :cond_29
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-nez v0, :cond_3a

    .line 309
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v3, "Placement Id is empty!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0

    .line 313
    :cond_3a
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/banner/a/a;->c(Landroid/content/Context;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->i:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-object v0

    .line 304
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v3, "SDK init error!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0
.end method

.method public destroy()V
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_7

    .line 325
    invoke-virtual {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->destory()V

    .line 331
    :cond_7
    return-void
.end method

.method public loadAd()V
    .registers 6

    .line 278
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->i:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->loadAd(Z)V

    .line 280
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 335
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 337
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 341
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 344
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 431
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 433
    iget v0, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    if-nez p1, :cond_14

    goto :goto_2b

    .line 440
    :cond_14
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Lcom/anythink/banner/a/a;->d()Z

    move-result p1

    if-nez p1, :cond_37

    .line 441
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v0, "onWindowFocusChanged first add in window to countDown refresh!"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V

    goto :goto_37

    .line 434
    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz p1, :cond_37

    .line 435
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v0, "onWindowFocusChanged no in window to stop refresh!"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 445
    :cond_37
    :goto_37
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 354
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 355
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->controlShow(I)V

    .line 356
    return-void
.end method

.method public setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;

    .line 321
    return-void
.end method

.method public setLocalExtra(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 271
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v0, "You must set unit Id first."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 274
    :cond_10
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 275
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .registers 3

    .line 260
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/anythink/banner/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/banner/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    .line 261
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    invoke-virtual {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->setPlacementId(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 349
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->controlShow(I)V

    .line 350
    return-void
.end method
