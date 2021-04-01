.class public Lcom/kwad/sdk/b/c/e;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# instance fields
.field private f:Lcom/ksad/lottie/LottieAnimationView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Lcom/kwad/sdk/b/e/a;

.field private l:Ljava/lang/Runnable;

.field private m:Lcom/kwad/sdk/contentalliance/detail/video/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/e;->j:Z

    new-instance v0, Lcom/kwad/sdk/b/c/e$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/e$a;-><init>(Lcom/kwad/sdk/b/c/e;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/e;->k:Lcom/kwad/sdk/b/e/a;

    new-instance v0, Lcom/kwad/sdk/b/c/e$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/e$c;-><init>(Lcom/kwad/sdk/b/c/e;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/e;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/kwad/sdk/b/c/e$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/e$d;-><init>(Lcom/kwad/sdk/b/c/e;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/e;->m:Lcom/kwad/sdk/contentalliance/detail/video/e;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/b/c/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/b/c/e;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/b/c/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/e;->m()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/b/c/e;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/b/c/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/e;->l()V

    return-void
.end method

.method static synthetic e(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/kwad/sdk/b/c/e;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic h(Lcom/kwad/sdk/b/c/e;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/e;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/kwad/sdk/b/c/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/e;->n()V

    return-void
.end method

.method static synthetic j(Lcom/kwad/sdk/b/c/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/e;->o()V

    return-void
.end method

.method static synthetic k(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/e;->o()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_24
    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->c()V

    :cond_36
    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->g:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_13
.end method

.method static synthetic m(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_loading_retry_when_disconnected"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcom/kwad/sdk/b/c/e;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method private n()V
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/e;->l()V

    :goto_d
    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/kwad/sdk/b/c/e;->o()V

    goto :goto_d
.end method

.method private o()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected g()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    const-string v0, "DetailLoadingPresenter"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/kwad/sdk/b/c/e$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/b/c/e$b;-><init>(Lcom/kwad/sdk/b/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->k:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->m:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    return-void
.end method

.method protected h()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/e;->i:Landroid/os/Handler;

    const-string v0, "ksad_error_container"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/e;->g:Landroid/view/ViewGroup;

    const-string v0, "ksad_center_loading__animation_view"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_detail_loading_amin_middle"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    const-string v0, "ksad_retry_btn"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/e;->h:Landroid/widget/TextView;

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e;->i:Landroid/os/Handler;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->k:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e;->m:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    :cond_1f
    return-void
.end method
