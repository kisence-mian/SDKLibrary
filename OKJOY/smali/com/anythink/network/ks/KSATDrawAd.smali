.class public Lcom/anythink/network/ks/KSATDrawAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/kwad/sdk/export/i/KsDrawAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/export/i/KsDrawAd;)V
    .registers 5

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/anythink/network/ks/KSATDrawAd;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/anythink/network/ks/KSATDrawAd;->b:Lcom/kwad/sdk/export/i/KsDrawAd;

    .line 1028
    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd;->b:Lcom/kwad/sdk/export/i/KsDrawAd;

    new-instance v1, Lcom/anythink/network/ks/KSATDrawAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/ks/KSATDrawAd$1;-><init>(Lcom/anythink/network/ks/KSATDrawAd;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/KsDrawAd;->setAdInteractionListener(Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;)V

    .line 24
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd;->b:Lcom/kwad/sdk/export/i/KsDrawAd;

    new-instance v1, Lcom/anythink/network/ks/KSATDrawAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/ks/KSATDrawAd$1;-><init>(Lcom/anythink/network/ks/KSATDrawAd;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/KsDrawAd;->setAdInteractionListener(Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 4

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd;->b:Lcom/kwad/sdk/export/i/KsDrawAd;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATDrawAd;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/KsDrawAd;->getDrawView(Landroid/content/Context;)Landroid/view/View;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 53
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
    .line 43
    const/4 v0, 0x1

    return v0
.end method
