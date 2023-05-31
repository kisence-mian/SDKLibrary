.class public Lcom/anythink/nativead/banner/api/ATNativeBannerView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field customRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

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
            "Ljava/util/Map",
            "<",
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
    .registers 3

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-direct {v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    .line 44
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 161
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    .line 366
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 196
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->init()V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-direct {v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    .line 44
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 161
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    .line 366
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 201
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->init()V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-direct {v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    .line 44
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 161
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    .line 366
    new-instance v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 206
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->init()V

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/nativead/banner/api/ATNativeBannerView;Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addNativeView(Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->startAutoRefresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/anythink/nativead/banner/api/ATNativeBannerView;Z)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->loadAd(Z)V

    return-void
.end method

.method private addNativeView(Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v7, -0x1

    const/16 v6, 0xd

    const/4 v5, 0x0

    .line 81
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    if-eqz v1, :cond_102

    .line 82
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {v1}, Lcom/anythink/nativead/api/ATNative;->getNativeAd()Lcom/anythink/nativead/api/NativeAd;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_f0

    .line 84
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    if-eqz v1, :cond_1c

    .line 85
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->removeView(Landroid/view/View;)V

    .line 86
    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 89
    :cond_1c
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->eventListener:Lcom/anythink/nativead/api/ATNativeEventListener;

    invoke-virtual {v2, v1}, Lcom/anythink/nativead/api/NativeAd;->setNativeEventListener(Lcom/anythink/nativead/api/ATNativeEventListener;)V

    .line 90
    new-instance v1, Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/anythink/nativead/api/ATNativeAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 91
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    if-nez v1, :cond_3d

    .line 92
    new-instance v1, Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-direct {v1, v3, v4}, Lcom/anythink/nativead/banner/a/a;-><init>(Landroid/content/Context;Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V

    iput-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    .line 94
    :cond_3d
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    iget-object v3, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    invoke-virtual {v1, v3}, Lcom/anythink/nativead/banner/a/a;->a(Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V

    .line 96
    :try_start_44
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    iget-object v3, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {v2, v1, v3}, Lcom/anythink/nativead/api/NativeAd;->renderAdView(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/nativead/api/ATNativeAdRenderer;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_dc

    .line 100
    :goto_4b
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v2, v1}, Lcom/anythink/nativead/api/NativeAd;->prepare(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 103
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {v1}, Lcom/anythink/nativead/banner/a/a;->a()Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    move-result-object v1

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v2, :cond_76

    .line 104
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {p0, v1, v2}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42960000    # 75.0f

    invoke-virtual {p0, v2, v3}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    :cond_76
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {v1}, Lcom/anythink/nativead/banner/a/a;->a()Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    move-result-object v1

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v2, :cond_9c

    .line 109
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-virtual {p0, v1, v2}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {p0, v2, v3}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    :cond_9c
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRender:Lcom/anythink/nativead/banner/a/a;

    invoke-virtual {v1}, Lcom/anythink/nativead/banner/a/a;->a()Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    move-result-object v1

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v2, :cond_ae

    .line 114
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    :cond_ae
    if-eqz v0, :cond_e2

    .line 119
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0, v1, v5, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :goto_b5
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCloseBtnShow:Z

    if-eqz v0, :cond_e8

    .line 125
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :goto_c0
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->backgroupResId:I

    if-eqz v0, :cond_cd

    .line 132
    :try_start_c6
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->backgroupResId:I

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->setBackgroundResource(I)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cd} :catch_114

    .line 137
    :cond_cd
    :goto_cd
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    if-eqz p1, :cond_db

    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-nez v0, :cond_db

    .line 139
    invoke-interface {p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdLoaded()V

    .line 159
    :cond_db
    :goto_db
    return-void

    .line 98
    :catch_dc
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4b

    .line 121
    :cond_e2
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mNativeAdView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p0, v0, v5}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addView(Landroid/view/View;I)V

    goto :goto_b5

    .line 127
    :cond_e8
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c0

    .line 142
    :cond_f0
    if-eqz p1, :cond_db

    .line 143
    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-eqz v0, :cond_fc

    .line 144
    const-string v0, "No Ad exist."

    invoke-interface {p1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAutoRefreshFail(Ljava/lang/String;)V

    goto :goto_db

    .line 146
    :cond_fc
    const-string v0, "No Ad exist."

    invoke-interface {p1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdError(Ljava/lang/String;)V

    goto :goto_db

    .line 151
    :cond_102
    if-eqz p1, :cond_db

    .line 152
    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-eqz v0, :cond_10e

    .line 153
    const-string v0, "No Ad exist."

    invoke-interface {p1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAutoRefreshFail(Ljava/lang/String;)V

    goto :goto_db

    .line 155
    :cond_10e
    const-string v0, "No Ad exist."

    invoke-interface {p1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdError(Ljava/lang/String;)V

    goto :goto_db

    :catch_114
    move-exception v0

    goto :goto_cd
.end method

.method private controlShow(I)V
    .registers 3

    .prologue
    .line 340
    iput p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->visibility:I

    .line 341
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    if-nez v0, :cond_7

    .line 352
    :goto_6
    return-void

    .line 344
    :cond_7
    if-nez p1, :cond_13

    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    .line 345
    :cond_13
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    goto :goto_6

    .line 347
    :cond_17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addNativeView(Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V

    .line 348
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 349
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->startAutoRefresh()V

    goto :goto_6
.end method

.method private init()V
    .registers 11

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x40400000    # 3.0f

    .line 272
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/nativead/a/a/b;->a(Landroid/content/Context;)V

    .line 274
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const-string v1, "AD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 279
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 280
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 281
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin_banner_ad_bg"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 283
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 285
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 287
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 288
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mAdLogoTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    .line 292
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin_banner_icon_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v8}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v8}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 294
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 295
    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 296
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mCloseView:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/nativead/banner/api/ATNativeBannerView$3;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView$3;-><init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void
.end method

.method private loadAd(Z)V
    .registers 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    if-nez v0, :cond_12

    .line 246
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz v0, :cond_11

    .line 247
    if-nez p1, :cond_11

    .line 248
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    const-string v1, "Unit id is empty"

    invoke-interface {v0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdError(Ljava/lang/String;)V

    .line 269
    :cond_11
    :goto_11
    return-void

    .line 254
    :cond_12
    iput-boolean p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    .line 256
    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsLoading:Z

    if-eqz v0, :cond_26

    .line 257
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz v0, :cond_11

    .line 258
    if-nez p1, :cond_11

    .line 259
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    const-string v1, "Banner is loading"

    invoke-interface {v0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdError(Ljava/lang/String;)V

    goto :goto_11

    .line 265
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsLoading:Z

    .line 266
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 267
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->configMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNative;->setLocalExtra(Ljava/util/Map;)V

    .line 268
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->customRequestMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNative;->makeAdRequest(Ljava/util/Map;)V

    goto :goto_11
.end method

.method private startAutoRefresh()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 375
    const/4 v0, 0x0

    .line 376
    :try_start_3
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    if-eqz v1, :cond_d

    .line 377
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNative;->getOpenSetting()Lcom/anythink/nativead/api/ATNativeOpenSetting;

    move-result-object v0

    .line 379
    :cond_d
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v2, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_27

    if-eqz v0, :cond_27

    .line 380
    iget-boolean v1, v0, Lcom/anythink/nativead/api/ATNativeOpenSetting;->isAutoRefresh:Z

    if-eqz v1, :cond_26

    .line 381
    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget-wide v4, v0, Lcom/anythink/nativead/api/ATNativeOpenSetting;->autoRefreshTime:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    :cond_26
    :goto_26
    return-void

    .line 384
    :cond_27
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_26

    .line 385
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3a} :catch_3b

    goto :goto_26

    .line 389
    :catch_3b
    move-exception v0

    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 390
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_26

    .line 391
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-wide v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->refreshTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26
.end method

.method private stopAutoRefresh()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .registers 5

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 403
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public loadAd(Ljava/util/Map;)V
    .registers 3
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

    .prologue
    .line 239
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->customRequestMap:Ljava/util/Map;

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->loadAd(Z)V

    .line 242
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 316
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasTouchWindow:Z

    .line 318
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 322
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasTouchWindow:Z

    .line 324
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 325
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 358
    iget v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->visibility:I

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    if-nez p1, :cond_17

    .line 359
    :cond_13
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 364
    :goto_16
    return-void

    .line 361
    :cond_17
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V

    .line 362
    invoke-direct {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->startAutoRefresh()V

    goto :goto_16
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 336
    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->controlShow(I)V

    .line 337
    return-void
.end method

.method public setAdListener(Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    .line 230
    return-void
.end method

.method public setBannerConfig(Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V
    .registers 2

    .prologue
    .line 218
    if-nez p1, :cond_3

    .line 222
    :goto_2
    return-void

    .line 221
    :cond_3
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mConfig:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    goto :goto_2
.end method

.method public setLocalExtra(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->configMap:Ljava/util/Map;

    .line 226
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 210
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mUnitId:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {p0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mUnitId:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/nativead/api/ATNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    iput-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    .line 212
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mLocalExtra:Ljava/util/Map;

    if-eqz v0, :cond_20

    .line 213
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mATNative:Lcom/anythink/nativead/api/ATNative;

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mLocalExtra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNative;->setLocalExtra(Ljava/util/Map;)V

    .line 215
    :cond_20
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 330
    invoke-direct {p0, p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->controlShow(I)V

    .line 331
    return-void
.end method
