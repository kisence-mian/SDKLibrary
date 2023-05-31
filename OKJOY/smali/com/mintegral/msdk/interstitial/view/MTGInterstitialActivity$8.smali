.class final Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;
.super Ljava/lang/Object;
.source "MTGInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;
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
    .line 355
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 360
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "mWaitJsInvokeTask \u5f00\u59cb\u6267\u884crun\u65b9\u6cd5"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    iget-boolean v0, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mIsMtgPage:Z

    if-eqz v0, :cond_15

    .line 362
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "mWaitJsInvokeTask getinfo \u5df2\u8c03\u7528 return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_14
    return-void

    .line 367
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->i(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->i(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 368
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->j(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    .line 371
    :cond_2e
    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->i(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    iget-object v2, v2, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/interstitial/b/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->k(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 373
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "mWaitJsInvokeTask webview \u5df2\u52a0\u8f7d\u8d85\u65f6 return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 376
    :cond_4f
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->l(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z

    .line 378
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->hideLoading()V

    .line 379
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->showWebView()V

    .line 381
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "mWaitJsInvokeTask \u6700\u7ec8\u663e\u793a\u975emtg\u7684\u9875\u9762 "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method
