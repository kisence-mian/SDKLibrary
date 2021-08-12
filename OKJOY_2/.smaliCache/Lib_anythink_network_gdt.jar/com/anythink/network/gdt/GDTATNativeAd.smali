.class public Lcom/anythink/network/gdt/GDTATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field d:I

.field e:I

.field f:I

.field g:Lcom/qq/e/ads/nativ/MediaView;

.field h:Z

.field i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/gdt/GDTATNativeAd;->j:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Object;III)V
    .registers 7

    .line 43
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->h:Z

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->b:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->a:Ljava/lang/ref/WeakReference;

    .line 48
    iput p3, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:I

    .line 49
    iput p4, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:I

    .line 50
    iput p5, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:I

    .line 52
    instance-of p1, p2, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz p1, :cond_70

    .line 53
    check-cast p2, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 54
    nop

    .line 1091
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 1092
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 1094
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 1095
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppScore()I

    move-result p1

    int-to-double p3, p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 1097
    invoke-virtual {p0, p2}, Lcom/anythink/network/gdt/GDTATNativeAd;->getCallToACtion(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 1099
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 1101
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 1103
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_64

    .line 1104
    const-string p1, "1"

    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    goto :goto_68

    .line 1106
    :cond_64
    const-string p1, "2"

    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    .line 1109
    :goto_68
    new-instance p1, Lcom/anythink/network/gdt/GDTATNativeAd$1;

    invoke-direct {p1, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$1;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    invoke-interface {p2, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    .line 57
    :cond_70
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 310
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    if-eq p1, v0, :cond_1c

    .line 311
    check-cast p1, Landroid/view/ViewGroup;

    .line 312
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 314
    invoke-direct {p0, v1, p2}, Lcom/anythink/network/gdt/GDTATNativeAd;->a(Landroid/view/View;Ljava/util/List;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 316
    :cond_1b
    return-void

    .line 317
    :cond_1c
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method private a(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .registers 4

    .line 91
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 92
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 94
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 95
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppScore()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->getCallToACtion(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 101
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 103
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_42

    .line 104
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    goto :goto_46

    .line 106
    :cond_42
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    .line 109
    :goto_46
    new-instance v0, Lcom/anythink/network/gdt/GDTATNativeAd$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$1;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    invoke-interface {p1, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    .line 130
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .line 323
    invoke-super {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->clear(Landroid/view/View;)V

    .line 324
    invoke-virtual {p0}, Lcom/anythink/network/gdt/GDTATNativeAd;->onPause()V

    .line 325
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    .line 326
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 327
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 346
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->destroy()V

    .line 348
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 349
    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    .line 350
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    .line 351
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 353
    :cond_12
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    .line 355
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->b:Landroid/content/Context;

    .line 356
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1f

    .line 357
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 358
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->a:Ljava/lang/ref/WeakReference;

    .line 361
    :cond_1f
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    if-eqz v0, :cond_28

    .line 362
    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->removeAllViews()V

    .line 363
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 365
    :cond_28
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_35

    .line 141
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 142
    invoke-super {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 145
    :cond_10
    new-instance p1, Lcom/qq/e/ads/nativ/MediaView;

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/qq/e/ads/nativ/MediaView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    .line 146
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/nativ/MediaView;->setBackgroundColor(I)V

    .line 147
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 148
    if-nez p1, :cond_2d

    .line 149
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 151
    :cond_2d
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/MediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    return-object p1

    .line 157
    :cond_35
    invoke-super {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getCallToACtion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 61
    nop

    .line 62
    nop

    .line 64
    instance-of v0, p1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 65
    check-cast p1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    move-result v1

    .line 66
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    move-result v0

    .line 67
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getProgress()I

    goto :goto_16

    .line 64
    :cond_15
    move v0, v1

    .line 71
    :goto_16
    const-string p1, "\u6d4f\u89c8"

    if-nez v1, :cond_1b

    .line 72
    return-object p1

    .line 74
    :cond_1b
    sparse-switch v0, :sswitch_data_2c

    .line 86
    return-object p1

    .line 84
    :sswitch_1f
    const-string p1, "\u5b89\u88c5"

    return-object p1

    .line 82
    :sswitch_22
    const-string p1, "\u66f4\u65b0"

    return-object p1

    .line 80
    :sswitch_25
    const-string p1, "\u542f\u52a8"

    return-object p1

    .line 78
    :sswitch_28
    const-string p1, "\u4e0b\u8f7d"

    return-object p1

    nop

    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_28
        0x1 -> :sswitch_25
        0x2 -> :sswitch_22
        0x4 -> :sswitch_28
        0x8 -> :sswitch_1f
        0x10 -> :sswitch_28
    .end sparse-switch
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_d

    .line 304
    new-instance v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 306
    :cond_d
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    return-object v0
.end method

.method public isNativeExpress()Z
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_7

    .line 332
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->pauseVideo()V

    .line 334
    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_c

    .line 339
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resume()V

    .line 340
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resumeVideo()V

    .line 342
    :cond_c
    return-void
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 7

    .line 167
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    if-eqz v0, :cond_51

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->a(Landroid/view/View;Ljava/util/List;)V

    .line 170
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-interface {v1, p1, v2, p2, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V

    .line 172
    :try_start_1b
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iget-object p2, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    new-instance v0, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    iget v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2c

    move v1, v3

    goto :goto_2d

    :cond_2c
    move v1, v2

    .line 173
    :goto_2d
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    iget v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:I

    if-ne v1, v3, :cond_36

    move v2, v3

    .line 174
    :cond_36
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    iget v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:I

    .line 175
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/gdt/GDTATNativeAd$2;

    invoke-direct {v1, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$2;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    .line 172
    invoke-interface {p1, p2, v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V
    :try_end_4c
    .catchall {:try_start_1b .. :try_end_4c} :catchall_4d

    .line 227
    return-void

    .line 226
    :catchall_4d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    :cond_51
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    if-eqz v1, :cond_47

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-interface {v0, p1, v1, p3, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V

    .line 238
    :try_start_11
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iget-object p2, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    new-instance p3, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {p3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    iget v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v1

    .line 239
    :goto_23
    invoke-virtual {p3, v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p3

    iget v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:I

    if-ne v0, v2, :cond_2c

    move v1, v2

    .line 240
    :cond_2c
    invoke-virtual {p3, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p3

    iget v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:I

    .line 241
    invoke-virtual {p3, v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p3

    .line 242
    invoke-virtual {p3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p3

    new-instance v0, Lcom/anythink/network/gdt/GDTATNativeAd$3;

    invoke-direct {v0, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$3;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    .line 238
    invoke-interface {p1, p2, p3, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V
    :try_end_42
    .catchall {:try_start_11 .. :try_end_42} :catchall_43

    .line 293
    return-void

    .line 292
    :catchall_43
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    :cond_47
    return-void
.end method
