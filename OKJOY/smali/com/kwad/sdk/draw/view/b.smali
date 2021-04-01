.class public Lcom/kwad/sdk/draw/view/b;
.super Lcom/kwad/sdk/c/h/e/c;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/draw/view/b$a;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/kwad/sdk/draw/view/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/c/h/e/d;)V
    .registers 4
    .param p2    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/sdk/c/h/e/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Lcom/kwad/sdk/c/h/e/c;-><init>(Landroid/content/Context;Lcom/kwad/sdk/c/h/e/d;)V

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/b;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/b;->k()V

    return-void
.end method

.method private k()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/b;->d:Landroid/content/Context;

    const-string v2, "ksad_draw_video_palyer_controller"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->d:Landroid/content/Context;

    const-string v1, "ksad_video_network_unavailable"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/b;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->d:Landroid/content/Context;

    const-string v1, "ksad_video_error_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/b;->f:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 4

    const/16 v1, 0x8

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2e

    packed-switch p1, :pswitch_data_3a

    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->g:Lcom/kwad/sdk/draw/view/b$a;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/kwad/sdk/draw/view/b$a;->onVideoPlayStart()V

    :cond_10
    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/c;->d()V

    goto :goto_8

    :pswitch_14
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    :pswitch_1f
    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/c;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    :cond_2e
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->g:Lcom/kwad/sdk/draw/view/b$a;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Lcom/kwad/sdk/draw/view/b$a;->a()V

    :cond_35
    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/c;->b()V

    goto :goto_8

    nop

    :pswitch_data_3a
    .packed-switch -0x1
        :pswitch_1f
        :pswitch_8
        :pswitch_14
        :pswitch_9
    .end packed-switch
.end method

.method protected c()V
    .registers 3

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/c;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected e()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v2}, Lcom/kwad/sdk/c/h/e/d;->getDuration()J

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/b;->g:Lcom/kwad/sdk/draw/view/b$a;

    if-eqz v2, :cond_12

    invoke-interface {v2, v0, v1}, Lcom/kwad/sdk/draw/view/b$a;->a(J)V

    :cond_12
    return-void
.end method

.method protected f()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected g()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->a()V

    return-void
.end method

.method protected h()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->c()V

    return-void
.end method

.method protected i()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected j()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/b;->i()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/b;->f()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->start()V

    goto :goto_13

    :cond_1d
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->f()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_2d
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->d()V

    goto :goto_13
.end method

.method public setVideoPlayCallback(Lcom/kwad/sdk/draw/view/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/b;->g:Lcom/kwad/sdk/draw/view/b$a;

    return-void
.end method
