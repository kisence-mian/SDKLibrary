.class public abstract Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;
.super Lcom/anythink/core/api/ATBaseAdAdapter;


# instance fields
.field protected mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public clearImpressionListener()V
    .registers 2

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 27
    return-void
.end method

.method public final internalShow(Landroid/app/Activity;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;)V
    .registers 3

    .line 21
    iput-object p2, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 22
    invoke-virtual {p0, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->show(Landroid/app/Activity;)V

    .line 23
    return-void
.end method

.method public abstract show(Landroid/app/Activity;)V
.end method
