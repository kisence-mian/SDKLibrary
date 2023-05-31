.class Lcom/JoyFramework/d/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/banner/api/ATBannerListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/anythink/banner/api/ATBannerView;

.field final synthetic c:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic d:Lcom/JoyFramework/d/ce$b;

.field final synthetic e:Landroid/view/ViewGroup;

.field final synthetic f:Lcom/JoyFramework/d/ce;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ce;Landroid/view/ViewGroup;Lcom/anythink/banner/api/ATBannerView;Landroid/widget/FrameLayout$LayoutParams;Lcom/JoyFramework/d/ce$b;Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 525
    iput-object p1, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    iput-object p2, p0, Lcom/JoyFramework/d/cj;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/JoyFramework/d/cj;->b:Lcom/anythink/banner/api/ATBannerView;

    iput-object p4, p0, Lcom/JoyFramework/d/cj;->c:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p5, p0, Lcom/JoyFramework/d/cj;->d:Lcom/JoyFramework/d/ce$b;

    iput-object p6, p0, Lcom/JoyFramework/d/cj;->e:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerAutoRefreshFail(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .prologue
    .line 603
    return-void
.end method

.method public onBannerAutoRefreshed(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 2

    .prologue
    .line 599
    return-void
.end method

.method public onBannerClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 559
    :try_start_0
    const-string v0, "TopOnUtil-banner"

    const-string v1, "onBannerClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 561
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Banner:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdClick(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 566
    :cond_1a
    :goto_1a
    return-void

    .line 563
    :catch_1b
    move-exception v0

    .line 564
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public onBannerClose(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 583
    :try_start_0
    const-string v0, "TopOnUtil-banner"

    const-string v1, "onBannerClose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 585
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 586
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/JoyFramework/d/cj;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 589
    :cond_16
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 590
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Banner:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdClose(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 595
    :cond_29
    :goto_29
    return-void

    .line 592
    :catch_2a
    move-exception v0

    .line 593
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public onBannerFailed(Lcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 545
    :try_start_0
    const-string v0, "TopOnUtil-banner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBannerFailed\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 547
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Banner:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V

    .line 549
    :cond_33
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->b(Lcom/JoyFramework/d/ce;Z)Z

    .line 550
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/d/cj;->d:Lcom/JoyFramework/d/ce$b;

    invoke-static {v0, v1, p1}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    .line 554
    :goto_40
    return-void

    .line 551
    :catch_41
    move-exception v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method public onBannerLoaded()V
    .registers 4

    .prologue
    .line 529
    :try_start_0
    const-string v0, "TopOnUtil-banner"

    const-string v1, "onBannerLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 531
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->b:Lcom/anythink/banner/api/ATBannerView;

    if-eqz v0, :cond_1e

    .line 532
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/JoyFramework/d/cj;->b:Lcom/anythink/banner/api/ATBannerView;

    iget-object v2, p0, Lcom/JoyFramework/d/cj;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->b(Lcom/JoyFramework/d/ce;Z)Z

    .line 536
    :cond_1e
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/d/cj;->d:Lcom/JoyFramework/d/ce$b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 540
    :goto_26
    return-void

    .line 537
    :catch_27
    move-exception v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public onBannerShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 571
    :try_start_0
    const-string v0, "TopOnUtil-banner"

    const-string v1, "onBannerShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 573
    iget-object v0, p0, Lcom/JoyFramework/d/cj;->f:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Banner:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdShow(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 578
    :cond_1a
    :goto_1a
    return-void

    .line 575
    :catch_1b
    move-exception v0

    .line 576
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method
