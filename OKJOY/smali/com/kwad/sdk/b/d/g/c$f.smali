.class Lcom/kwad/sdk/b/d/g/c$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/b/d/g/c;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/d/g/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/g/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/g/c$f;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$f;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$f;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$f;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->j(Lcom/kwad/sdk/b/d/g/c;)Lcom/ksad/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$f;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$f;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$f;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->j(Lcom/kwad/sdk/b/d/g/c;)Lcom/ksad/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
