.class public Lcom/kwad/sdk/b/d/g/a;
.super Lcom/kwad/sdk/b/d/d;
.source ""


# instance fields
.field private f:Lcom/ksad/lottie/LottieAnimationView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/kwad/sdk/b/d/a;

.field private j:Lcom/kwad/sdk/contentalliance/home/viewpager/b;

.field private k:Z

.field private l:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

.field private m:Lcom/kwad/sdk/b/d/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/b/d/g/a$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/d/g/a$b;-><init>(Lcom/kwad/sdk/b/d/g/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->l:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    new-instance v0, Lcom/kwad/sdk/b/d/g/a$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/d/g/a$c;-><init>(Lcom/kwad/sdk/b/d/g/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->m:Lcom/kwad/sdk/b/d/b;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/d/g/a;)Lcom/kwad/sdk/b/d/a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->i:Lcom/kwad/sdk/b/d/a;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/b/d/g/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/b/d/g/a;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/b/d/g/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/a;->n()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/b/d/g/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/g/a;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/kwad/sdk/b/d/g/a;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/kwad/sdk/b/d/g/a;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/kwad/sdk/b/d/g/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/a;->m()V

    return-void
.end method

.method static synthetic g(Lcom/kwad/sdk/b/d/g/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/a;->l()V

    return-void
.end method

.method private l()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/a;->p()V

    :goto_d
    return-void

    :cond_e
    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/a;->o()V

    goto :goto_d
.end method

.method private m()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    :cond_f
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->c()V

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->g:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private o()V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_loading_retry_when_disconnected"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->i:Lcom/kwad/sdk/b/d/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/d/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_19
.end method

.method private p()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/a;->n()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->i:Lcom/kwad/sdk/b/d/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/d/a;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_b
.end method


# virtual methods
.method protected g()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/d/d;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/d;->e:Lcom/kwad/sdk/b/d/e;

    iget-object v0, v0, Lcom/kwad/sdk/b/d/e;->b:Lcom/kwad/sdk/b/d/a;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->i:Lcom/kwad/sdk/b/d/a;

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->i:Lcom/kwad/sdk/b/d/a;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/a;->m:Lcom/kwad/sdk/b/d/b;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/d/a;->a(Lcom/kwad/sdk/b/d/b;)V

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/g/a;->n()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/kwad/sdk/b/d/g/a$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/b/d/g/a$a;-><init>(Lcom/kwad/sdk/b/d/g/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->j:Lcom/kwad/sdk/contentalliance/home/viewpager/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/a;->l:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->a(Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;)V

    return-void
.end method

.method protected h()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "ksad_center_loading__animation_view"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    const-string v0, "ksad_error_container"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->g:Landroid/view/ViewGroup;

    const-string v0, "ksad_retry_btn"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->h:Landroid/widget/TextView;

    const-string v0, "ksad_slide_play_view_pager"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->j:Lcom/kwad/sdk/contentalliance/home/viewpager/b;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_detail_loading_amin_middle"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->i:Lcom/kwad/sdk/b/d/a;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/a;->m:Lcom/kwad/sdk/b/d/b;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/d/a;->b(Lcom/kwad/sdk/b/d/b;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->f:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a;->j:Lcom/kwad/sdk/contentalliance/home/viewpager/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/a;->l:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->b(Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;)V

    return-void
.end method
