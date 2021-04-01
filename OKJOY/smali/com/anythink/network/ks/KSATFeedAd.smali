.class public Lcom/anythink/network/ks/KSATFeedAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/kwad/sdk/export/i/KsFeedAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/export/i/KsFeedAd;Z)V
    .registers 6

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/anythink/network/ks/KSATFeedAd;->a:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/export/i/KsFeedAd;

    .line 1026
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/export/i/KsFeedAd;

    invoke-interface {v0, p3}, Lcom/kwad/sdk/export/i/KsFeedAd;->setVideoSoundEnable(Z)V

    .line 1028
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/export/i/KsFeedAd;

    new-instance v1, Lcom/anythink/network/ks/KSATFeedAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/ks/KSATFeedAd$1;-><init>(Lcom/anythink/network/ks/KSATFeedAd;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/KsFeedAd;->setAdInteractionListener(Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;)V

    .line 23
    return-void
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/export/i/KsFeedAd;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/export/i/KsFeedAd;->setVideoSoundEnable(Z)V

    .line 28
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/export/i/KsFeedAd;

    new-instance v1, Lcom/anythink/network/ks/KSATFeedAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/ks/KSATFeedAd$1;-><init>(Lcom/anythink/network/ks/KSATFeedAd;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/KsFeedAd;->setAdInteractionListener(Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 4

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd;->b:Lcom/kwad/sdk/export/i/KsFeedAd;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATFeedAd;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/KsFeedAd;->getFeedView(Landroid/content/Context;)Landroid/view/View;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 58
    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isNativeExpress()Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method
