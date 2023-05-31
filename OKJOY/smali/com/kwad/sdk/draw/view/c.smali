.class public Lcom/kwad/sdk/draw/view/c;
.super Lcom/kwad/sdk/draw/view/a;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/draw/view/c$h;
    }
.end annotation


# instance fields
.field private A:Lcom/kwad/sdk/draw/view/DrawCardH5;

.field private B:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

.field private C:Lcom/kwad/sdk/draw/view/b$a;

.field private e:Landroid/content/Context;

.field private f:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private g:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private h:Lcom/kwad/sdk/core/download/g/b;

.field private i:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

.field private j:Lcom/kwad/sdk/draw/view/c$h;

.field private k:Landroid/widget/FrameLayout;

.field private l:Lcom/kwad/sdk/draw/view/b;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

.field private s:Z

.field private t:Z

.field private u:Landroid/animation/ValueAnimator;

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:Lcom/kwad/sdk/draw/view/DrawCardApp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->o()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {}, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/e/g$a;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/e/g$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->j:Lcom/kwad/sdk/draw/view/c$h;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/kwad/sdk/draw/view/c$h;->onAdClicked()V

    :cond_10
    return-void
.end method

.method private a(J)V
    .registers 8

    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    :cond_31
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/view/c;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/c;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/view/c;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/draw/view/c;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/draw/view/c;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/draw/view/c;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/draw/view/c;->w:I

    return v0
.end method

