.class Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$3;->a:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$3;->a:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->b(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;F)F

    iget-object p1, p0, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$3;->a:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->requestLayout()V

    return-void
.end method
