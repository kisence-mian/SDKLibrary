.class public Lcom/anythink/nativead/api/NativeAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;,
        Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;
    }
.end annotation


# instance fields
.field private hasSetShowTkDetail:Z

.field private mAdCacheInfo:Lcom/anythink/core/common/d/b;

.field private mAdRender:Lcom/anythink/nativead/api/ATNativeAdRenderer;

.field protected mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

.field private mContext:Landroid/content/Context;

.field private mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

.field public mDownLoadProgressListener:Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;

.field private mIsDestroyed:Z

.field private mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

.field mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

.field private mPlacementId:Ljava/lang/String;

.field private mRecordedImpression:Z

.field private mRecordedShow:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/b;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mPlacementId:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/d/b;

    .line 63
    invoke-virtual {p3}, Lcom/anythink/core/common/d/b;->h()Lcom/anythink/core/api/BaseAd;

    move-result-object p1

    check-cast p1, Lcom/anythink/nativead/unitgroup/a;

    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    .line 64
    new-instance p2, Lcom/anythink/nativead/api/NativeAd$1;

    invoke-direct {p2, p0}, Lcom/anythink/nativead/api/NativeAd$1;-><init>(Lcom/anythink/nativead/api/NativeAd;)V

    invoke-virtual {p1, p2}, Lcom/anythink/nativead/unitgroup/a;->setNativeEventListener(Lcom/anythink/nativead/unitgroup/a$a;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/nativead/api/NativeAd;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/d/b;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/d/b;

    return-object p0
.end method

.method static synthetic access$200(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/d/d;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/NativeAd;->fillShowTrackingInfo(Lcom/anythink/core/common/d/d;)V

    return-void
.end method

.method static synthetic access$300(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/ATNativeEventListener;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    return-object p0
.end method

.method private declared-synchronized fillShowTrackingInfo(Lcom/anythink/core/common/d/d;)V
    .registers 6

    monitor-enter p0

    .line 242
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 245
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/anythink/core/common/g/g;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d/d;->d(Ljava/lang/String;)V

    .line 248
    :cond_20
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->hasSetShowTkDetail:Z

    if-nez v0, :cond_3b

    .line 249
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/nativead/api/NativeAd;->hasSetShowTkDetail:Z

    .line 251
    if-eqz p1, :cond_3b

    .line 252
    nop

    .line 1389
    iput-object v0, p1, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/n;->a(Landroid/content/Context;Lcom/anythink/core/common/d/d;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 258
    :cond_3b
    monitor-exit p0

    return-void

    .line 241
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private renderViewToWindow(Landroid/view/View;)V
    .registers 7

    .line 139
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->l:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->o:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 155
    if-eqz v0, :cond_1c

    .line 156
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    :cond_1c
    if-nez v0, :cond_1f

    move-object v0, p1

    .line 162
    :cond_1f
    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    new-instance v3, Lcom/anythink/nativead/api/NativeAd$2;

    invoke-direct {v3, p0}, Lcom/anythink/nativead/api/NativeAd$2;-><init>(Lcom/anythink/nativead/api/NativeAd;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/anythink/nativead/api/ATNativeAdView;->renderView(ILandroid/view/View;Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;)V

    .line 169
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdRender:Lcom/anythink/nativead/api/ATNativeAdRenderer;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-interface {v0, p1, v1}, Lcom/anythink/nativead/api/ATNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/anythink/nativead/unitgroup/a;)V

    .line 170
    return-void
.end method


# virtual methods
.method public declared-synchronized clear(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 4

    monitor-enter p0

    .line 214
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 215
    monitor-exit p0

    return-void

    .line 217
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    if-eqz v0, :cond_15

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativeAdView;->clearImpressionListener(I)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 221
    :cond_15
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p1}, Lcom/anythink/nativead/unitgroup/a;->clear(Landroid/view/View;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    .line 223
    monitor-exit p0

    return-void

    .line 213
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destory()V
    .registers 2

    monitor-enter p0

    .line 226
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    .line 227
    monitor-exit p0

    return-void

    .line 229
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/api/NativeAd;->clear(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    .line 232
    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

    .line 233
    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 235
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_1d

    .line 236
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->destroy()V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1f

    .line 239
    :cond_1d
    monitor-exit p0

    return-void

    .line 225
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdInfo()Lcom/anythink/core/api/ATAdInfo;
    .registers 2

    .line 485
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_6

    .line 486
    const/4 v0, 0x0

    return-object v0

    .line 489
    :cond_6
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-static {v0}, Lcom/anythink/core/api/ATAdInfo;->fromBaseAd(Lcom/anythink/core/api/BaseAd;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized handleAdDislikeButtonClick(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 4

    monitor-enter p0

    .line 407
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_7

    .line 408
    monitor-exit p0

    return-void

    .line 412
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

    if-eqz v0, :cond_14

    .line 413
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromBaseAd(Lcom/anythink/core/api/BaseAd;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/anythink/nativead/api/ATNativeDislikeListener;->onAdCloseButtonClick(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    .line 416
    :cond_14
    monitor-exit p0

    return-void

    .line 406
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized handleClick(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 6

    monitor-enter p0

    .line 368
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-eqz v0, :cond_7

    .line 369
    monitor-exit p0

    return-void

    .line 372
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_26

    .line 373
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 375
    sget-object v1, Lcom/anythink/core/common/b/e$e;->d:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 380
    :cond_26
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_33

    .line 381
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    .line 382
    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromBaseAd(Lcom/anythink/core/api/BaseAd;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    .line 381
    invoke-interface {v0, p1, v1}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdClicked(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_35

    .line 385
    :cond_33
    monitor-exit p0

    return-void

    .line 367
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized handleDeeplinkCallback(Lcom/anythink/nativead/api/ATNativeAdView;Z)V
    .registers 5

    monitor-enter p0

    .line 356
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 357
    monitor-exit p0

    return-void

    .line 360
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_1a

    instance-of v1, v0, Lcom/anythink/nativead/api/ATNativeEventExListener;

    if-eqz v1, :cond_1a

    .line 361
    check-cast v0, Lcom/anythink/nativead/api/ATNativeEventExListener;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromBaseAd(Lcom/anythink/core/api/BaseAd;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/anythink/nativead/api/ATNativeEventExListener;->onDeeplinkCallback(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;Z)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    .line 364
    :cond_1a
    monitor-exit p0

    return-void

    .line 355
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized handleImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 4

    monitor-enter p0

    .line 313
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedImpression:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_a

    goto :goto_1b

    .line 317
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedImpression:Z

    .line 319
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/api/NativeAd$4;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    .line 353
    monitor-exit p0

    return-void

    .line 314
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 312
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized handleVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 5

    monitor-enter p0

    .line 419
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-eqz v0, :cond_7

    .line 420
    monitor-exit p0

    return-void

    .line 423
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_23

    .line 424
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 425
    nop

    .line 2448
    const/16 v1, 0x64

    iput v1, v0, Lcom/anythink/core/common/d/d;->p:I

    .line 426
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 429
    :cond_23
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_2a

    .line 430
    invoke-interface {v0, p1}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2c

    .line 433
    :cond_2a
    monitor-exit p0

    return-void

    .line 418
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized handleVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    .registers 4

    monitor-enter p0

    .line 436
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    .line 437
    monitor-exit p0

    return-void

    .line 440
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_e

    .line 441
    invoke-interface {v0, p1, p2}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    .line 444
    :cond_e
    monitor-exit p0

    return-void

    .line 435
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized handleVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 5

    monitor-enter p0

    .line 389
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-eqz v0, :cond_7

    .line 390
    monitor-exit p0

    return-void

    .line 393
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_22

    .line 394
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 395
    nop

    .line 1448
    const/4 v1, 0x0

    iput v1, v0, Lcom/anythink/core/common/d/d;->p:I

    .line 396
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 400
    :cond_22
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_29

    .line 401
    invoke-interface {v0, p1}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2b

    .line 404
    :cond_29
    monitor-exit p0

    return-void

    .line 388
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPause()V
    .registers 2

    .line 467
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    .line 468
    return-void

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_c

    .line 471
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->onPause()V

    .line 473
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 476
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    .line 477
    return-void

    .line 479
    :cond_5
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_c

    .line 480
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->onResume()V

    .line 482
    :cond_c
    return-void
.end method

.method public declared-synchronized prepare(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 3

    monitor-enter p0

    .line 174
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/anythink/nativead/api/NativeAd;->prepare(Lcom/anythink/nativead/api/ATNativeAdView;Landroid/widget/FrameLayout$LayoutParams;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepare(Lcom/anythink/nativead/api/ATNativeAdView;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    monitor-enter p0

    .line 178
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    .line 179
    monitor-exit p0

    return-void

    .line 181
    :cond_7
    if-eqz p1, :cond_e

    .line 182
    :try_start_9
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/nativead/unitgroup/a;->prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 184
    :cond_e
    monitor-exit p0

    return-void

    .line 177
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepare(Lcom/anythink/nativead/api/ATNativeAdView;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/nativead/api/ATNativeAdView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 187
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    .line 188
    monitor-exit p0

    return-void

    .line 190
    :cond_7
    if-eqz p1, :cond_1d

    .line 191
    if-eqz p2, :cond_18

    :try_start_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 192
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/nativead/unitgroup/a;->prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1f

    monitor-exit p0

    return-void

    .line 194
    :cond_18
    :try_start_18
    iget-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {p2, p1, p3}, Lcom/anythink/nativead/unitgroup/a;->prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    .line 197
    :cond_1d
    monitor-exit p0

    return-void

    .line 186
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized recordShow(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 6

    monitor-enter p0

    .line 262
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedShow:Z

    if-nez v0, :cond_4b

    .line 263
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 264
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedShow:Z

    .line 265
    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/d/b;

    if-eqz v2, :cond_2e

    .line 267
    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->e()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/d/b;->a(I)V

    .line 269
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_2e

    .line 271
    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/d/b;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d/b;)V

    .line 272
    invoke-virtual {v1}, Lcom/anythink/core/common/d;->e()V

    .line 277
    :cond_2e
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v1

    new-instance v2, Lcom/anythink/nativead/api/NativeAd$3;

    invoke-direct {v2, p0, v0}, Lcom/anythink/nativead/api/NativeAd$3;-><init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/d/d;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/d/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->supportImpressionCallback()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 306
    invoke-virtual {p0, p1}, Lcom/anythink/nativead/api/NativeAd;->handleImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    .line 310
    :cond_4b
    monitor-exit p0

    return-void

    .line 261
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renderAdView(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/nativead/api/ATNativeAdRenderer;)V
    .registers 4

    monitor-enter p0

    .line 107
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_45

    if-eqz v0, :cond_7

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_7
    :try_start_7
    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mAdRender:Lcom/anythink/nativead/api/ATNativeAdRenderer;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_45

    .line 111
    if-eqz p2, :cond_3d

    .line 117
    :try_start_b
    iget-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz p2, :cond_14

    .line 118
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p2, v0}, Lcom/anythink/nativead/unitgroup/a;->clear(Landroid/view/View;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15
    .catchall {:try_start_b .. :try_end_14} :catchall_45

    .line 124
    :cond_14
    goto :goto_16

    .line 120
    :catch_15
    move-exception p2

    .line 126
    :goto_16
    :try_start_16
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 127
    iget-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/d/d;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mAdRender:Lcom/anythink/nativead/api/ATNativeAdRenderer;

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->y()I

    move-result p1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    invoke-interface {p2, v0, p1}, Lcom/anythink/nativead/api/ATNativeAdRenderer;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    .line 130
    if-eqz p1, :cond_35

    .line 134
    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/NativeAd;->renderViewToWindow(Landroid/view/View;)V
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_45

    .line 136
    monitor-exit p0

    return-void

    .line 131
    :cond_35
    :try_start_35
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "not set render view!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_3d
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Render cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_45

    .line 106
    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDislikeCallbackListener(Lcom/anythink/nativead/api/ATNativeDislikeListener;)V
    .registers 3

    .line 207
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    .line 208
    return-void

    .line 210
    :cond_5
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

    .line 211
    return-void
.end method

.method public final setDownLoadProgressListener(Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;)V
    .registers 3

    .line 447
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mDownLoadProgressListener:Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;

    .line 448
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p1}, Lcom/anythink/nativead/unitgroup/a;->setDownLoadProgressListener(Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;)V

    .line 449
    return-void
.end method

.method public setNativeEventListener(Lcom/anythink/nativead/api/ATNativeEventListener;)V
    .registers 3

    .line 200
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    .line 201
    return-void

    .line 203
    :cond_5
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    .line 204
    return-void
.end method
