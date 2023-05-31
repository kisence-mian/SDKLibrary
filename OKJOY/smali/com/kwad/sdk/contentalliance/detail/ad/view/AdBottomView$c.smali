.class Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;
.super Lcom/kwad/sdk/contentalliance/detail/video/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->getVideoPlayStateListener()Lcom/kwad/sdk/contentalliance/detail/video/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->n(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_13

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->o(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->p(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_26

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->k(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    goto :goto_12

    :cond_26
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->c(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->d(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    goto :goto_12
.end method

.method public d()V
    .registers 5

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->l(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c$a;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->g(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->h(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawCardApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onVideoPlayStart()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->e(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
