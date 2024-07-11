.class Lcom/kwad/sdk/reward/b/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/b;->a(II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic c:Lcom/kwad/sdk/reward/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b;Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b$3;->c:Lcom/kwad/sdk/reward/b/b;

    iput-object p2, p0, Lcom/kwad/sdk/reward/b/b$3;->a:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lcom/kwad/sdk/reward/b/b$3;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float v0, p1

    const v1, 0x3fe38e39

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b$3;->a:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_25

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b$3;->a:Landroid/view/ViewGroup$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b$3;->c:Lcom/kwad/sdk/reward/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b;->b(Lcom/kwad/sdk/reward/b/b;)Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_25
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b$3;->b:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_36

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b$3;->c:Lcom/kwad/sdk/reward/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b;->c(Lcom/kwad/sdk/reward/b/b;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b$3;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_36
    return-void
.end method
