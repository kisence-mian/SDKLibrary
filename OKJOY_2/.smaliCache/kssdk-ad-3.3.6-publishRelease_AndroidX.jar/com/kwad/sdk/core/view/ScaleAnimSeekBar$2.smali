.class Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->a(ZI)V
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

    iput-object p1, p0, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$2;->a:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

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

    iget-object v0, p0, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$2;->a:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    float-to-int v1, p1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->b(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->a(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;I)I

    iget-object v0, p0, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$2;->a:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->a(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;F)V

    return-void
.end method
