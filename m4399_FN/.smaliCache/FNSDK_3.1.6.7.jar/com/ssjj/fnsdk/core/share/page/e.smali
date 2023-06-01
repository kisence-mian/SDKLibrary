.class Lcom/ssjj/fnsdk/core/share/page/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/PopView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/PopView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/e;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/e;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/e;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/e;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/e;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->getY()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;->onShow(F)V

    :cond_22
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/e;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->a(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/e;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->j(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_36
    return-void
.end method
