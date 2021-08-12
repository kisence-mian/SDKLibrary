.class public Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/kwad/sdk/reward/widget/AppScoreView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

.field private l:Landroid/view/View;

.field private m:Lcom/kwad/sdk/widget/KsLogoView;

.field private n:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private o:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private p:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$a;

.field private q:Lcom/kwad/sdk/core/download/b/b;

.field private r:Lcom/kwad/sdk/api/KsAppDownloadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_video_actionbar_landscape_vertical:I

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_top_container:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a:Landroid/view/ViewGroup;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_top_outer:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->b:Landroid/view/ViewGroup;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_icon:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->c:Landroid/widget/ImageView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_score:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/reward/widget/AppScoreView;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/AppScoreView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_download_count:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->e:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_video_place_holder:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->f:Landroid/view/View;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_bottom_container:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->g:Landroid/view/ViewGroup;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_name:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->h:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_product_name:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_desc:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->j:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_download_btn:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setTextDimen(F)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setTextColor(I)V

    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_download_btn_cover:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Landroid/view/View;

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {p1, p0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/kwad/sdk/R$id;->ksad_actionbar_logo:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/widget/KsLogoView;

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->m:Lcom/kwad/sdk/widget/KsLogoView;

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->n:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->p:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$a;

    return-object p0
.end method

.method private getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->r:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$1;-><init>(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->r:Lcom/kwad/sdk/api/KsAppDownloadListener;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->r:Lcom/kwad/sdk/api/KsAppDownloadListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$a;I)V
    .registers 9

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->n:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->m:Lcom/kwad/sdk/widget/KsLogoView;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v3}, Lcom/kwad/sdk/core/response/b/a;->n(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v3

    goto :goto_47

    :cond_30
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->productName:Ljava/lang/String;

    :goto_47
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->p:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$a;

    iput-object p2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->q:Lcom/kwad/sdk/core/download/b/b;

    iget-object p2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->c:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p3}, Lcom/kwad/sdk/core/response/b/a;->m(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x10

    invoke-static {p2, p3, p1, v0}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->q(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    move-result p1

    const/high16 p2, 0x40400000    # 3.0f

    cmpl-float p2, p1, p2

    const/4 p3, 0x1

    if-ltz p2, :cond_6a

    move p2, p3

    goto :goto_6b

    :cond_6a
    move p2, v2

    :goto_6b
    if-eqz p2, :cond_78

    iget-object p2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/reward/widget/AppScoreView;->setScore(F)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {p1, v2}, Lcom/kwad/sdk/reward/widget/AppScoreView;->setVisibility(I)V

    goto :goto_7d

    :cond_78
    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {p1, v1}, Lcom/kwad/sdk/reward/widget/AppScoreView;->setVisibility(I)V

    :goto_7d
    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->p(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, p3

    if-eqz p2, :cond_95

    iget-object p2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9a

    :cond_95
    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9a
    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->f:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->j:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p2}, Lcom/kwad/sdk/core/response/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iget-object p2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p2}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {p3}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->getMax()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->q:Lcom/kwad/sdk/core/download/b/b;

    if-eqz p1, :cond_d3

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    :cond_d3
    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->q:Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    if-ne p1, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->n:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$2;-><init>(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->q:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    return-void
.end method
