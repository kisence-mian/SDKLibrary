.class public Lcom/anythink/nativead/api/ATNativeAdView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

.field mCustomAdView:Landroid/view/ViewGroup;

.field mHasSendImpression:Z

.field mIsInWindow:Z

.field mNativeAd:Lcom/anythink/nativead/api/NativeAd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/nativead/api/ATNativeAdView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private unregisterView(Landroid/view/ViewGroup;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1d

    .line 79
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/anythink/nativead/api/ATNativeAdView;->unregisterView(Landroid/view/ViewGroup;)V

    .line 75
    :goto_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 81
    :cond_1d
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_19

    .line 84
    :cond_21
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mIsInWindow:Z

    .line 99
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mNativeAd:Lcom/anythink/nativead/api/NativeAd;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 100
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mNativeAd:Lcom/anythink/nativead/api/NativeAd;

    invoke-virtual {v0, p0}, Lcom/anythink/nativead/api/NativeAd;->recordImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 102
    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mIsInWindow:Z

    .line 108
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 90
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mNativeAd:Lcom/anythink/nativead/api/NativeAd;

    if-eqz v0, :cond_14

    if-nez p2, :cond_14

    invoke-virtual {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 91
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mNativeAd:Lcom/anythink/nativead/api/NativeAd;

    invoke-virtual {v0, p0}, Lcom/anythink/nativead/api/NativeAd;->recordImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 93
    :cond_14
    return-void
.end method

.method protected renderView(Lcom/anythink/nativead/api/NativeAd;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0, p0}, Lcom/anythink/nativead/api/ATNativeAdView;->unregisterView(Landroid/view/ViewGroup;)V

    .line 44
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mCustomAdView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mCustomAdView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 47
    :cond_c
    invoke-virtual {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->removeAllViews()V

    .line 49
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mNativeAd:Lcom/anythink/nativead/api/NativeAd;

    .line 50
    iget-object v0, p1, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    .line 53
    :try_start_15
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0, p0}, Lcom/anythink/nativead/unitgroup/a;->clear(Landroid/view/View;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_40

    .line 58
    :goto_1a
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mCustomAdView:Landroid/view/ViewGroup;

    .line 60
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mCustomAdView:Landroid/view/ViewGroup;

    if-nez v0, :cond_45

    .line 61
    invoke-virtual {p0, p2}, Lcom/anythink/nativead/api/ATNativeAdView;->addView(Landroid/view/View;)V

    .line 67
    :goto_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mHasSendImpression:Z

    .line 69
    iget-boolean v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mIsInWindow:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mNativeAd:Lcom/anythink/nativead/api/NativeAd;

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/anythink/nativead/api/ATNativeAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3f

    .line 70
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mNativeAd:Lcom/anythink/nativead/api/NativeAd;

    invoke-virtual {v0, p0}, Lcom/anythink/nativead/api/NativeAd;->recordImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 72
    :cond_3f
    return-void

    .line 55
    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    .line 63
    :cond_45
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mCustomAdView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeAdView;->mCustomAdView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/api/ATNativeAdView;->addView(Landroid/view/View;)V

    goto :goto_29
.end method
