.class public Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

.field private c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

.field private d:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$c;

.field private e:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private f:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private g:Lorg/json/JSONObject;

.field private h:Lcom/kwad/sdk/core/download/g/b;

.field private i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->d()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    return-object v0
.end method

.method private c()V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/download/g/b;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->g:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$a;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$a;-><init>(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->h:Lcom/kwad/sdk/core/download/g/b;

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->d:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$c;

    return-object v0
.end method

.method private d()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_video_tf_view_portrait_horizontal"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_video_thumb_img"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a:Landroid/widget/ImageView;

    return-void
.end method

.method private e()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_video_app_tail_frame"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->getTextProgressBar()Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->i:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c()V

    :goto_32
    return-void

    :cond_33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_video_h5_tail_frame"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;->setModel(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_32
.end method

.method private f()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->y(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v0

    iget v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    iget v2, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kwad/sdk/e/p;->b(Landroid/content/Context;)I

    move-result v3

    int-to-float v4, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->h:Lcom/kwad/sdk/core/download/g/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$c;)V
    .registers 5
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->g:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->d:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$c;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f()V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e()V

    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c:Lcom/kwad/sdk/reward/widget/tailframe/h5bar/TailFrameBarH5PortraitHorizontal;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1a
    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->g()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$b;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$b;-><init>(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)V

    iget-object v3, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->h:Lcom/kwad/sdk/core/download/g/b;

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    return-void
.end method
