.class public Lcom/kwad/sdk/c/h/e/a;
.super Lcom/kwad/sdk/c/h/e/c;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/c/h/e/a$a;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private f:Z

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/ViewGroup;

.field private n:Lcom/kwad/sdk/c/h/e/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/c/h/e/d;)V
    .registers 5
    .param p2    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/sdk/c/h/e/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Lcom/kwad/sdk/c/h/e/c;-><init>(Landroid/content/Context;Lcom/kwad/sdk/c/h/e/d;)V

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/a;->m()V

    return-void
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v2, "ksad_feed_video_palyer_controller"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v1, "ksad_data_flow_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v1, "ksad_data_flow_play"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v1, "ksad_video_network_unavailable"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v1, "ksad_video_error_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v1, "ksad_video_progress"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v1, "ksad_video_thumb_image"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->l:Landroid/widget/ImageView;

    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private o()V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v1, "ksad_video_complete_app_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v2, "ksad_app_icon"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v3, "ksad_app_name"

    invoke-static {v2, v3}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v4, "ksad_app_download"

    invoke-static {v3, v4}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kwad/sdk/c/h/e/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v4}, Lcom/kwad/sdk/c/g/b/a;->g(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {v1, v4, v5}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->m:Landroid/view/ViewGroup;

    :goto_5f
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->m:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_66
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v1, "ksad_video_complete_h5_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    const-string v2, "ksad_h5_open"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/c/h/e/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->m:Landroid/view/ViewGroup;

    goto :goto_5f
.end method

.method private setTopBottomVisible(Z)V
    .registers 4

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/a;->k:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x7

    if-eq p1, v0, :cond_45

    packed-switch p1, :pswitch_data_66

    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->n:Lcom/kwad/sdk/c/h/e/a$a;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/a$a;->onVideoPlayStart()V

    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/c/h/e/a;->setTopBottomVisible(Z)V

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/c;->d()V

    goto :goto_9

    :pswitch_19
    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/a;->k()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/a;->l()V

    goto :goto_9

    :pswitch_34
    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/c;->b()V

    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/h/e/a;->setTopBottomVisible(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    :cond_45
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->n:Lcom/kwad/sdk/c/h/e/a$a;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/a$a;->a()V

    :cond_4c
    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/c;->b()V

    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/h/e/a;->setTopBottomVisible(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/a;->o()V

    goto :goto_9

    :pswitch_data_66
    .packed-switch -0x1
        :pswitch_34
        :pswitch_9
        :pswitch_19
        :pswitch_a
    .end packed-switch
.end method

.method protected c()V
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/c;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/a;->k()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/a;->l()V

    return-void
.end method

.method protected e()V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v2}, Lcom/kwad/sdk/c/h/e/d;->getDuration()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v4}, Lcom/kwad/sdk/c/h/e/d;->getBufferPercentage()I

    move-result v4

    iget-object v5, p0, Lcom/kwad/sdk/c/h/e/a;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    long-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    long-to-float v2, v2

    div-float v2, v4, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/kwad/sdk/c/h/e/a;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/kwad/sdk/c/h/e/a;->n:Lcom/kwad/sdk/c/h/e/a$a;

    if-eqz v2, :cond_2b

    invoke-interface {v2, v0, v1}, Lcom/kwad/sdk/c/h/e/a$a;->a(J)V

    :cond_2b
    return-void
.end method

.method protected f()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->i:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected j()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/a;->i()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/a;->f()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksad/download/k/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_1f
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->start()V

    goto :goto_13

    :cond_25
    iget-boolean v0, p0, Lcom/kwad/sdk/c/h/e/a;->f:Z

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/a;->n()V

    goto :goto_13

    :cond_2d
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->f()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_3d
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/e/d;->d()V

    goto :goto_13
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/a;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/c/h/e/a;->f:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/a;->j()V

    :cond_a
    return-void
.end method

.method public setVideoPlayCallback(Lcom/kwad/sdk/c/h/e/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/a;->n:Lcom/kwad/sdk/c/h/e/a$a;

    return-void
.end method
