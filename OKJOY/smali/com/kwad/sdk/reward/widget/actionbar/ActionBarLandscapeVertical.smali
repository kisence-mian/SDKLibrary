.class public Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$c;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/kwad/sdk/reward/widget/AppScoreView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

.field private j:Landroid/view/View;

.field private k:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private l:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private m:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$c;

.field private n:Lcom/kwad/sdk/core/download/g/b;

.field private o:Lcom/kwad/sdk/nativead/KsAppDownloadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a(Landroid/content/Context;)V

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

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a(Landroid/content/Context;)V

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

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const-string v0, "ksad_video_actionbar_landscape_vertical"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "ksad_top_container"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a:Landroid/view/ViewGroup;

    const-string v0, "ksad_app_icon"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->b:Landroid/widget/ImageView;

    const-string v0, "ksad_app_score"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/AppScoreView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->c:Lcom/kwad/sdk/reward/widget/AppScoreView;

    const-string v0, "ksad_app_download_count"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->d:Landroid/widget/TextView;

    const-string v0, "ksad_video_place_holder"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->e:Landroid/view/View;

    const-string v0, "ksad_bottom_container"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->f:Landroid/view/ViewGroup;

    const-string v0, "ksad_app_name"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->g:Landroid/widget/TextView;

    const-string v0, "ksad_app_desc"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->h:Landroid/widget/TextView;

    const-string v0, "ksad_app_download_btn"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setTextDimen(F)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setTextColor(I)V

    const-string v0, "ksad_app_download_btn_cover"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->j:Landroid/view/View;

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->m:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$c;

    return-object v0
.end method

.method private getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$a;-><init>(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->o:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$c;I)V
    .registers 9
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v4, 0x8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->k:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->m:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$c;

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->g(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    move-result v2

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_9a

    const/4 v0, 0x1

    :goto_27
    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->c:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/reward/widget/AppScoreView;->setScore(F)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->c:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_33
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4b
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/kwad/sdk/core/download/g/b;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->n:Lcom/kwad/sdk/core/download/g/b;

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_9a
    move v0, v1

    goto :goto_27

    :cond_9c
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->c:Lcom/kwad/sdk/reward/widget/AppScoreView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33

    :cond_a2
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->k:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$b;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$b;-><init>(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;)V

    iget-object v3, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->n:Lcom/kwad/sdk/core/download/g/b;

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    return-void
.end method
