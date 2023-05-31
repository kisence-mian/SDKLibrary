.class Lcom/kwad/sdk/draw/view/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/draw/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/view/c;->getVideoPlayCallback()Lcom/kwad/sdk/draw/view/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/view/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/view/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->n(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->h(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v1}, Lcom/kwad/sdk/draw/view/c;->n(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/draw/view/c$c$a;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/draw/view/c$c$a;-><init>(Lcom/kwad/sdk/draw/view/c$c;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->i(Lcom/kwad/sdk/draw/view/c;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->j(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawCardApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->h(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public a(J)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/draw/view/c;->a(Lcom/kwad/sdk/draw/view/c;J)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->p(Lcom/kwad/sdk/draw/view/c;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->q(Lcom/kwad/sdk/draw/view/c;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->c(Lcom/kwad/sdk/draw/view/c;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2b

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->m(Lcom/kwad/sdk/draw/view/c;)V

    goto :goto_17

    :cond_2b
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->d(Lcom/kwad/sdk/draw/view/c;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->e(Lcom/kwad/sdk/draw/view/c;)V

    goto :goto_17
.end method

.method public onVideoPlayStart()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->f(Lcom/kwad/sdk/draw/view/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->g(Lcom/kwad/sdk/draw/view/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->n(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->h(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->h(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
