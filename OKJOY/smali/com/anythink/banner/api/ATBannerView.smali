.class public Lcom/anythink/banner/api/ATBannerView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final TAG:Ljava/lang/String;

.field hasCallbackShow:Z

.field hasTouchWindow:Z

.field private mAdLoadManager:Lcom/anythink/banner/a/a;

.field mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field private mInnerBannerListener:Lcom/anythink/banner/a/c;

.field mIsRefresh:Z

.field private mListener:Lcom/anythink/banner/api/ATBannerListener;

.field mRefreshRunnable:Ljava/lang/Runnable;

.field private mUnitId:Ljava/lang/String;

.field visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const-class v0, Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 37
    iput v1, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    .line 39
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 43
    new-instance v0, Lcom/anythink/banner/api/ATBannerView$1;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView$1;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView$2;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/c;

    .line 219
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-class v0, Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 37
    iput v1, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    .line 39
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 43
    new-instance v0, Lcom/anythink/banner/api/ATBannerView$1;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView$1;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView$2;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/c;

    .line 219
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-class v0, Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 37
    iput v1, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    .line 39
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 43
    new-instance v0, Lcom/anythink/banner/api/ATBannerView$1;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView$1;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView$2;-><init>(Lcom/anythink/banner/api/ATBannerView;)V

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/c;

    .line 219
    iput-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/banner/api/ATBannerView;Z)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->loadAd(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mUnitId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/anythink/banner/api/ATBannerView;)Z
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->isInView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/anythink/banner/api/ATBannerView;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V

    return-void
.end method

.method private controlShow(I)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 276
    iput p1, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    .line 277
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-nez v1, :cond_8

    .line 344
    :goto_7
    return-void

    .line 281
    :cond_8
    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    monitor-enter v2

    .line 282
    :try_start_b
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/banner/api/ATBannerView;->mUnitId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/anythink/core/b/c/a;

    move-result-object v3

    .line 285
    if-eqz v3, :cond_ff

    invoke-virtual {v3}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v1, :cond_ff

    .line 286
    invoke-virtual {v3}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    move-object v1, v0

    .line 290
    :goto_2b
    if-nez v1, :cond_31

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_4d

    .line 292
    :cond_31
    if-nez p1, :cond_3d

    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_cf

    .line 293
    :cond_3d
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_4d

    .line 294
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v4, "no in window to stop refresh!"

    invoke-static {v0, v4}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->stopAutoRefresh(Ljava/lang/Runnable;)V

    .line 307
    :cond_4d
    :goto_4d
    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    if-nez v0, :cond_c9

    invoke-direct {p0}, Lcom/anythink/banner/api/ATBannerView;->isInView()Z

    move-result v0

    if-eqz v0, :cond_c9

    if-eqz v1, :cond_c9

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c9

    .line 309
    invoke-virtual {v3}, Lcom/anythink/core/b/c/a;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Lcom/anythink/core/b/c/a;->a(I)V

    .line 311
    invoke-virtual {v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v4

    .line 312
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_88

    .line 313
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v5, "Banner View already add in other parent!"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 317
    :cond_88
    iput-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    .line 318
    invoke-virtual {p0, v4}, Lcom/anythink/banner/api/ATBannerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 319
    if-gez v0, :cond_e9

    .line 320
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->removeAllViews()V

    .line 321
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 322
    const/16 v5, 0x11

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 323
    invoke-virtual {p0, v4, v0}, Lcom/anythink/banner/api/ATBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    :cond_a1
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->notfiyShow(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V

    .line 332
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;

    if-eqz v0, :cond_c1

    .line 333
    if-eqz v1, :cond_f3

    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    if-eqz v0, :cond_f3

    .line 334
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerAutoRefreshed(Lcom/anythink/core/api/ATAdInfo;)V

    .line 340
    :cond_c1
    :goto_c1
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    invoke-virtual {v0, v3}, Lcom/anythink/banner/a/a;->a(Lcom/anythink/core/b/c/a;)V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 344
    :cond_c9
    monitor-exit v2

    goto/16 :goto_7

    :catchall_cc
    move-exception v0

    monitor-exit v2
    :try_end_ce
    .catchall {:try_start_b .. :try_end_ce} :catchall_cc

    throw v0

    .line 299
    :cond_cf
    :try_start_cf
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    invoke-virtual {v0}, Lcom/anythink/banner/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 300
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v4, "first add in window to countDown refresh!"

    invoke-static {v0, v4}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V

    goto/16 :goto_4d

    .line 325
    :cond_e9
    add-int/lit8 v0, v0, -0x1

    :goto_eb
    if-ltz v0, :cond_a1

    .line 326
    invoke-virtual {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->removeViewAt(I)V

    .line 325
    add-int/lit8 v0, v0, -0x1

    goto :goto_eb

    .line 336
    :cond_f3
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerShow(Lcom/anythink/core/api/ATAdInfo;)V
    :try_end_fe
    .catchall {:try_start_cf .. :try_end_fe} :catchall_cc

    goto :goto_c1

    :cond_ff
    move-object v1, v0

    goto/16 :goto_2b
.end method

.method private isInView()Z
    .registers 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    if-nez v0, :cond_a

    .line 369
    const/4 v0, 0x1

    .line 371
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private loadAd(Z)V
    .registers 6

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    .line 224
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_12

    .line 225
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v1, "start to load to stop countdown refresh!"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->stopAutoRefresh(Ljava/lang/Runnable;)V

    .line 229
    :cond_12
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_1e

    .line 230
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/c;

    invoke-virtual {v0, p0, p1, v1}, Lcom/anythink/banner/a/a;->a(Lcom/anythink/banner/api/ATBannerView;ZLcom/anythink/banner/a/c;)V

    .line 234
    :goto_1d
    return-void

    .line 232
    :cond_1e
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/c;

    const-string v1, "3001"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/anythink/banner/a/c;->onBannerFailed(ZLcom/anythink/core/api/AdError;)V

    goto :goto_1d
.end method

.method private startAutoRefresh(Ljava/lang/Runnable;)V
    .registers 6

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->stopAutoRefresh(Ljava/lang/Runnable;)V

    .line 376
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView;->mUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->q()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 378
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->r()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;J)V

    .line 380
    :cond_29
    return-void
.end method

.method private stopAutoRefresh(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 383
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method


# virtual methods
.method public clean()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->clean()V

    .line 248
    :cond_9
    return-void
.end method

.method public loadAd()V
    .registers 6

    .prologue
    .line 214
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mUnitId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->i:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->loadAd(Z)V

    .line 216
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 254
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    .line 260
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->stopAutoRefresh(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .prologue
    .line 351
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 353
    iget v0, p0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    if-nez p1, :cond_24

    .line 354
    :cond_13
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_23

    .line 355
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged no in window to stop refresh!"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->stopAutoRefresh(Ljava/lang/Runnable;)V

    .line 365
    :cond_23
    :goto_23
    return-void

    .line 360
    :cond_24
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    invoke-virtual {v0}, Lcom/anythink/banner/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_23

    .line 361
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged first add in window to countDown refresh!"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V

    goto :goto_23
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 272
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->controlShow(I)V

    .line 273
    return-void
.end method

.method public setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V
    .registers 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;

    .line 238
    return-void
.end method

.method public setCustomMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/anythink/banner/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/banner/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;

    .line 206
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView;->mUnitId:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 266
    invoke-direct {p0, p1}, Lcom/anythink/banner/api/ATBannerView;->controlShow(I)V

    .line 267
    return-void
.end method
