.class public Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private d:Lcom/kwad/sdk/core/download/g/b;

.field private e:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

.field private k:Z

.field private l:Z

.field private m:Landroid/animation/ValueAnimator;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Lcom/kwad/sdk/draw/view/DrawCardApp;

.field private s:Lcom/kwad/sdk/draw/view/DrawCardH5;

.field private t:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

.field private u:Lcom/kwad/sdk/contentalliance/detail/video/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {}, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/e/g$a;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/e/g$a;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const/16 v2, 0x8

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const-string v1, "ksad_content_alliance_detail_ad_bottom"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const-string v1, "ksad_ad_normal_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const-string v1, "ksad_ad_normal_title"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const-string v1, "ksad_ad_normal_des"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const-string v1, "ksad_ad_normal_convert_btn"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const-string v1, "ksad_ad_light_convert_btn"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->setTextSize(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const-string v1, "ksad_card_app_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawCardApp;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->r:Lcom/kwad/sdk/draw/view/DrawCardApp;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const-string v1, "ksad_card_h5_container"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawCardH5;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->s:Lcom/kwad/sdk/draw/view/DrawCardH5;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const-string v1, "ksad_video_tail_frame"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->t:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->n:I

    return v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->m:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-eqz v1, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_6
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j()V

    return-void
.end method

.method private e()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a:Landroid/content/Context;

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/kwad/sdk/d/b;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->m:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->d()V

    return-void
.end method

.method static synthetic f(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->t:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    return-object v0
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->r:Lcom/kwad/sdk/draw/view/DrawCardApp;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$f;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$f;-><init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawCardApp;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/DrawCardApp$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->r:Lcom/kwad/sdk/draw/view/DrawCardApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->r:Lcom/kwad/sdk/draw/view/DrawCardApp;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawCardApp;->d()V

    return-void
.end method

.method static synthetic g(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private g()V
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->q:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->q:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v1, v2, :cond_4

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f()V

    goto :goto_4

    :cond_22
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->h()V

    goto :goto_4
.end method

.method private getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->e:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->e:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->e:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    return-object v0
.end method

.method static synthetic h(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawCardApp;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->r:Lcom/kwad/sdk/draw/view/DrawCardApp;

    return-object v0
.end method

.method private h()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->s:Lcom/kwad/sdk/draw/view/DrawCardH5;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$g;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$g;-><init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawCardH5;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/DrawCardH5$b;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->s:Lcom/kwad/sdk/draw/view/DrawCardH5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->s:Lcom/kwad/sdk/draw/view/DrawCardH5;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawCardH5;->d()V

    return-void
.end method

.method static synthetic i(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawCardH5;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->s:Lcom/kwad/sdk/draw/view/DrawCardH5;

    return-object v0
.end method

.method private i()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->l:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->l:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;-><init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method static synthetic j(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    return-object v0
.end method

.method private j()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->k:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->l:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->k:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$d;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$d;-><init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->e()V

    goto :goto_8
.end method

.method static synthetic k(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i()V

    return-void
.end method

.method static synthetic l(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object v0
.end method

.method static synthetic m(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/core/download/g/b;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->d:Lcom/kwad/sdk/core/download/g/b;

    return-object v0
.end method

.method static synthetic n(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->p:I

    return v0
.end method

.method static synthetic o(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->g()V

    return-void
.end method

.method static synthetic p(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->o:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->d:Lcom/kwad/sdk/core/download/g/b;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x3

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a()V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {v3}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->getMax()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/kwad/sdk/core/download/g/b;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->d:Lcom/kwad/sdk/core/download/g/b;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->n(Lcom/kwad/sdk/core/response/model/AdInfo;)[I

    move-result-object v2

    array-length v0, v2

    if-ge v0, v1, :cond_78

    iput v1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->n:I

    :goto_65
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f:Landroid/view/ViewGroup;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$b;-><init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_70
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5a

    :cond_78
    aget v0, v2, v4

    if-lez v0, :cond_97

    aget v0, v2, v4

    :goto_7e
    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->n:I

    aget v0, v2, v5

    if-lez v0, :cond_99

    aget v0, v2, v5

    :goto_86
    iget v3, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->n:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->o:I

    aget v0, v2, v6

    if-lez v0, :cond_91

    aget v1, v2, v6

    :cond_91
    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->p:I

    goto :goto_65

    :cond_97
    move v0, v1

    goto :goto_7e

    :cond_99
    move v0, v1

    goto :goto_86
.end method

.method public b()V
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->j:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->k:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->l:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->q:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->r:Lcom/kwad/sdk/draw/view/DrawCardApp;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawCardApp;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->r:Lcom/kwad/sdk/draw/view/DrawCardApp;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->s:Lcom/kwad/sdk/draw/view/DrawCardH5;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/view/DrawCardH5;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->s:Lcom/kwad/sdk/draw/view/DrawCardH5;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->t:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public getVideoPlayStateListener()Lcom/kwad/sdk/contentalliance/detail/video/e;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->u:Lcom/kwad/sdk/contentalliance/detail/video/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$c;-><init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->u:Lcom/kwad/sdk/contentalliance/detail/video/f;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->u:Lcom/kwad/sdk/contentalliance/detail/video/f;

    return-object v0
.end method
