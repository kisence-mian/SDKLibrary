.class Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;I)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    iput p2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->a:I

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->b(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;)Lcom/ksad/lottie/LottieAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->a:I

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->b(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;)Lcom/ksad/lottie/LottieAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f$a;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a(Lcom/kwad/sdk/contentalliance/detail/photo/d/f;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
