.class public Lcom/anythink/network/ks/KSATDrawAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/kwad/sdk/api/KsDrawAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/api/KsDrawAd;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/anythink/network/ks/KSATDrawAd;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/anythink/network/ks/KSATDrawAd;->b:Lcom/kwad/sdk/api/KsDrawAd;

    .line 30
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .line 95
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd;->b:Lcom/kwad/sdk/api/KsDrawAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 100
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsDrawAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;)V

    .line 101
    iput-object v1, p0, Lcom/anythink/network/ks/KSATDrawAd;->b:Lcom/kwad/sdk/api/KsDrawAd;

    .line 103
    :cond_a
    iput-object v1, p0, Lcom/anythink/network/ks/KSATDrawAd;->a:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 3

    .line 41
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/ks/KSATDrawAd;->b:Lcom/kwad/sdk/api/KsDrawAd;

    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd;->a:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsDrawAd;->getDrawView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 42
    :catch_9
    move-exception p1

    .line 45
    const/4 p1, 0x0

    return-object p1
.end method

.method public isNativeExpress()Z
    .registers 2

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/anythink/network/ks/KSATDrawAd;->prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 91
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

    .line 50
    iget-object p1, p0, Lcom/anythink/network/ks/KSATDrawAd;->b:Lcom/kwad/sdk/api/KsDrawAd;

    new-instance p2, Lcom/anythink/network/ks/KSATDrawAd$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/ks/KSATDrawAd$1;-><init>(Lcom/anythink/network/ks/KSATDrawAd;)V

    invoke-interface {p1, p2}, Lcom/kwad/sdk/api/KsDrawAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;)V

    .line 86
    return-void
.end method
