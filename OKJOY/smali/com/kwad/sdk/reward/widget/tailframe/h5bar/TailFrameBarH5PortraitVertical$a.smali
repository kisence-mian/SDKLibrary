.class Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical$a;->a:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical$a;->a:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;->a(Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical$a;->a:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;->a(Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitVertical;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    return-void
.end method
