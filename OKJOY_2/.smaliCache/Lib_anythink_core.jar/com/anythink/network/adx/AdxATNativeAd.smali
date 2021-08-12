.class public Lcom/anythink/network/adx/AdxATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Lcom/anythink/basead/e/h;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/e/h;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->b:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    .line 30
    new-instance p1, Lcom/anythink/network/adx/AdxATNativeAd$1;

    invoke-direct {p1, p0}, Lcom/anythink/network/adx/AdxATNativeAd$1;-><init>(Lcom/anythink/network/adx/AdxATNativeAd;)V

    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/h;->a(Lcom/anythink/basead/f/a;)V

    .line 52
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    invoke-virtual {p1}, Lcom/anythink/basead/e/h;->a()Lcom/anythink/core/common/d/h;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/basead/b;->a(Lcom/anythink/core/common/d/h;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 53
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    invoke-virtual {p1}, Lcom/anythink/basead/e/h;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setAdChoiceIconUrl(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    invoke-virtual {p1}, Lcom/anythink/basead/e/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    invoke-virtual {p1}, Lcom/anythink/basead/e/h;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    invoke-virtual {p1}, Lcom/anythink/basead/e/h;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    invoke-virtual {p1}, Lcom/anythink/basead/e/h;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    invoke-virtual {p1}, Lcom/anythink/basead/e/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .line 90
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    if-eqz p1, :cond_7

    .line 91
    invoke-virtual {p1}, Lcom/anythink/basead/e/h;->h()V

    .line 93
    :cond_7
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_d

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/e/h;->a(Lcom/anythink/basead/f/a;)V

    .line 99
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    invoke-virtual {v0}, Lcom/anythink/basead/e/h;->i()V

    .line 101
    :cond_d
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 2

    .line 63
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_c

    .line 69
    new-instance v0, Lcom/anythink/basead/ui/OwnNativeAdView;

    iget-object v1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/OwnNativeAdView;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 71
    :cond_c
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    .line 83
    iget-object p2, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    if-eqz p2, :cond_7

    .line 84
    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/h;->a(Landroid/view/View;)V

    .line 86
    :cond_7
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4
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

    .line 76
    iget-object p3, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/e/h;

    if-eqz p3, :cond_7

    .line 77
    invoke-virtual {p3, p1, p2}, Lcom/anythink/basead/e/h;->a(Landroid/view/View;Ljava/util/List;)V

    .line 79
    :cond_7
    return-void
.end method
