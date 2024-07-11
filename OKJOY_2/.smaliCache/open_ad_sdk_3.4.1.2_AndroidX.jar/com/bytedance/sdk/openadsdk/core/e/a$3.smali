.class Lcom/bytedance/sdk/openadsdk/core/e/a$3;
.super Ljava/lang/Object;
.source "TTNativeAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/e/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .registers 4

    .line 527
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 528
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 530
    :cond_13
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 534
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 535
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 537
    :cond_13
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 6

    .line 542
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b(Lcom/bytedance/sdk/openadsdk/core/e/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 543
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c(Lcom/bytedance/sdk/openadsdk/core/e/a;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;Landroid/view/View;)Landroid/view/View;

    .line 544
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;F)F

    .line 545
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b(Lcom/bytedance/sdk/openadsdk/core/e/a;F)F

    .line 546
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->d(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 547
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->d(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c(Lcom/bytedance/sdk/openadsdk/core/e/a;)Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result p3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/e/a;->m:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 548
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v0

    const/4 v1, 0x0

    .line 547
    invoke-interface {p1, p2, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;->onRenderSuccess(Landroid/view/View;FFZ)V

    .line 550
    :cond_51
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 6

    .line 554
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b(Lcom/bytedance/sdk/openadsdk/core/e/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 555
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->e(Lcom/bytedance/sdk/openadsdk/core/e/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 556
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;Landroid/view/View;)Landroid/view/View;

    .line 557
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;F)F

    .line 558
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b(Lcom/bytedance/sdk/openadsdk/core/e/a;F)F

    .line 559
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->d(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 560
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->d(Lcom/bytedance/sdk/openadsdk/core/e/a;)Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;->onRenderSuccess(Landroid/view/View;FFZ)V

    .line 562
    :cond_33
    return-void
.end method
