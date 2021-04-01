.class final Lcom/anythink/interstitial/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/a/a;->a(Landroid/content/Context;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/core/api/ATMediationSetting;

.field final synthetic e:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
    .registers 6

    .prologue
    .line 45
    iput-object p1, p0, Lcom/anythink/interstitial/a/a/a$1;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iput-object p2, p0, Lcom/anythink/interstitial/a/a/a$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/interstitial/a/a/a$1;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/anythink/interstitial/a/a/a$1;->d:Lcom/anythink/core/api/ATMediationSetting;

    iput-object p5, p0, Lcom/anythink/interstitial/a/a/a$1;->e:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/anythink/interstitial/a/a/a$1;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a/a$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/interstitial/a/a/a$1;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/anythink/interstitial/a/a/a$1;->d:Lcom/anythink/core/api/ATMediationSetting;

    iget-object v4, p0, Lcom/anythink/interstitial/a/a/a$1;->e:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 58
    :goto_d
    return-void

    .line 53
    :catch_e
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    const-string v1, "2006"

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/anythink/interstitial/a/a/a$1;->e:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    iget-object v2, p0, Lcom/anythink/interstitial/a/a/a$1;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_d
.end method
