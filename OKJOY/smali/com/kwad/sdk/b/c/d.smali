.class public Lcom/kwad/sdk/b/c/d;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# instance fields
.field private f:Landroid/widget/ImageView;

.field private g:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private h:Ljava/lang/Runnable;

.field private i:Lcom/kwad/sdk/b/e/a;

.field private j:Lcom/kwad/sdk/contentalliance/detail/video/e;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    new-instance v0, Lcom/kwad/sdk/b/c/d$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/d$a;-><init>(Lcom/kwad/sdk/b/c/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/d;->h:Ljava/lang/Runnable;

    new-instance v0, Lcom/kwad/sdk/b/c/d$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/d$b;-><init>(Lcom/kwad/sdk/b/c/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/d;->i:Lcom/kwad/sdk/b/e/a;

    new-instance v0, Lcom/kwad/sdk/b/c/d$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/d$c;-><init>(Lcom/kwad/sdk/b/c/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/d;->j:Lcom/kwad/sdk/contentalliance/detail/video/e;

    new-instance v0, Lcom/kwad/sdk/b/c/d$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/d$d;-><init>(Lcom/kwad/sdk/b/c/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/d;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/c/d;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/d;
    .registers 2

    invoke-static {p0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static b(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/d;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->x(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/d;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->o(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Lcom/kwad/sdk/core/response/model/d;

    move-result-object v0

    goto :goto_e
.end method

.method static synthetic c(Lcom/kwad/sdk/b/c/d;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/b/c/d;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d;->k:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected g()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/d;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/b/c/d;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/d;->i:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/d;->j:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    return-void
.end method

.method protected h()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "ksad_video_first_frame"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/d;->f:Landroid/widget/ImageView;

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/b/c/d;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->f:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/d;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/d;->i:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/d;->j:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    return-void
.end method
