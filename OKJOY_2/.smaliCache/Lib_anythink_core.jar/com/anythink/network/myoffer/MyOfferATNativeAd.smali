.class public Lcom/anythink/network/myoffer/MyOfferATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Lcom/anythink/basead/g/e;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/g/e;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->b:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    .line 27
    new-instance p1, Lcom/anythink/network/myoffer/MyOfferATNativeAd$1;

    invoke-direct {p1, p0}, Lcom/anythink/network/myoffer/MyOfferATNativeAd$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATNativeAd;)V

    invoke-virtual {p2, p1}, Lcom/anythink/basead/g/e;->a(Lcom/anythink/basead/f/a;)V

    .line 50
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    invoke-virtual {p1}, Lcom/anythink/basead/g/e;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setAdChoiceIconUrl(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    invoke-virtual {p1}, Lcom/anythink/basead/g/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    invoke-virtual {p1}, Lcom/anythink/basead/g/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    invoke-virtual {p1}, Lcom/anythink/basead/g/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    invoke-virtual {p1}, Lcom/anythink/basead/g/e;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    invoke-virtual {p1}, Lcom/anythink/basead/g/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .line 79
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    if-eqz p1, :cond_7

    .line 80
    invoke-virtual {p1}, Lcom/anythink/basead/g/e;->j()V

    .line 82
    :cond_7
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    if-eqz v0, :cond_d

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/g/e;->a(Lcom/anythink/basead/f/a;)V

    .line 88
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    invoke-virtual {v0}, Lcom/anythink/basead/g/e;->k()V

    .line 90
    :cond_d
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 2

    .line 60
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    .line 72
    iget-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    if-eqz p2, :cond_7

    .line 73
    invoke-virtual {p2, p1}, Lcom/anythink/basead/g/e;->a(Landroid/view/View;)V

    .line 75
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

    .line 65
    iget-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/g/e;

    if-eqz p3, :cond_7

    .line 66
    invoke-virtual {p3, p1, p2}, Lcom/anythink/basead/g/e;->a(Landroid/view/View;Ljava/util/List;)V

    .line 68
    :cond_7
    return-void
.end method
