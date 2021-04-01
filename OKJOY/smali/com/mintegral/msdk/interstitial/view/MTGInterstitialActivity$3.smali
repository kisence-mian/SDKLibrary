.class final Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$3;
.super Ljava/lang/Object;
.source "MTGInterstitialActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->clickTracking()V
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
    .line 614
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$3;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 663
    return-void
.end method

.method public final onDownloadFinish(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 659
    return-void
.end method

.method public final onDownloadProgress(I)V
    .registers 2

    .prologue
    .line 655
    return-void
.end method

.method public final onDownloadStart(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 651
    return-void
.end method

.method public final onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$3;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->hideLoading()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 647
    :goto_5
    return-void

    .line 645
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public final onInterceptDefaultLoadingDialog()Z
    .registers 2

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public final onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 632
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$3;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->hideLoading()V

    .line 633
    return-void
.end method

.method public final onShowLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 628
    return-void
.end method

.method public final onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 618
    :try_start_0
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "=====showloading"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$3;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->showLoading()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 623
    :goto_c
    return-void

    .line 621
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method
