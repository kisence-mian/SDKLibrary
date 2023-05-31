.class Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->a(Lcom/ksad/lottie/LottieAnimationView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksad/lottie/LottieAnimationView;

.field final synthetic b:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;Lcom/ksad/lottie/LottieAnimationView;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->b:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    iput-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/LottieAnimationView;->b(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->b:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_36

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->a:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->b:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->g(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->b:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->g(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_36
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$f;->a:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method
