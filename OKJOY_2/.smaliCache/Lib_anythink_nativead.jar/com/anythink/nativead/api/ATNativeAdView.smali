.class public Lcom/anythink/nativead/api/ATNativeAdView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAdView:Landroid/view/View;

.field mImpressionEventListener:Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;

.field mIsInWindow:Z

.field mNativeAdId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/nativead/api/ATNativeAdView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method private callbackImpression()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mImpressionEventListener:Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;

    if-eqz v0, :cond_7

    .line 99
    invoke-interface {v0}, Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;->onImpression()V

    .line 101
    :cond_7
    return-void
.end method

.method private unregisterView(Landroid/view/ViewGroup;)V
    .registers 6

    .line 62
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_19

    .line 66
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/anythink/nativead/api/ATNativeAdView;->unregisterView(Landroid/view/ViewGroup;)V

    goto :goto_1c

    .line 68
    :cond_19
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_1f
    return-void
.end method


# virtual methods
.method public clearImpressionListener(I)V
    .registers 3

    .line 56
    iget v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mNativeAdId:I

    if-ne v0, p1, :cond_7

    .line 57
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mImpressionEventListener:Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;

    .line 59
    :cond_7
    return-void
.end method

.method public destory()V
    .registers 2

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mImpressionEventListener:Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;

    .line 105
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mIsInWindow:Z

    .line 86
    invoke-virtual {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 87
    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->callbackImpression()V

    .line 89
    :cond_f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 93
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mIsInWindow:Z

    .line 95
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 77
    if-nez p2, :cond_e

    invoke-virtual {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e

    .line 78
    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->callbackImpression()V

    .line 80
    :cond_e
    return-void
.end method

.method protected renderView(ILandroid/view/View;Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;)V
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mAdView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 40
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/anythink/nativead/api/ATNativeAdView;->unregisterView(Landroid/view/ViewGroup;)V

    .line 41
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mAdView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/api/ATNativeAdView;->removeView(Landroid/view/View;)V

    .line 44
    :cond_e
    iput-object p2, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mAdView:Landroid/view/View;

    .line 45
    iput p1, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mNativeAdId:I

    .line 46
    iput-object p3, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mImpressionEventListener:Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;

    .line 48
    invoke-virtual {p0, p2}, Lcom/anythink/nativead/api/ATNativeAdView;->addView(Landroid/view/View;)V

    .line 49
    iget-boolean p1, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mIsInWindow:Z

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_24

    .line 50
    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->callbackImpression()V

    .line 52
    :cond_24
    return-void
.end method
