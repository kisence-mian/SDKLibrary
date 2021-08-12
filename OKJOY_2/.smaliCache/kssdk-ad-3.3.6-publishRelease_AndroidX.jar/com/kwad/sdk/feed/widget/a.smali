.class public abstract Lcom/kwad/sdk/feed/widget/a;
.super Lcom/kwad/sdk/feed/widget/base/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/kwad/sdk/widget/KsLogoView;

.field private j:Lcom/kwad/sdk/core/download/b/b;

.field private k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/kwad/sdk/core/video/videoview/b;

.field private p:Lcom/kwad/sdk/feed/widget/j;

.field private q:Landroid/view/View;

.field private r:Z

.field private s:Lcom/kwad/sdk/api/KsAppDownloadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwad/sdk/feed/widget/a;->r:Z

    new-instance p1, Lcom/kwad/sdk/feed/widget/a$4;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/a$4;-><init>(Lcom/kwad/sdk/feed/widget/a;)V

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->s:Lcom/kwad/sdk/api/KsAppDownloadListener;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private a(J)V
    .registers 5

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/a;->n:Ljava/util/List;

    if-eqz p2, :cond_36

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_36

    :cond_15
    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/a;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/report/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_36
    :goto_36
    return-void
.end method

.method private a(Lcom/kwad/sdk/core/video/videoview/b;)V
    .registers 5

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->p:Lcom/kwad/sdk/feed/widget/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/j;->setAutoRelease(Z)V

    invoke-static {}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a()Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a(Ljava/lang/String;Lcom/kwad/sdk/core/video/videoview/b;)V

    invoke-static {p0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/feed/widget/a$5;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/a$5;-><init>(Lcom/kwad/sdk/feed/widget/a;)V

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/a;->j:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    :cond_27
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/a;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/feed/widget/a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/a;Lcom/kwad/sdk/core/video/videoview/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/a;->a(Lcom/kwad/sdk/core/video/videoview/b;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/video/videoview/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    return-object p0
.end method

.method static synthetic f(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method private f()V
    .registers 4

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_h5_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_h5_desc:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_h5_open_btn:I

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_h5_open_cover:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic g(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method private g()V
    .registers 7

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_download_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_icon:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lcom/kwad/sdk/R$id;->ksad_app_title:I

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/kwad/sdk/R$id;->ksad_app_desc:I

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/a;->n(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->m(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/16 v5, 0x8

    invoke-static {v0, v2, v4, v5}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_download_before:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_download_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v1, v2}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setTextDimen(F)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    const/4 v1, -0x1

    const v2, -0xb000

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(II)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0, v5}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/a;->s:Lcom/kwad/sdk/api/KsAppDownloadListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->j:Lcom/kwad/sdk/core/download/b/b;

    return-void
.end method

.method static synthetic h(Lcom/kwad/sdk/feed/widget/a;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->k:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    return-object p0
.end method

.method static synthetic j(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic k(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method static synthetic l(Lcom/kwad/sdk/feed/widget/a;)V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/a;->k()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .registers 9

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/feed/widget/a;->r:Z

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->N(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->m:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1, v0, v3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    goto :goto_2b

    :cond_27
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->m:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->F(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->n:Ljava/util/List;

    new-instance v0, Lcom/kwad/sdk/core/video/videoview/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    return-void

    :cond_51
    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v3

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    invoke-direct {v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a()Lcom/kwad/sdk/contentalliance/detail/video/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/core/video/videoview/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    iget-boolean v1, p0, Lcom/kwad/sdk/feed/widget/a;->r:Z

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->setVideoSoundEnable(Z)V

    new-instance v0, Lcom/kwad/sdk/feed/widget/j;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {v0, v1, v3, v4}, Lcom/kwad/sdk/feed/widget/j;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/video/videoview/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->p:Lcom/kwad/sdk/feed/widget/j;

    new-instance v1, Lcom/kwad/sdk/feed/widget/a$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/a$2;-><init>(Lcom/kwad/sdk/feed/widget/a;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/j;->setVideoPlayCallback(Lcom/kwad/sdk/core/video/videoview/a$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->p:Lcom/kwad/sdk/feed/widget/j;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isDataFlowAutoStart()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/feed/widget/j;->setDataFlowAutoStart(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->p:Lcom/kwad/sdk/feed/widget/j;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/video/videoview/b;->setController(Lcom/kwad/sdk/core/video/videoview/c;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c2

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1, v2}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_c2
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    new-instance v0, Lcom/kwad/sdk/feed/widget/a$3;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/feed/widget/a$3;-><init>(Lcom/kwad/sdk/feed/widget/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->i:Lcom/kwad/sdk/widget/KsLogoView;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/a;->g()V

    goto :goto_22

    :cond_1f
    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/a;->f()V

    :goto_22
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/kwad/sdk/feed/widget/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected c()V
    .registers 3

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_desc:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->f:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_app_download_cover:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->q:Landroid/view/View;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_dislike:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->h:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_first_frame_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->m:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_ad_dislike_logo:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/KsLogoView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->i:Lcom/kwad/sdk/widget/KsLogoView;

    return-void
.end method

.method protected d()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/feed/widget/base/a;->d()V

    iget-boolean v0, p0, Lcom/kwad/sdk/feed/widget/a;->r:Z

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/b;->a(Z)V

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/utils/b;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    iput-boolean v1, p0, Lcom/kwad/sdk/feed/widget/a;->r:Z

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->setVideoSoundEnable(Z)V

    :cond_20
    return-void
.end method

.method protected e()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/feed/widget/base/a;->e()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/a;->l()V

    goto :goto_19

    :cond_8
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->j:Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->q:Landroid/view/View;

    if-ne p1, v1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;Z)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/a;->a(Lcom/kwad/sdk/core/video/videoview/b;)V

    :goto_19
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/videoview/b;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/video/videoview/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    if-eq v0, v1, :cond_6e

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_37
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->g:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->o:Lcom/kwad/sdk/core/video/videoview/b;

    iget-boolean v1, p0, Lcom/kwad/sdk/feed/widget/a;->r:Z

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->setVideoSoundEnable(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->p:Lcom/kwad/sdk/feed/widget/j;

    new-instance v1, Lcom/kwad/sdk/feed/widget/a$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/a$1;-><init>(Lcom/kwad/sdk/feed/widget/a;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/j;->setVideoPlayCallback(Lcom/kwad/sdk/core/video/videoview/a$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->p:Lcom/kwad/sdk/feed/widget/j;

    invoke-virtual {v0}, Lcom/kwad/sdk/feed/widget/j;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a;->p:Lcom/kwad/sdk/feed/widget/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/j;->setAutoRelease(Z)V

    invoke-static {}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a()Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a(Ljava/lang/String;)V

    :cond_6e
    return-void
.end method
