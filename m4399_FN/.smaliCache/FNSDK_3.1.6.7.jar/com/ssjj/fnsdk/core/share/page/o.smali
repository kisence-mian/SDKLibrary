.class Lcom/ssjj/fnsdk/core/share/page/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShowText(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->showText(Ljava/lang/String;)Z

    goto :goto_16

    :cond_d
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->hideText(Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method public onHide(F)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->j(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->k(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setPivotX(F)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setPivotY(F)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setScaleX(F)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setScaleY(F)V

    return-void
.end method

.method public onShare()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->getShareTexts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;->onShare(Ljava/util/List;)V

    :cond_1b
    return-void
.end method

.method public onShow(F)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->j(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->k(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setPivotX(F)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setPivotY(F)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setScaleX(F)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/o;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setScaleY(F)V

    return-void
.end method
