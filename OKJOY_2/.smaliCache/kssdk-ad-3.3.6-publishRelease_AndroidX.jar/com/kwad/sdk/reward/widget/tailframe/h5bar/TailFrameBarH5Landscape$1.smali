.class Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;->a(Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;->a(Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    return-void
.end method
