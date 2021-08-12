.class public Lcom/anythink/nativead/banner/api/ATNativeBannerView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field customRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

.field hasCallbackShow:Z

.field hasTouchWindow:Z

.field mATNative:Lcom/anythink/nativead/api/ATNative;

.field mATNativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

.field mAdLogoTextView:Landroid/widget/TextView;

.field mCloseView:Landroid/widget/ImageView;

.field mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

.field mHandler:Landroid/os/Handler;

.field mIsLoading:Z

.field mIsRefresh:Z

.field mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

.field mLocalExtra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

.field mRefreshRunnable:Ljava/lang/Runnable;

.field mRender:Lcom/anythink/nativead/banner/a/a;

.field mUnitId:Ljava/lang/String;

.field visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 208
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-direct {p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;-><init>()V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 49
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    .line 50
    iput-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasCallbackShow:Z

    .line 52
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 174
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    .line 378
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 209
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->init()V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-direct {p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;-><init>()V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 49
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    .line 50
    iput-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasCallbackShow:Z

    .line 52
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 174
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    .line 378
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 214
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->init()V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-direct {p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;-><init>()V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 49
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    .line 50
    iput-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasCallbackShow:Z

    .line 52
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 174
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    .line 378
    new-instance p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 219
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->init()V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/nativead/banner/api/ATNativeBannerView;Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addNativeView(Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->startAutoRefresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/anythink/nativead/banner/api/ATNativeBannerView;Z)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->loadAd(Z)V

    return-void
.end method

.method private declared-synchronized addNativeView(Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V
    .registers 7

    monitor-enter p0

    .line 89
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasCallbackShow:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_121

    if-eqz v0, :cond_7

    .line 90
    monitor-exit p0

    return-void

    .line 92
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasCallbackShow:Z

    .line 93
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    if-eqz v0, :cond_10d

    .line 94
    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNative;->getNativeAd()Lcom/anythink/nativead/api/NativeAd;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_f9

    .line 96
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 97
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->removeView(Landroid/view/View;)V

    .line 98
    iput-object v2, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 101
    :cond_1e
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->setNativeEventListener(Lcom/anythink/nativead/api/ATNativeEventListener;)V

    .line 102
    new-instance v1, Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/anythink/nativead/api/ATNativeAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 103
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    if-nez v1, :cond_3f

    .line 104
    new-instance v1, Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-direct {v1, v3, v4}, Lcom/anythink/nativead/banner/a/a;-><init>(Landroid/content/Context;Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V

    iput-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    .line 106
    :cond_3f
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    iget-object v3, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-virtual {v1, v3}, Lcom/anythink/nativead/banner/a/a;->a(Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_121

    .line 108
    :try_start_46
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    iget-object v3, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/nativead/api/NativeAd;->renderAdView(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/nativead/api/ATNativeAdRenderer;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_4e
    .catchall {:try_start_46 .. :try_end_4d} :catchall_121

    .line 111
    goto :goto_52

    .line 110
    :catch_4e
    move-exception v1

    :try_start_4f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :goto_52
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->prepare(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 114
    nop

    .line 115
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/banner/a/a;->a()Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    move-result-object v0

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const/16 v3, 0xd

    if-ne v0, v1, :cond_80

    .line 116
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-virtual {p0, v0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x42960000    # 75.0f

    invoke-virtual {p0, v1, v4}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    :cond_80
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/banner/a/a;->a()Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    move-result-object v0

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v0, v1, :cond_a6

    .line 121
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0, v0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {p0, v1, v4}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    :cond_a6
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/banner/a/a;->a()Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    move-result-object v0

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v0, v1, :cond_b9

    .line 126
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    :cond_b9
    if-eqz p1, :cond_c2

    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-nez v0, :cond_c2

    .line 131
    invoke-interface {p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdLoaded()V

    .line 134
    :cond_c2
    const/4 p1, 0x0

    if-eqz v2, :cond_cb

    .line 135
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0, v0, p1, v2}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d0

    .line 137
    :cond_cb
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0, v0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addView(Landroid/view/View;I)V

    .line 140
    :goto_d0
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCloseBtnShow:Z

    if-eqz v0, :cond_dc

    .line 141
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e3

    .line 143
    :cond_dc
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :goto_e3
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->backgroupResId:I
    :try_end_e7
    .catchall {:try_start_4f .. :try_end_e7} :catchall_121

    if-eqz v0, :cond_f2

    .line 148
    :try_start_e9
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->backgroupResId:I

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->setBackgroundResource(I)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f0} :catch_f1
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_121

    .line 151
    goto :goto_f2

    .line 149
    :catch_f1
    move-exception v0

    .line 153
    :cond_f2
    :goto_f2
    :try_start_f2
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_f7
    .catchall {:try_start_f2 .. :try_end_f7} :catchall_121

    .line 154
    monitor-exit p0

    return-void

    .line 155
    :cond_f9
    if-eqz p1, :cond_10b

    .line 156
    :try_start_fb
    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-eqz v0, :cond_106

    .line 157
    const-string v0, "No Ad exist."

    invoke-interface {p1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAutoRefreshFail(Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_fb .. :try_end_104} :catchall_121

    monitor-exit p0

    return-void

    .line 159
    :cond_106
    :try_start_106
    const-string v0, "No Ad exist."

    invoke-interface {p1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdError(Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_106 .. :try_end_10b} :catchall_121

    .line 163
    :cond_10b
    monitor-exit p0

    return-void

    .line 164
    :cond_10d
    if-eqz p1, :cond_11f

    .line 165
    :try_start_10f
    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-eqz v0, :cond_11a

    .line 166
    const-string v0, "No Ad exist."

    invoke-interface {p1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAutoRefreshFail(Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_10f .. :try_end_118} :catchall_121

    monitor-exit p0

    return-void

    .line 168
    :cond_11a
    :try_start_11a
    const-string v0, "No Ad exist."

    invoke-interface {p1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdError(Ljava/lang/String;)V
    :try_end_11f
    .catchall {:try_start_11a .. :try_end_11f} :catchall_121

    .line 172
    :cond_11f
    monitor-exit p0

    return-void

    .line 88
    :catchall_121
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private controlShow(I)V
    .registers 3

    .line 352
    iput p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->visibility:I

    .line 353
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    if-nez v0, :cond_7

    .line 354
    return-void

    .line 356
    :cond_7
    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasTouchWindow:Z

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_1f

    .line 359
    :cond_14
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addNativeView(Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V

    .line 360
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 361
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->startAutoRefresh()V

    .line 364
    return-void

    .line 357
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    return-void
.end method

.method private init()V
    .registers 8

    .line 286
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    .line 287
    const/4 v1, 0x1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 288
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const-string v1, "AD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 291
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 292
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v1, v2}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v4}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 293
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "plugin_banner_ad_bg"

    const-string v4, "drawable"

    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 295
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 296
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 298
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 299
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 300
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    .line 304
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "plugin_banner_icon_close"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {p0, v2, v3}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, v2, v3}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 307
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 308
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 309
    iget-object v2, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$3;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$3;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-void
.end method

.method private loadAd(Z)V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    if-nez v0, :cond_10

    .line 259
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz v0, :cond_f

    .line 260
    if-nez p1, :cond_f

    .line 261
    const-string p1, "Unit id is empty"

    invoke-interface {v0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdError(Ljava/lang/String;)V

    .line 264
    :cond_f
    return-void

    .line 267
    :cond_10
    iput-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    .line 269
    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsLoading:Z

    if-eqz v0, :cond_22

    .line 270
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz v0, :cond_21

    .line 271
    if-nez p1, :cond_21

    .line 272
    const-string p1, "Banner is loading"

    invoke-interface {v0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdError(Ljava/lang/String;)V

    .line 275
    :cond_21
    return-void

    .line 278
    :cond_22
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsLoading:Z

    .line 279
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 280
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->configMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/anythink/nativead/api/ATNative;->setLocalExtra(Ljava/util/Map;)V

    .line 281
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNative;->makeAdRequest()V

    .line 282
    return-void
.end method

.method private startAutoRefresh()V
    .registers 8

    .line 387
    const/4 v0, 0x0

    .line 388
    const-wide/16 v1, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    if-eqz v3, :cond_b

    .line 389
    invoke-virtual {v3}, Lcom/anythink/nativead/api/ATNative;->getOpenSetting()Lcom/anythink/nativead/api/ATNativeOpenSetting;

    move-result-object v0

    .line 391
    :cond_b
    iget-object v3, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    if-eqz v0, :cond_25

    .line 392
    iget-boolean v3, v0, Lcom/anythink/nativead/api/ATNativeOpenSetting;->isAutoRefresh:Z

    if-eqz v3, :cond_38

    .line 393
    iget-object v3, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget-wide v5, v0, Lcom/anythink/nativead/api/ATNativeOpenSetting;->autoRefreshTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 396
    :cond_25
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v3, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_38

    .line 397
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_39

    .line 405
    :cond_38
    return-void

    .line 400
    :catchall_39
    move-exception v0

    .line 401
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 402
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v3, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_50

    .line 403
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    :cond_50
    return-void
.end method

.method private stopAutoRefresh()V
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .registers 3

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 415
    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public loadAd(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->customRequestMap:Ljava/util/Map;

    .line 254
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->loadAd(Z)V

    .line 255
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 328
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasTouchWindow:Z

    .line 330
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 334
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasTouchWindow:Z

    .line 336
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 337
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 369
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 370
    iget v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->visibility:I

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    if-nez p1, :cond_14

    goto :goto_1b

    .line 373
    :cond_14
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 374
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->startAutoRefresh()V

    .line 376
    return-void

    .line 371
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 347
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 348
    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->controlShow(I)V

    .line 349
    return-void
.end method

.method public setAdListener(Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    .line 243
    return-void
.end method

.method public setBannerConfig(Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V
    .registers 2

    .line 231
    if-nez p1, :cond_3

    .line 232
    return-void

    .line 234
    :cond_3
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 235
    return-void
.end method

.method public setLocalExtra(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->configMap:Ljava/util/Map;

    .line 239
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .registers 5

    .line 223
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mUnitId:Ljava/lang/String;

    .line 224
    new-instance p1, Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-direct {p1, v0, v1, v2}, Lcom/anythink/nativead/api/ATNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    .line 225
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mLocalExtra:Ljava/util/Map;

    if-eqz v0, :cond_1c

    .line 226
    invoke-virtual {p1, v0}, Lcom/anythink/nativead/api/ATNative;->setLocalExtra(Ljava/util/Map;)V

    .line 228
    :cond_1c
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 341
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 342
    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->controlShow(I)V

    .line 343
    return-void
.end method
