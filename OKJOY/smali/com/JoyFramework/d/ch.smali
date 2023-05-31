.class Lcom/JoyFramework/d/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/ce;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ce;)V
    .registers 2

    .prologue
    .line 406
    iput-object p1, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 428
    const-string v0, "TopOnUtil-insert"

    const-string v1, "preLoad-onInterstitialAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 430
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdClick(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 432
    :cond_1a
    return-void
.end method

.method public onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 444
    const-string v0, "TopOnUtil-insert"

    const-string v1, "preLoad-onInterstitialAdClose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 446
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdClose(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 448
    :cond_1a
    return-void
.end method

.method public onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 417
    :try_start_0
    const-string v0, "TopOnUtil-insert"

    const-string v1, "preLoad-onInterstitialAdLoadFail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 419
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 424
    :cond_1e
    :goto_1e
    return-void

    .line 421
    :catch_1f
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public onInterstitialAdLoaded()V
    .registers 3

    .prologue
    .line 410
    const-string v0, "TopOnUtil-insert"

    const-string v1, "preLoad-onInterstitialAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method public onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 436
    const-string v0, "TopOnUtil-insert"

    const-string v1, "preLoad-onInterstitialAdShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 438
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdShow(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 440
    :cond_1a
    return-void
.end method

.method public onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 457
    const-string v0, "TopOnUtil-insert"

    const-string v1, "preLoad-onInterstitialAdVideoEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method public onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 463
    :try_start_0
    const-string v0, "TopOnUtil-insert"

    const-string v1, "preLoad-onInterstitialAdVideoError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 465
    iget-object v0, p0, Lcom/JoyFramework/d/ch;->a:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 470
    :cond_1e
    :goto_1e
    return-void

    .line 467
    :catch_1f
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 452
    const-string v0, "TopOnUtil-insert"

    const-string v1, "preLoad-onInterstitialAdVideoStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method
