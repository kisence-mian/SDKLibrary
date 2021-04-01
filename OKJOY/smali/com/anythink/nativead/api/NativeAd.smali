.class public Lcom/anythink/nativead/api/NativeAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;
    }
.end annotation


# instance fields
.field private mAdCacheInfo:Lcom/anythink/core/b/c/a;

.field private mAdRender:Lcom/anythink/nativead/api/ATNativeAdRenderer;

.field private mAdUnitId:Ljava/lang/String;

.field protected mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

.field private mContext:Landroid/content/Context;

.field private mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

.field public mDownLoadProgressListener:Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;

.field private mIsDestroyed:Z

.field private mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

.field mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

.field private mRecordedImpression:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/b/c/a;)V
    .registers 6

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mAdUnitId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/b/c/a;

    .line 50
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/b/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->i()Lcom/anythink/core/b/c/e;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/unitgroup/a;

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    .line 51
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/api/NativeAd$1;-><init>(Lcom/anythink/nativead/api/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/unitgroup/a;->setNativeEventListener(Lcom/anythink/nativead/unitgroup/a$a;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/nativead/api/NativeAd;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/b/c/a;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/b/c/a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_7

    .line 161
    :goto_5
    monitor-exit p0

    return-void

    .line 160
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p1}, Lcom/anythink/nativead/unitgroup/a;->clear(Landroid/view/View;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 157
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destory()V
    .registers 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_7

    .line 172
    :goto_5
    monitor-exit p0

    return-void

    .line 167
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    .line 168
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/api/NativeAd;->clear(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    goto :goto_5

    .line 164
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleAdDislikeButtonClick(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 4

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    .line 284
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 280
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

    if-eqz v0, :cond_5

    .line 281
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/b/c/b;

    move-result-object v0

    :goto_17
    invoke-static {v0}, Lcom/anythink/core/api/ATAdInfo;->fromAdTrackingInfo(Lcom/anythink/core/b/c/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/anythink/nativead/api/ATNativeDislikeListener;->onAdCloseButtonClick(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    goto :goto_5

    .line 275
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 281
    :cond_22
    const/4 v0, 0x0

    goto :goto_17
.end method

.method declared-synchronized handleClick(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 6

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_42

    if-eqz v0, :cond_7

    .line 253
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 241
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_2a

    .line 242
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->d:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/nativead/unitgroup/a;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 248
    :cond_2a
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_5

    .line 249
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    .line 250
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/b/c/b;

    move-result-object v0

    :goto_3a
    invoke-static {v0}, Lcom/anythink/core/api/ATAdInfo;->fromAdTrackingInfo(Lcom/anythink/core/b/c/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    .line 249
    invoke-interface {v1, p1, v0}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdClicked(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_42

    goto :goto_5

    .line 237
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0

    .line 250
    :cond_45
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method declared-synchronized handleVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 5

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-eqz v0, :cond_7

    .line 301
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 291
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_24

    .line 292
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 2393
    const/16 v1, 0x64

    iput v1, v0, Lcom/anythink/core/b/c/b;->n:I

    .line 294
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 297
    :cond_24
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_5

    .line 298
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    invoke-interface {v0, p1}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2e

    goto :goto_5

    .line 287
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    .registers 4

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 312
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 308
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_5

    .line 309
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    invoke-interface {v0, p1, p2}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 304
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 5

    .prologue
    .line 257
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2d

    if-eqz v0, :cond_7

    .line 272
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 261
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_23

    .line 262
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 1393
    const/4 v1, 0x0

    iput v1, v0, Lcom/anythink/core/b/c/b;->n:I

    .line 264
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 268
    :cond_23
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    invoke-interface {v0, p1}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2d

    goto :goto_5

    .line 257
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    .line 337
    :cond_4
    :goto_4
    return-void

    .line 334
    :cond_5
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->onPause()V

    goto :goto_4
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    .line 346
    :cond_4
    :goto_4
    return-void

    .line 343
    :cond_5
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->onResume()V

    goto :goto_4
.end method

.method public declared-synchronized prepare(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 3

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/anythink/nativead/api/NativeAd;->prepare(Lcom/anythink/nativead/api/ATNativeAdView;Landroid/widget/FrameLayout$LayoutParams;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Lcom/anythink/nativead/api/ATNativeAdView;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    .line 127
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 124
    :cond_7
    if-eqz p1, :cond_5

    .line 125
    :try_start_9
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/nativead/unitgroup/a;->prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_5

    .line 121
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Lcom/anythink/nativead/api/ATNativeAdView;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/nativead/api/ATNativeAdView;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    .line 140
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 133
    :cond_7
    if-eqz p1, :cond_5

    .line 134
    if-eqz p2, :cond_1a

    :try_start_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 135
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/nativead/unitgroup/a;->prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_5

    .line 130
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p1, p3}, Lcom/anythink/nativead/unitgroup/a;->prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    goto :goto_5
.end method

.method declared-synchronized recordImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 7

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedImpression:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_64

    if-eqz v0, :cond_b

    .line 234
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 181
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mRecordedImpression:Z

    .line 183
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdUnitId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->l:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->o:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/b/c/a;

    if-eqz v0, :cond_3c

    .line 188
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/b/c/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/b/c/a;

    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/a;->a(I)V

    .line 190
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_3c

    .line 192
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/b/c/a;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/c/a;)V

    .line 193
    invoke-virtual {v0}, Lcom/anythink/core/b/d;->f()V

    .line 198
    :cond_3c
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_4c

    .line 199
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$2;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/api/NativeAd$2;-><init>(Lcom/anythink/nativead/api/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 228
    :cond_4c
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    if-eqz v0, :cond_9

    .line 229
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    .line 230
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/b/c/b;

    move-result-object v0

    :goto_5c
    invoke-static {v0}, Lcom/anythink/core/api/ATAdInfo;->fromAdTrackingInfo(Lcom/anythink/core/b/c/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    .line 229
    invoke-interface {v1, p1, v0}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdImpressed(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    :try_end_63
    .catchall {:try_start_c .. :try_end_63} :catchall_64

    goto :goto_9

    .line 177
    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :cond_67
    const/4 v0, 0x0

    goto :goto_5c
.end method

.method public declared-synchronized renderAdView(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/nativead/api/ATNativeAdRenderer;)V
    .registers 6

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 113
    :goto_5
    monitor-exit p0

    return-void

    .line 87
    :cond_7
    :try_start_7
    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd;->mAdRender:Lcom/anythink/nativead/api/ATNativeAdRenderer;

    .line 88
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdRender:Lcom/anythink/nativead/api/ATNativeAdRenderer;

    if-nez v0, :cond_18

    .line 89
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Render cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_15

    .line 84
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_23

    .line 95
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/unitgroup/a;->clear(Landroid/view/View;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_4a
    .catchall {:try_start_18 .. :try_end_23} :catchall_15

    .line 103
    :cond_23
    :goto_23
    :try_start_23
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 104
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mAdRender:Lcom/anythink/nativead/api/ATNativeAdRenderer;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/a;->getNetworkType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/nativead/api/ATNativeAdRenderer;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 106
    if-nez v0, :cond_3d

    .line 107
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "not set render view!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3d
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v1, p0, v0}, Lcom/anythink/nativead/api/ATNativeAdView;->renderView(Lcom/anythink/nativead/api/NativeAd;Landroid/view/View;)V

    .line 111
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mAdRender:Lcom/anythink/nativead/api/ATNativeAdRenderer;

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-interface {v1, v0, v2}, Lcom/anythink/nativead/api/ATNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/anythink/nativead/unitgroup/a;)V
    :try_end_49
    .catchall {:try_start_23 .. :try_end_49} :catchall_15

    goto :goto_5

    :catch_4a
    move-exception v0

    goto :goto_23
.end method

.method public setDislikeCallbackListener(Lcom/anythink/nativead/api/ATNativeDislikeListener;)V
    .registers 3

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    .line 154
    :goto_4
    return-void

    .line 153
    :cond_5
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mDislikeListener:Lcom/anythink/nativead/api/ATNativeDislikeListener;

    goto :goto_4
.end method

.method public final setDownLoadProgressListener(Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;)V
    .registers 4

    .prologue
    .line 315
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mDownLoadProgressListener:Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;

    .line 316
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd;->mDownLoadProgressListener:Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/unitgroup/a;->setDownLoadProgressListener(Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;)V

    .line 317
    return-void
.end method

.method public setNativeEventListener(Lcom/anythink/nativead/api/ATNativeEventListener;)V
    .registers 3

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    .line 147
    :goto_4
    return-void

    .line 146
    :cond_5
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    goto :goto_4
.end method
