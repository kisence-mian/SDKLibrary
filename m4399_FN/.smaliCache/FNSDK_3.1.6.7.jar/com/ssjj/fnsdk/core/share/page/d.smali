.class Lcom/ssjj/fnsdk/core/share/page/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/PopView;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/PopView;I)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/d;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/d;->b:I

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

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/d;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/d;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/d;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/d;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->getY()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;->onHide(F)V

    :cond_22
    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/d;->b:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/d;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->a(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/d;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->i(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_38
    return-void
.end method
