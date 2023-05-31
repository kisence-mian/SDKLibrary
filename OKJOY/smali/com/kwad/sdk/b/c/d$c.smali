.class Lcom/kwad/sdk/b/c/d$c;
.super Lcom/kwad/sdk/contentalliance/detail/video/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/c/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/c/d$c;->a:Lcom/kwad/sdk/b/c/d;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$c;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->a(Lcom/kwad/sdk/b/c/d;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->a()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$c;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->c(Lcom/kwad/sdk/b/c/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1f
    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$c;->a:Lcom/kwad/sdk/b/c/d;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->l()V

    goto :goto_c

    :cond_29
    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$c;->a:Lcom/kwad/sdk/b/c/d;

    iget-object v1, v0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v1, v1, Lcom/kwad/sdk/b/c/c;->f:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->d(Lcom/kwad/sdk/b/c/d;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method public onVideoPlayStart()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$c;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

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

    return-void
.end method
