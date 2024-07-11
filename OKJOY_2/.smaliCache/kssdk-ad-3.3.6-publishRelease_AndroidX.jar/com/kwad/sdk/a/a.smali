.class public Lcom/kwad/sdk/a/a;
.super Lcom/kwad/sdk/api/core/AbstractKsNativeAd;


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Lcom/kwad/sdk/core/download/b/b;

.field private d:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

.field private e:Lcom/kwad/sdk/a/b;

.field private f:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

.field private g:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

.field private h:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/api/core/AbstractKsNativeAd;-><init>()V

    new-instance v0, Lcom/kwad/sdk/a/a$5;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/a/a$5;-><init>(Lcom/kwad/sdk/a/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/a/a;->g:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    new-instance v0, Lcom/kwad/sdk/a/a$6;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/a/a$6;-><init>(Lcom/kwad/sdk/a/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/a/a;->h:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    iput-object p1, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_28

    new-instance p1, Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p1, v0}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object p1, p0, Lcom/kwad/sdk/a/a;->c:Lcom/kwad/sdk/core/download/b/b;

    :cond_28
    iget-object p1, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->preloadImage(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private a(Landroid/view/View;Lcom/kwad/sdk/utils/o$a;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/a/a$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/kwad/sdk/a/a$3;-><init>(Lcom/kwad/sdk/a/a;Lcom/kwad/sdk/utils/o$a;Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/a/a;->c:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {v0, v1, v2, p1}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwad/sdk/a/a;->b(Landroid/view/ViewGroup;)Lcom/kwad/sdk/core/page/widget/a;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/kwad/sdk/core/page/widget/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_12
    new-instance p1, Lcom/kwad/sdk/a/a$4;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/a/a$4;-><init>(Lcom/kwad/sdk/a/a;)V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/page/widget/a;->setViewCallback(Lcom/kwad/sdk/core/page/widget/a$a;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/page/widget/a;->setNeedCheckingShow(Z)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/kwad/sdk/utils/o$a;

    invoke-direct {v1}, Lcom/kwad/sdk/utils/o$a;-><init>()V

    new-instance v2, Lcom/kwad/sdk/a/a$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/kwad/sdk/a/a$1;-><init>(Lcom/kwad/sdk/a/a;Lcom/kwad/sdk/utils/o$a;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/kwad/sdk/a/a$2;

    invoke-direct {v2, p0, v1}, Lcom/kwad/sdk/a/a$2;-><init>(Lcom/kwad/sdk/a/a;Lcom/kwad/sdk/utils/o$a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_26
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/a/a;Landroid/view/View;Lcom/kwad/sdk/utils/o$a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/a/a;->a(Landroid/view/View;Lcom/kwad/sdk/utils/o$a;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/a;->d:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;)Lcom/kwad/sdk/core/page/widget/a;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/kwad/sdk/core/page/widget/a;

    if-eqz v2, :cond_12

    check-cast v1, Lcom/kwad/sdk/core/page/widget/a;

    return-object v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic c(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/a;->f:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/kwad/sdk/internal/api/a;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v0

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Lcom/kwad/sdk/internal/api/a;

    iget v2, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    iget v3, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/kwad/sdk/internal/api/a;-><init>(IILjava/lang/String;)V

    return-object v1

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object v0
.end method

.method public getActionDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->r(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppDownloadCountDes()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->p(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppIconUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->m(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->n(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->o(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageSize()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->W(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppPrivacyUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->U(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppScore()F
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->q(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    move-result v0

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->V(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCorporationName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->S(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->v(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public getImageList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsImage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    const/4 v4, 0x3

    if-ne v2, v4, :cond_46

    :cond_17
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adMaterialInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;->materialFeatureList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    iget v4, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->featureType:I

    if-ne v4, v3, :cond_1f

    iget-object v4, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    new-instance v4, Lcom/kwad/sdk/internal/api/a;

    iget v5, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    iget v6, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v2}, Lcom/kwad/sdk/internal/api/a;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_46
    return-object v0
.end method

.method public getInteractionType()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->u(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public getMaterialType()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public getPermissionInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->T(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkLogo()Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_sdk_logo:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getVideoCoverImage()Lcom/kwad/sdk/api/KsImage;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/a/a;->a()Lcom/kwad/sdk/internal/api/a;

    move-result-object v0

    return-object v0
.end method

.method public getVideoDuration()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v0

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->videoHeight:I

    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoView2(Landroid/content/Context;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/a/a;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "KsNativeAdControl"

    const-string p2, "videoUrl is empty"

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/a/a;->e:Lcom/kwad/sdk/a/b;

    if-nez v0, :cond_33

    new-instance v0, Lcom/kwad/sdk/a/b;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/a/a;->e:Lcom/kwad/sdk/a/b;

    iget-object p1, p0, Lcom/kwad/sdk/a/a;->h:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/a/b;->setAdInteractionListener(Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V

    iget-object p1, p0, Lcom/kwad/sdk/a/a;->e:Lcom/kwad/sdk/a/b;

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->g:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/a/b;->setVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V

    iget-object p1, p0, Lcom/kwad/sdk/a/a;->e:Lcom/kwad/sdk/a/b;

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/a/a;->c:Lcom/kwad/sdk/core/download/b/b;

    invoke-virtual {p1, v0, v1, p2}, Lcom/kwad/sdk/a/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    :cond_33
    iget-object p1, p0, Lcom/kwad/sdk/a/a;->e:Lcom/kwad/sdk/a/b;

    return-object p1
.end method

.method public getVideoView2(Landroid/content/Context;Z)Landroid/view/View;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->dataFlowAutoStart(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/a/a;->getVideoView(Landroid/content/Context;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getVideoWidth()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v0

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->videoWidth:I

    return v0
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/kwad/sdk/a/a;->d:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/a/a;->a(Landroid/view/ViewGroup;)V

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/a/a;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method public reportAdVideoPlayEnd()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/a/a;->b()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public reportAdVideoPlayStart()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/a/a;->b()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public setBidEcpm(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:I

    iget-object p1, p0, Lcom/kwad/sdk/a/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->l(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public setDownloadListener(Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/a;->c:Lcom/kwad/sdk/core/download/b/b;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    :cond_9
    return-void
.end method

.method public setVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/a;->f:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    return-void
.end method
