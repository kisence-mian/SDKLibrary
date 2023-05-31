.class final Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$9;
.super Ljava/lang/Object;
.source "MTGInterstitialActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V
    .registers 2

    .prologue
    .line 398
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$9;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .registers 6

    .prologue
    .line 401
    const-string v0, "MTGInterstitialActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "volume is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$9;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;D)V

    .line 403
    return-void
.end method