.method static synthetic d(Lcom/kwad/sdk/draw/view/c;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/draw/view/c;->v:I

    return v0
.end method

.method static synthetic e(Lcom/kwad/sdk/draw/view/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->w()V

    return-void
.end method

.method static synthetic f(Lcom/kwad/sdk/draw/view/c;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/kwad/sdk/draw/view/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->p()V

    return-void
.end method

.method private getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->i:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/draw/view/c$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/draw/view/c$a;-><init>(Lcom/kwad/sdk/draw/view/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->i:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->i:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    return-object v0
.end method

.method private getVideoPlayCallback()Lcom/kwad/sdk/draw/view/b$a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->C:Lcom/kwad/sdk/draw/view/b$a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/draw/view/c$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/draw/view/c$c;-><init>(Lcom/kwad/sdk/draw/view/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->C:Lcom/kwad/sdk/draw/view/b$a;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->C:Lcom/kwad/sdk/draw/view/b$a;

    return-object v0
.end method

.method static synthetic h(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->B:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    return-object v0
.end method

.method static synthetic i(Lcom/kwad/sdk/draw/view/c;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->n:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic j(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawCardApp;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->z:Lcom/kwad/sdk/draw/view/DrawCardApp;

    return-object v0
.end method

.method static synthetic k(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawCardH5;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->A:Lcom/kwad/sdk/draw/view/DrawCardH5;

    return-object v0
.end method

.method static synthetic l(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    return-object v0
.end method

.method private l()V
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Lcom/kwad/sdk/c/h/e/b;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/c/h/e/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/c/h/e/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Lcom/kwad/sdk/c/h/e/b;->setPortraitFullscreen(Z)V

    invoke-virtual {v0, v3}, Lcom/kwad/sdk/c/h/e/b;->setVideoSoundEnable(Z)V

    new-instance v1, Lcom/kwad/sdk/draw/view/b;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v1, v2, v3, v0}, Lcom/kwad/sdk/draw/view/b;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/c/h/e/d;)V

    iput-object v1, p0, Lcom/kwad/sdk/draw/view/c;->l:Lcom/kwad/sdk/draw/view/b;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->l:Lcom/kwad/sdk/draw/view/b;

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->getVideoPlayCallback()Lcom/kwad/sdk/draw/view/b$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/draw/view/b;->setVideoPlayCallback(Lcom/kwad/sdk/draw/view/b$a;)V

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->l:Lcom/kwad/sdk/draw/view/b;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/b;->setController(Lcom/kwad/sdk/c/h/e/c;)V

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private m()V
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->m:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_27
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/draw/view/c;->r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {v3}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->getMax()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->n(Lcom/kwad/sdk/core/response/model/AdInfo;)[I

    move-result-object v2

    array-length v0, v2

    if-ge v0, v1, :cond_6c

    iput v1, p0, Lcom/kwad/sdk/draw/view/c;->v:I

    :goto_59
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->n:Landroid/view/ViewGroup;

    new-instance v1, Lcom/kwad/sdk/draw/view/c$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/draw/view/c$b;-><init>(Lcom/kwad/sdk/draw/view/c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_64
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->o:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27

    :cond_6c
    aget v0, v2, v4

    if-lez v0, :cond_8b

    aget v0, v2, v4

    :goto_72
    iput v0, p0, Lcom/kwad/sdk/draw/view/c;->v:I

    aget v0, v2, v5

    if-lez v0, :cond_8d

    aget v0, v2, v5

    :goto_7a
    iget v3, p0, Lcom/kwad/sdk/draw/view/c;->v:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/kwad/sdk/draw/view/c;->w:I

    aget v0, v2, v6

    if-lez v0, :cond_85

    aget v1, v2, v6

    :cond_85
    iget v0, p0, Lcom/kwad/sdk/draw/view/c;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/draw/view/c;->x:I

    goto :goto_59

    :cond_8b
    move v0, v1

    goto :goto_72

    :cond_8d
    move v0, v1

    goto :goto_7a
.end method

.method static synthetic m(Lcom/kwad/sdk/draw/view/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->v()V

    return-void
.end method

.method static synthetic n(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object v0
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->u:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    return-void
.end method

.method static synthetic o(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/core/download/g/b;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->h:Lcom/kwad/sdk/core/download/g/b;

    return-object v0
.end method

.method private o()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_draw_video"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_video_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->k:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_video_thumb"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_ad_normal_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->n:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_ad_normal_title"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_ad_normal_des"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_ad_normal_convert_btn"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_ad_light_convert_btn"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->setTextSize(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_card_app_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawCardApp;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->z:Lcom/kwad/sdk/draw/view/DrawCardApp;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_card_h5_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawCardH5;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->A:Lcom/kwad/sdk/draw/view/DrawCardH5;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const-string v1, "ksad_video_tail_frame"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->B:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->l()V

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->m()V

    return-void
.end method

.method static synthetic p(Lcom/kwad/sdk/draw/view/c;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/draw/view/c;->x:I

    return v0
.end method

.method private p()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-eqz v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->j:Lcom/kwad/sdk/draw/view/c$h;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/kwad/sdk/draw/view/c$h;->onAdShow()V

    goto :goto_6
.end method

.method private q()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->e:Landroid/content/Context;

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/kwad/sdk/d/b;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->u:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->u:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->u:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic q(Lcom/kwad/sdk/draw/view/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->t()V

    return-void
.end method

.method private r()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->m:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->n()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/kwad/sdk/draw/view/c;->s:Z

    iput-boolean v3, p0, Lcom/kwad/sdk/draw/view/c;->t:Z

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/kwad/sdk/draw/view/c;->y:Z

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->z:Lcom/kwad/sdk/draw/view/DrawCardApp;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawCardApp;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->z:Lcom/kwad/sdk/draw/view/DrawCardApp;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->A:Lcom/kwad/sdk/draw/view/DrawCardH5;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawCardH5;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->A:Lcom/kwad/sdk/draw/view/DrawCardH5;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->B:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private s()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->z:Lcom/kwad/sdk/draw/view/DrawCardApp;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/draw/view/c$f;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/draw/view/c$f;-><init>(Lcom/kwad/sdk/draw/view/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawCardApp;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/DrawCardApp$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->n:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->z:Lcom/kwad/sdk/draw/view/DrawCardApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->z:Lcom/kwad/sdk/draw/view/DrawCardApp;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawCardApp;->d()V

    return-void
.end method

.method private t()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/draw/view/c;->y:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/draw/view/c;->y:Z

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->s()V

    goto :goto_4

    :cond_38
    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->u()V

    goto :goto_4
.end method

.method private u()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->A:Lcom/kwad/sdk/draw/view/DrawCardH5;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/draw/view/c$g;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/draw/view/c$g;-><init>(Lcom/kwad/sdk/draw/view/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawCardH5;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/DrawCardH5$b;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->n:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->A:Lcom/kwad/sdk/draw/view/DrawCardH5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->A:Lcom/kwad/sdk/draw/view/DrawCardH5;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawCardH5;->d()V

    return-void
.end method

.method private v()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/draw/view/c;->t:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/draw/view/c;->t:Z

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    new-instance v1, Lcom/kwad/sdk/draw/view/c$e;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/draw/view/c$e;-><init>(Lcom/kwad/sdk/draw/view/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->r:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method private w()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/draw/view/c;->s:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/kwad/sdk/draw/view/c;->t:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/draw/view/c;->s:Z

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/kwad/sdk/draw/view/c$d;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/draw/view/c$d;-><init>(Lcom/kwad/sdk/draw/view/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->q()V

    goto :goto_8
.end method


# virtual methods
.method protected g()V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->r()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/kwad/sdk/core/download/g/b;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->h:Lcom/kwad/sdk/core/download/g/b;

    :cond_18
    return-void
.end method

.method protected h()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->r()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->l:Lcom/kwad/sdk/draw/view/b;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/b;->h()V

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->h:Lcom/kwad/sdk/core/download/g/b;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/c;->h:Lcom/kwad/sdk/core/download/g/b;

    :cond_11
    return-void
.end method

.method protected i()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->l:Lcom/kwad/sdk/draw/view/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/b;->g()V

    :cond_7
    return-void
.end method

.method protected j()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c;->l:Lcom/kwad/sdk/draw/view/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/b;->j()V

    :cond_7
    return-void
.end method

.method public k()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/c;->l()V

    return-void
.end method

.method public setAdClickListener(Lcom/kwad/sdk/draw/view/c$h;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/c;->j:Lcom/kwad/sdk/draw/view/c$h;

    return-void
.end method
