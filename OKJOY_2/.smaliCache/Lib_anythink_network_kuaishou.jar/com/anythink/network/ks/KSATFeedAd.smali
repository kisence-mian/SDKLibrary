.class public Lcom/anythink/network/ks/KSATFeedAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/kwad/sdk/api/KsFeedAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/api/KsFeedAd;Z)V
    .registers 4

    .line 28
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/anythink/network/ks/KSATFeedAd;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/api/KsFeedAd;

    .line 32
    nop

    .line 1036
    invoke-interface {p2, p3}, Lcom/kwad/sdk/api/KsFeedAd;->setVideoSoundEnable(Z)V

    .line 33
    return-void
.end method

.method private a(Z)V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/api/KsFeedAd;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/KsFeedAd;->setVideoSoundEnable(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .line 81
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/api/KsFeedAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 86
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsFeedAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;)V

    .line 87
    iput-object v1, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/api/KsFeedAd;

    .line 89
    :cond_a
    iput-object v1, p0, Lcom/anythink/network/ks/KSATFeedAd;->a:Landroid/content/Context;

    .line 90
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 3

    .line 47
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/api/KsFeedAd;

    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd;->a:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsFeedAd;->getFeedView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 48
    :catch_9
    move-exception p1

    .line 51
    const/4 p1, 0x0

    return-object p1
.end method

.method public isNativeExpress()Z
    .registers 2

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/anythink/network/ks/KSATFeedAd;->prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 77
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

    .line 56
    iget-object p1, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/api/KsFeedAd;

    new-instance p2, Lcom/anythink/network/ks/KSATFeedAd$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/ks/KSATFeedAd$1;-><init>(Lcom/anythink/network/ks/KSATFeedAd;)V

    invoke-interface {p1, p2}, Lcom/kwad/sdk/api/KsFeedAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;)V

    .line 72
    return-void
.end method
