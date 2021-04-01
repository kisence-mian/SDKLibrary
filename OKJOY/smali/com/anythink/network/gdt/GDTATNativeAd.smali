.class public Lcom/anythink/network/gdt/GDTATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

.field d:Lcom/qq/e/ads/nativ/NativeMediaADData;

.field e:Lcom/qq/e/ads/nativ/NativeExpressADView;

.field f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field g:Lcom/qq/e/ads/nativ/MediaView;

.field h:Z

.field i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/gdt/GDTATNativeAd;->j:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 49
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->h:Z

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->b:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->a:Ljava/lang/ref/WeakReference;

    .line 53
    iput-object p3, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    .line 54
    instance-of v0, p2, Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_61

    move-object v0, p2

    .line 55
    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    .line 56
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    .line 1122
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 1123
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 1125
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 1126
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAPPScore()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 1128
    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->getCallToACtion(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 1130
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 1132
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getImgList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 1134
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAdPatternType()I

    move-result v0

    if-ne v0, v4, :cond_bd

    .line 1135
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    .line 59
    :cond_61
    :goto_61
    instance-of v0, p2, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_6a

    move-object v0, p2

    .line 60
    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 63
    :cond_6a
    instance-of v0, p2, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_bc

    .line 64
    check-cast p2, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 65
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 1143
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 1144
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 1146
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 1147
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppScore()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 1149
    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->getCallToACtion(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 1151
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 1153
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 1155
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v1

    if-ne v1, v4, :cond_c2

    .line 1156
    const-string v1, "1"

    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    .line 1161
    :goto_b4
    new-instance v1, Lcom/anythink/network/gdt/GDTATNativeAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$1;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    .line 68
    :cond_bc
    return-void

    .line 1137
    :cond_bd
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    goto :goto_61

    .line 1158
    :cond_c2
    const-string v1, "2"

    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    goto :goto_b4
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/anythink/network/gdt/GDTATNativeAd;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 479
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    if-eq p1, v0, :cond_1b

    .line 480
    check-cast p1, Landroid/view/ViewGroup;

    .line 481
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 482
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 483
    invoke-direct {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->a(Landroid/view/View;)V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 486
    :cond_1b
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_27

    .line 487
    new-instance v0, Lcom/anythink/network/gdt/GDTATNativeAd$6;

    invoke-direct {v0, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$6;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    :cond_27
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 499
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    if-eq p1, v0, :cond_1b

    .line 500
    check-cast p1, Landroid/view/ViewGroup;

    .line 501
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 503
    invoke-direct {p0, v1, p2}, Lcom/anythink/network/gdt/GDTATNativeAd;->a(Landroid/view/View;Ljava/util/List;)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 506
    :cond_1b
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_1e
    return-void
.end method

.method private a(Lcom/qq/e/ads/nativ/NativeMediaADData;)V
    .registers 4

    .prologue
    .line 122
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 123
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 125
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 126
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAPPScore()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->getCallToACtion(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 130
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 132
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 134
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_42

    .line 135
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    .line 140
    :goto_41
    return-void

    .line 137
    :cond_42
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    goto :goto_41
.end method

.method private a(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .registers 4

    .prologue
    .line 143
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 144
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 146
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 147
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppScore()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->getCallToACtion(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 151
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 153
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 155
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    .line 156
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    .line 161
    :goto_41
    new-instance v0, Lcom/anythink/network/gdt/GDTATNativeAd$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$1;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    invoke-interface {p1, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    .line 182
    return-void

    .line 158
    :cond_4a
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->mAdSourceType:Ljava/lang/String;

    goto :goto_41
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 511
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    if-eq p1, v0, :cond_1b

    .line 512
    check-cast p1, Landroid/view/ViewGroup;

    .line 513
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 514
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 515
    invoke-direct {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->b(Landroid/view/View;)V

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 518
    :cond_1b
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    .line 519
    check-cast p1, Landroid/widget/TextView;

    .line 520
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v1, :cond_3d

    .line 522
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-virtual {p0, v1}, Lcom/anythink/network/gdt/GDTATNativeAd;->getCallToACtion(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 524
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    :cond_3d
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 533
    invoke-super {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->clear(Landroid/view/View;)V

    .line 534
    invoke-direct {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->b(Landroid/view/View;)V

    .line 535
    invoke-virtual {p0}, Lcom/anythink/network/gdt/GDTATNativeAd;->onPause()V

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    .line 537
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 565
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->destroy()V

    .line 566
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_11

    .line 567
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->stop()V

    .line 568
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->destroy()V

    .line 571
    :cond_11
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_1a

    .line 572
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    .line 574
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    .line 576
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x2

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/high16 v2, -0x1000000

    .line 191
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_4d

    .line 192
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAdPatternType()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 193
    invoke-super {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 301
    :goto_15
    return-object v0

    .line 196
    :cond_16
    new-instance v0, Lcom/qq/e/ads/nativ/MediaView;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qq/e/ads/nativ/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    .line 197
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    invoke-virtual {v0, v2}, Lcom/qq/e/ads/nativ/MediaView;->setBackgroundColor(I)V

    .line 198
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 199
    if-nez v0, :cond_31

    .line 200
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 202
    :cond_31
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    invoke-virtual {v1, v0}, Lcom/qq/e/ads/nativ/MediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    new-instance v1, Lcom/anythink/network/gdt/GDTATNativeAd$2;

    invoke-direct {v1, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$2;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/MediaView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 226
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    new-instance v1, Lcom/anythink/network/gdt/GDTATNativeAd$3;

    invoke-direct {v1, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$3;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->setMediaListener(Lcom/qq/e/ads/nativ/MediaListener;)V

    .line 275
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    goto :goto_15

    .line 278
    :cond_4d
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_81

    .line 279
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v0

    if-eq v0, v1, :cond_5e

    .line 280
    invoke-super {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_15

    .line 283
    :cond_5e
    new-instance v0, Lcom/qq/e/ads/nativ/MediaView;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qq/e/ads/nativ/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    .line 284
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    invoke-virtual {v0, v2}, Lcom/qq/e/ads/nativ/MediaView;->setBackgroundColor(I)V

    .line 285
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 286
    if-nez v0, :cond_79

    .line 287
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 289
    :cond_79
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    invoke-virtual {v1, v0}, Lcom/qq/e/ads/nativ/MediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    goto :goto_15

    .line 295
    :cond_81
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_9e

    .line 296
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 297
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 299
    :cond_9a
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    goto/16 :goto_15

    .line 301
    :cond_9e
    invoke-super {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_15
.end method

.method public getCallToACtion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 72
    .line 74
    instance-of v1, p1, Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v1, :cond_79

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->isAPP()Z

    move-result v2

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAPPStatus()I

    move-result v1

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getProgress()I

    move-result v0

    .line 81
    :goto_1a
    instance-of v3, p1, Lcom/qq/e/ads/nativ/NativeADDataRef;

    if-eqz v3, :cond_33

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeADDataRef;->isAPP()Z

    move-result v2

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeADDataRef;->getAPPStatus()I

    move-result v1

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeADDataRef;->getProgress()I

    move-result v0

    .line 87
    :cond_33
    instance-of v3, p1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v3, :cond_4b

    move-object v0, p1

    .line 88
    check-cast v0, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    move-result v2

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    move-result v1

    .line 90
    check-cast p1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getProgress()I

    move-result v0

    .line 94
    :cond_4b
    if-nez v2, :cond_50

    .line 95
    const-string v0, "\u6d4f\u89c8"

    .line 116
    :goto_4f
    return-object v0

    .line 97
    :cond_50
    sparse-switch v1, :sswitch_data_7c

    .line 116
    const-string v0, "\u6d4f\u89c8"

    goto :goto_4f

    .line 99
    :sswitch_56
    const-string v0, "\u4e0b\u8f7d"

    goto :goto_4f

    .line 102
    :sswitch_59
    const-string v0, "\u542f\u52a8"

    goto :goto_4f

    .line 105
    :sswitch_5c
    const-string v0, "\u66f4\u65b0"

    goto :goto_4f

    .line 107
    :sswitch_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 111
    :sswitch_73
    const-string v0, "\u5b89\u88c5"

    goto :goto_4f

    .line 114
    :sswitch_76
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u91cd\u65b0\u4e0b\u8f7d"

    goto :goto_4f

    :cond_79
    move v1, v0

    move v2, v0

    goto :goto_1a

    .line 97
    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_56
        0x1 -> :sswitch_59
        0x2 -> :sswitch_5c
        0x4 -> :sswitch_5f
        0x8 -> :sswitch_73
        0x10 -> :sswitch_76
    .end sparse-switch
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_d

    .line 471
    new-instance v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 473
    :cond_d
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    return-object v0
.end method

.method public isNativeExpress()Z
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 542
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->stop()V

    .line 545
    :cond_12
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_1b

    .line 546
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->pauseVideo()V

    .line 548
    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 554
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->resume()V

    .line 557
    :cond_12
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_20

    .line 558
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resume()V

    .line 559
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resumeVideo()V

    .line 561
    :cond_20
    return-void
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 7

    .prologue
    .line 313
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_14

    .line 314
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->onExposured(Landroid/view/View;)V

    .line 315
    invoke-direct {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->a(Landroid/view/View;)V

    .line 317
    :try_start_c
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/qq/e/ads/nativ/NativeMediaADData;->bindView(Lcom/qq/e/ads/nativ/MediaView;Z)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_14} :catch_58

    .line 322
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1d

    .line 323
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    .line 326
    :cond_1d
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    if-eqz v0, :cond_57

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-direct {p0, p1, v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->a(Landroid/view/View;Ljava/util/List;)V

    .line 329
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V

    .line 331
    :try_start_38
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    new-instance v2, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    const/4 v3, 0x1

    .line 332
    invoke-virtual {v2, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v2

    new-instance v3, Lcom/anythink/network/gdt/GDTATNativeAd$4;

    invoke-direct {v3, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$4;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    .line 331
    invoke-interface {v0, v1, v2, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_57} :catch_5d

    .line 387
    :cond_57
    :goto_57
    return-void

    .line 319
    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    .line 382
    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_57
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_14

    .line 392
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->onExposured(Landroid/view/View;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/anythink/network/gdt/GDTATNativeAd;->a(Landroid/view/View;)V

    .line 395
    :try_start_c
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/qq/e/ads/nativ/NativeMediaADData;->bindView(Lcom/qq/e/ads/nativ/MediaView;Z)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_14} :catch_50

    .line 400
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1d

    .line 401
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->e:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    .line 405
    :cond_1d
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    if-eqz v0, :cond_4f

    .line 406
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->i:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-interface {v0, v1, v2, p3, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V

    .line 408
    :try_start_30
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->f:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeAd;->g:Lcom/qq/e/ads/nativ/MediaView;

    new-instance v2, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    const/4 v3, 0x1

    .line 409
    invoke-virtual {v2, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v2

    new-instance v3, Lcom/anythink/network/gdt/GDTATNativeAd$5;

    invoke-direct {v3, p0}, Lcom/anythink/network/gdt/GDTATNativeAd$5;-><init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V

    .line 408
    invoke-interface {v0, v1, v2, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_4f} :catch_55

    .line 464
    :cond_4f
    :goto_4f
    return-void

    .line 397
    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    .line 459
    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4f
.end method
