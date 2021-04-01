.class public Lcom/kwad/sdk/b/c/f/b/a;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# instance fields
.field private f:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

.field private g:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private h:Lcom/kwad/sdk/contentalliance/detail/video/b;

.field private i:Lcom/kwad/sdk/contentalliance/detail/video/e;

.field private j:Lcom/kwad/sdk/b/e/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    new-instance v0, Lcom/kwad/sdk/b/c/f/b/a$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/f/b/a$a;-><init>(Lcom/kwad/sdk/b/c/f/b/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->j:Lcom/kwad/sdk/b/e/a;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/c/f/b/a;)Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->f:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    return-object v0
.end method


# virtual methods
.method protected g()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/a;->f:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    iget-object v2, p0, Lcom/kwad/sdk/b/c/f/b/a;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v1, v2, v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/response/model/AdInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->f:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->f:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->getVideoPlayStateListener()Lcom/kwad/sdk/contentalliance/detail/video/e;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->i:Lcom/kwad/sdk/contentalliance/detail/video/e;

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->h:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->h:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/a;->i:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/a;->j:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method protected h()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "ksad_bottom_view"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->f:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->f:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a;->h:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/a;->i:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/a;->j:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method
