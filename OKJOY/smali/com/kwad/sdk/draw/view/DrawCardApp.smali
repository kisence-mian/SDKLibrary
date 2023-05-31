.class public Lcom/kwad/sdk/draw/view/DrawCardApp;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/draw/view/DrawCardApp$c;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Lcom/kwad/sdk/core/download/g/b;

.field private d:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

.field private e:Lcom/kwad/sdk/draw/view/DrawCardApp$c;

.field private f:I

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/ViewGroup;

.field private k:Lcom/kwad/sdk/reward/widget/AppScoreView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

.field private o:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawCardApp;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawCardApp;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawCardApp;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/view/DrawCardApp;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object v0
.end method

.method private a(II)V
    .registers 7

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/DrawCardApp;->e()V

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/d/b;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->o:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->o:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "ksad_draw_card_app"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "ksad_card_app_close"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->g:Landroid/widget/ImageView;

    const-string v0, "ksad_card_app_icon"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->h:Landroid/widget/ImageView;

    const-string v0, "ksad_card_app_name"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->i:Landroid/widget/TextView;

    const-string v0, "ksad_card_app_score_container"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->j:Landroid/view/ViewGroup;

    const-string v0, "ksad_card_app_score"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/AppScoreView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->k:Lcom/kwad/sdk/reward/widget/AppScoreView;

    const-string v0, "ksad_card_app_download_count"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->l:Landroid/widget/TextView;

    const-string v0, "ksad_card_app_desc"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->m:Landroid/widget/TextView;

    const-string v0, "ksad_card_app_download_btn"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->n:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->n:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->setTextSize(I)V

    const/high16 v0, 0x431c0000    # 156.0f

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->f:I

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/draw/view/DrawCardApp;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->n:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/draw/view/DrawCardApp;)Lcom/kwad/sdk/draw/view/DrawCardApp$c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->e:Lcom/kwad/sdk/draw/view/DrawCardApp$c;

    return-object v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    return-void
.end method

.method private getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->d:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/draw/view/DrawCardApp$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/draw/view/DrawCardApp$a;-><init>(Lcom/kwad/sdk/draw/view/DrawCardApp;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->d:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->d:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/DrawCardApp$c;)V
    .registers 8
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->e:Lcom/kwad/sdk/draw/view/DrawCardApp$c;

    new-instance v0, Lcom/kwad/sdk/core/download/g/b;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/DrawCardApp;->getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->c:Lcom/kwad/sdk/core/download/g/b;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->g(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    move-result v3

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_85

    const/4 v0, 0x1

    :goto_45
    if-eqz v0, :cond_51

    iget-object v4, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->k:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {v4, v3}, Lcom/kwad/sdk/reward/widget/AppScoreView;->setScore(F)V

    iget-object v3, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->k:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_63

    iget-object v4, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->l:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_63
    if-nez v0, :cond_67

    if-eqz v3, :cond_87

    :cond_67
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_6c
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->n:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_85
    move v0, v1

    goto :goto_45

    :cond_87
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->j:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6c
.end method

.method public b()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->f:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/draw/view/DrawCardApp;->a(II)V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/DrawCardApp;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->c:Lcom/kwad/sdk/core/download/g/b;

    return-void
.end method

.method public d()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->f:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/draw/view/DrawCardApp;->a(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/DrawCardApp;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->e:Lcom/kwad/sdk/draw/view/DrawCardApp$c;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/kwad/sdk/draw/view/DrawCardApp$c;->b()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/draw/view/DrawCardApp$b;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/draw/view/DrawCardApp$b;-><init>(Lcom/kwad/sdk/draw/view/DrawCardApp;)V

    iget-object v3, p0, Lcom/kwad/sdk/draw/view/DrawCardApp;->c:Lcom/kwad/sdk/core/download/g/b;

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    goto :goto_e
.end method
