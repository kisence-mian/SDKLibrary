.class public Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kwad/sdk/reward/widget/tailframe/a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

.field private c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

.field private d:Lcom/kwad/sdk/reward/widget/tailframe/b;

.field private e:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private f:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private g:Lorg/json/JSONObject;

.field private h:Lcom/kwad/sdk/core/download/b/b;

.field private i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

.field private j:Lcom/kwad/sdk/widget/KsLogoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    return-object p0
.end method

.method private c()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/R$layout;->ksad_video_tf_view_portrait_horizontal:I

    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_thumb_img:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_tf_logo:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/KsLogoView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->j:Lcom/kwad/sdk/widget/KsLogoView;

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private d()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v0

    iget v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    iget v2, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kwad/sdk/utils/ah;->c(Landroid/content/Context;)I

    move-result v3

    int-to-float v4, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    mul-float/2addr v4, v2

    float-to-int v1, v4

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method static synthetic e(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->d:Lcom/kwad/sdk/reward/widget/tailframe/b;

    return-object p0
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_app_tail_frame:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->getTextProgressBar()Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_42

    :cond_2e
    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_h5_tail_frame:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;->setModel(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;->setVisibility(I)V

    :goto_42
    return-void
.end method

.method private f()V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->g:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;-><init>(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->h:Lcom/kwad/sdk/core/download/b/b;

    return-void
.end method

.method private g()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->h:Lcom/kwad/sdk/core/download/b/b;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/tailframe/b;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->g:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->d:Lcom/kwad/sdk/reward/widget/tailframe/b;

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->j:Lcom/kwad/sdk/widget/KsLogoView;

    iget-object p2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/widget/KsLogoView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->d()V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e()V

    invoke-virtual {p0, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    const/16 v1, 0x8

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;->setVisibility(I)V

    :cond_1a
    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->g()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->h:Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    if-ne p1, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$2;-><init>(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->h:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    return-void
.end method
