.class public Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kwad/sdk/reward/widget/tailframe/a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;

.field private e:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;

.field private f:Lcom/kwad/sdk/reward/widget/tailframe/b;

.field private g:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private h:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private i:Lorg/json/JSONObject;

.field private j:Lcom/kwad/sdk/core/download/b/b;

.field private k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

.field private l:Lcom/kwad/sdk/widget/KsLogoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->c()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->h:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    return-object p0
.end method

.method private c()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/R$layout;->ksad_video_tf_view_landscape_vertical:I

    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_thumb_left:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->a:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_thumb_mid:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->b:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_thumb_right:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->c:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_tf_logo:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/KsLogoView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->l:Lcom/kwad/sdk/widget/KsLogoView;

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->h:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->h:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->h:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method static synthetic e(Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;)Lcom/kwad/sdk/reward/widget/tailframe/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->f:Lcom/kwad/sdk/reward/widget/tailframe/b;

    return-object p0
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->h:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_app_tail_frame:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;->setModel(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;->getTextProgressBar()Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->f()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_42

    :cond_2e
    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_h5_tail_frame:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->e:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;->setModel(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->e:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;->setVisibility(I)V

    :goto_42
    return-void
.end method

.method private f()V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->i:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical$1;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical$1;-><init>(Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->j:Lcom/kwad/sdk/core/download/b/b;

    return-void
.end method

.method private g()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->j:Lcom/kwad/sdk/core/download/b/b;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/tailframe/b;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->h:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->i:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->f:Lcom/kwad/sdk/reward/widget/tailframe/b;

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->l:Lcom/kwad/sdk/widget/KsLogoView;

    iget-object p2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/widget/KsLogoView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->d()V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->e()V

    invoke-virtual {p0, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;

    const/16 v1, 0x8

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->d:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppLandscape;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->e:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->e:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5Landscape;->setVisibility(I)V

    :cond_1a
    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical$2;-><init>(Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->j:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    return-void
.end method
