.class public Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Lcom/kwad/sdk/core/download/g/b;

.field private d:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

.field private e:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->a(Landroid/content/Context;)V

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

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->a(Landroid/content/Context;)V

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

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "ksad_draw_video_tailframe"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "ksad_video_cover"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->f:Landroid/widget/ImageView;

    const-string v0, "ksad_app_container"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->g:Landroid/view/ViewGroup;

    const-string v0, "ksad_app_icon"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->h:Landroid/widget/ImageView;

    const-string v0, "ksad_app_name"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->i:Landroid/widget/TextView;

    const-string v0, "ksad_app_score"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/AppScoreView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->j:Lcom/kwad/sdk/reward/widget/AppScoreView;

    const-string v0, "ksad_app_download_count"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->k:Landroid/widget/TextView;

    const-string v0, "ksad_app_ad_desc"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->l:Landroid/widget/TextView;

    const-string v0, "ksad_app_download_btn"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->m:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->m:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->setTextSize(I)V

    const-string v0, "ksad_h5_container"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->n:Landroid/view/ViewGroup;

    const-string v0, "ksad_h5_ad_desc"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->o:Landroid/widget/TextView;

    const-string v0, "ksad_h5_open_btn"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->p:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->m:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;)Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->e:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;

    return-object v0
.end method

.method private getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->d:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$a;-><init>(Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->d:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->d:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;)V
    .registers 10

    const/16 v6, 0x8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->e:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->y(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v0

    iget-object v2, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    iget v3, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    iget v4, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    if-lez v3, :cond_42

    if-le v3, v4, :cond_42

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/p;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    if-nez v5, :cond_b6

    :goto_31
    int-to-float v5, v0

    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_42
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->f:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_47
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_be

    new-instance v0, Lcom/kwad/sdk/core/download/g/b;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/download/g/b;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->g(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    move-result v2

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_bc

    const/4 v0, 0x1

    :goto_81
    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->j:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/reward/widget/AppScoreView;->setScore(F)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->j:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8d
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_ad
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->m:Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_b6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto/16 :goto_31

    :cond_bc
    move v0, v1

    goto :goto_81

    :cond_be
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_ad
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->e:Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/download/g/b;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$b;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$b;-><init>(Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;)V

    iget-object v3, p0, Lcom/kwad/sdk/draw/view/DrawVideoTailFrame;->c:Lcom/kwad/sdk/core/download/g/b;

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    return-void
.end method
