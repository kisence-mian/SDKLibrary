.class public Lcom/kwad/sdk/contentalliance/detail/photo/c/d;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# instance fields
.field private f:Landroid/widget/ProgressBar;

.field private g:Lcom/kwad/sdk/contentalliance/detail/video/b;

.field private h:Lcom/kwad/sdk/b/e/a;

.field private i:Lcom/kwad/sdk/contentalliance/detail/video/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->h:Lcom/kwad/sdk/b/e/a;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$b;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->i:Lcom/kwad/sdk/contentalliance/detail/video/e;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)Lcom/kwad/sdk/contentalliance/detail/video/b;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    return-object v0
.end method


# virtual methods
.method protected g()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v1, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/c/a/a;->e()I

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->n(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-int/lit16 v0, v1, 0x3e8

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_25

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->h:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->i:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    goto :goto_24
.end method

.method protected h()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "ksad_video_progress_bar"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->f:Landroid/widget/ProgressBar;

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->h:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->i:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
