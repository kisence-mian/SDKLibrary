.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/toutiao/TTATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/api/ATMediationSetting;

.field final synthetic c:I

.field final synthetic d:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Landroid/content/Context;Lcom/anythink/core/api/ATMediationSetting;I)V
    .registers 5

    .prologue
    .line 260
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->d:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->b:Lcom/anythink/core/api/ATMediationSetting;

    iput p4, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->d:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->b:Lcom/anythink/core/api/ATMediationSetting;

    iget v3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Landroid/content/Context;Lcom/anythink/core/api/ATMediationSetting;I)V

    .line 264
    return-void
.end method
