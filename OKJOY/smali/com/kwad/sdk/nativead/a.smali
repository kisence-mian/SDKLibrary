.class public Lcom/kwad/sdk/nativead/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/export/i/KsNativeAd;


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Lcom/kwad/sdk/core/download/g/b;

.field private d:Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/nativead/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/nativead/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object v0
.end method

.method private a(J)V
    .registers 8

    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    :cond_31
    return-void
.end method

.method private a(Landroid/view/View;Lcom/kwad/sdk/e/g$a;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/nativead/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/nativead/a$e;

    invoke-direct {v2, p0, p2, p1}, Lcom/kwad/sdk/nativead/a$e;-><init>(Lcom/kwad/sdk/nativead/a;Lcom/kwad/sdk/e/g$a;Landroid/view/View;)V

    iget-object v3, p0, Lcom/kwad/sdk/nativead/a;->c:Lcom/kwad/sdk/core/download/g/b;

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwad/sdk/nativead/a;->b(Landroid/view/ViewGroup;)Lcom/kwad/sdk/core/page/widget/a;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/kwad/sdk/core/page/widget/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_12
    new-instance v1, Lcom/kwad/sdk/nativead/a$f;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/nativead/a$f;-><init>(Lcom/kwad/sdk/nativead/a;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/a;->setViewCallback(Lcom/kwad/sdk/core/page/widget/a$a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/a;->setNeedCheckingShow(Z)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .registers 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/kwad/sdk/e/g$a;

    invoke-direct {v2}, Lcom/kwad/sdk/e/g$a;-><init>()V

    new-instance v3, Lcom/kwad/sdk/nativead/a$c;

    invoke-direct {v3, p0, v2, p1}, Lcom/kwad/sdk/nativead/a$c;-><init>(Lcom/kwad/sdk/nativead/a;Lcom/kwad/sdk/e/g$a;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/kwad/sdk/nativead/a$d;

    invoke-direct {v3, p0, v2}, Lcom/kwad/sdk/nativead/a$d;-><init>(Lcom/kwad/sdk/nativead/a;Lcom/kwad/sdk/e/g$a;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_26
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/nativead/a;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/nativead/a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/nativead/a;Landroid/view/View;Lcom/kwad/sdk/e/g$a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/nativead/a;->a(Landroid/view/View;Lcom/kwad/sdk/e/g$a;)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)Lcom/kwad/sdk/core/page/widget/a;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_17

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/kwad/sdk/core/page/widget/a;

    if-eqz v2, :cond_13

    check-cast v0, Lcom/kwad/sdk/core/page/widget/a;

    :goto_12
    return-object v0

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic b(Lcom/kwad/sdk/nativead/a;)Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->d:Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object v0
.end method

.method public getActionDescription()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdDescription()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdSource()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->e(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppDownloadCountDes()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppIconUrl()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->g(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppScore()F
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    move-result v0

    return v0
.end method

.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->o(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public getImageList()Ljava/util/List;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/nativead/KsImage;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->u(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    if-eq v2, v6, :cond_17

    const/4 v3, 0x3

    if-ne v2, v3, :cond_46

    :cond_17
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adMaterialInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;->materialFeatureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    iget v3, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->featureType:I

    if-ne v3, v6, :cond_1f

    iget-object v3, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    new-instance v3, Lcom/kwad/sdk/nativead/KsImage;

    iget v4, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    iget v5, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/kwad/sdk/nativead/KsImage;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_46
    return-object v1
.end method

.method public getInteractionType()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->v(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public getMaterialType()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->u(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public getSdkLogo()Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ksad_sdk_logo"

    invoke-static {v0, v2}, Lcom/kwad/sdk/e/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public getVideoCoverImage()Lcom/kwad/sdk/nativead/KsImage;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->y(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v1

    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Lcom/kwad/sdk/nativead/KsImage;

    iget v2, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    iget v3, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/kwad/sdk/nativead/KsImage;-><init>(IILjava/lang/String;)V

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getVideoDuration()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->w(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoView(Landroid/content/Context;Z)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/kwad/sdk/nativead/a;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Lcom/kwad/sdk/c/h/e/b;

    invoke-direct {v1, p1}, Lcom/kwad/sdk/c/h/e/b;-><init>(Landroid/content/Context;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v3, Lcom/kwad/sdk/feed/b/i;

    iget-object v4, p0, Lcom/kwad/sdk/nativead/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v3, p1, v4, v1}, Lcom/kwad/sdk/feed/b/i;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/c/h/e/d;)V

    new-instance v4, Lcom/kwad/sdk/nativead/a$a;

    invoke-direct {v4, p0}, Lcom/kwad/sdk/nativead/a$a;-><init>(Lcom/kwad/sdk/nativead/a;)V

    invoke-virtual {v3, v4}, Lcom/kwad/sdk/c/h/e/a;->setVideoPlayCallback(Lcom/kwad/sdk/c/h/e/a$a;)V

    invoke-virtual {v1, v2, v0}, Lcom/kwad/sdk/c/h/e/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, p2}, Lcom/kwad/sdk/c/h/e/b;->setVideoSoundEnable(Z)V

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/c/h/e/b;->setController(Lcom/kwad/sdk/c/h/e/c;)V

    new-instance v0, Lcom/kwad/sdk/nativead/a$b;

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/nativead/a$b;-><init>(Lcom/kwad/sdk/nativead/a;Lcom/kwad/sdk/c/h/e/b;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoPlayerView:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KsNativeAdControl"

    invoke-static {v2, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_b
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;)V
    .registers 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/kwad/sdk/nativead/a;->d:Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;

    const-string v0, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickViews\u4e0d\u80fd\u4e3anull"

    invoke-static {p2, v0}, Lcom/kwad/sdk/e/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/j;->a(Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/nativead/a;->a(Landroid/view/ViewGroup;)V

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/nativead/a;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method public setDownloadListener(Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/download/g/b;

    iget-object v1, p0, Lcom/kwad/sdk/nativead/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/nativead/a;->c:Lcom/kwad/sdk/core/download/g/b;

    return-void
.end method
