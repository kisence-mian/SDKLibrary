.class public Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field private b:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private c:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private d:Lcom/kwad/sdk/core/download/b/b;

.field private e:Lcom/kwad/sdk/api/KsAppDownloadListener;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/kwad/sdk/reward/widget/AppScoreView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

.field private r:Lcom/kwad/sdk/widget/KsLogoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_draw_video_tailframe:I

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_video_cover:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->f:Landroid/widget/ImageView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_container:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->g:Landroid/view/ViewGroup;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_icon:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->h:Landroid/widget/ImageView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_name:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->i:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_score:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/reward/widget/AppScoreView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->j:Lcom/kwad/sdk/reward/widget/AppScoreView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_download_count:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->k:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_ad_desc:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->l:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_download_btn:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->m:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->setTextSize(I)V

    sget p1, Lcom/kwad/sdk/R$id;->ksad_h5_container:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->n:Landroid/view/ViewGroup;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_h5_ad_desc:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->o:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_h5_open_btn:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->p:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_draw_tailframe_logo:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/widget/KsLogoView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->r:Lcom/kwad/sdk/widget/KsLogoView;

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->m:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->q:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/core/view/AdBaseFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->a:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    return-object p0
.end method

.method private getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$1;-><init>(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->d:Lcom/kwad/sdk/core/download/b/b;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->e:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/download/b/b;->c(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    goto :goto_17

    :cond_c
    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->e:Lcom/kwad/sdk/api/KsAppDownloadListener;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->d:Lcom/kwad/sdk/core/download/b/b;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 7

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v0

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->r:Lcom/kwad/sdk/widget/KsLogoView;

    invoke-virtual {v2, p1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4b

    iget p1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    if-lez p1, :cond_44

    if-le p1, v0, :cond_44

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/utils/ah;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->getWidth()I

    move-result v3

    if-nez v3, :cond_30

    goto :goto_34

    :cond_30
    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->getWidth()I

    move-result v2

    :goto_34
    int-to-float v3, v2

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    mul-float/2addr v3, v0

    float-to-int p1, v3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_44
    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_4b
    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_ac

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->m(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/16 v4, 0xb

    invoke-static {p1, v2, v3, v4}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->n(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->q(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    move-result p1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_7e

    const/4 v2, 0x1

    goto :goto_7f

    :cond_7e
    move v2, v1

    :goto_7f
    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->j:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {v2, p1}, Lcom/kwad/sdk/reward/widget/AppScoreView;->setScore(F)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->j:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {p1, v1}, Lcom/kwad/sdk/reward/widget/AppScoreView;->setVisibility(I)V

    :cond_8b
    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->p(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->n:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_cc

    :cond_ac
    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->n:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_cc
    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->m:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {p1, p0}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->d:Lcom/kwad/sdk/core/download/b/b;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->e:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/download/b/b;->b(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->d:Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->m:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    if-ne p1, v1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;Z)V

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame$2;-><init>(Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;)V

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->d:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    return-void
.end method

.method public setAdBaseFrameLayout(Lcom/kwad/sdk/core/view/AdBaseFrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->a:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    return-void
.end method

.method public setAdInteractionListener(Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->q:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    return-void
.end method

.method public setApkDownloadHelper(Lcom/kwad/sdk/core/download/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playend/DrawVideoTailFrame;->d:Lcom/kwad/sdk/core/download/b/b;

    return-void
.end method
