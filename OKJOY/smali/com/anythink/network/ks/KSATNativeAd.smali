.class public Lcom/anythink/network/ks/KSATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/kwad/sdk/export/i/KsNativeAd;

.field c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/export/i/KsNativeAd;Z)V
    .registers 7

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    .line 30
    iput-boolean p3, p0, Lcom/anythink/network/ks/KSATNativeAd;->c:Z

    .line 1036
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAdSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setAdFrom(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAppScore()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 1040
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAdDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    .line 1042
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    if-eqz v0, :cond_70

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_70

    .line 1045
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/nativead/KsImage;

    .line 1046
    invoke-virtual {v0}, Lcom/kwad/sdk/nativead/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 1048
    :cond_66
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 1050
    :cond_70
    invoke-virtual {p0, v1}, Lcom/anythink/network/ks/KSATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 1051
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getActionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAdSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setAdFrom(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAppScore()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 40
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getAdDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    if-eqz v0, :cond_67

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_67

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/nativead/KsImage;

    .line 46
    invoke-virtual {v0}, Lcom/kwad/sdk/nativead/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 48
    :cond_5d
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 50
    :cond_67
    invoke-virtual {p0, v1}, Lcom/anythink/network/ks/KSATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 51
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getActionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATNativeAd;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/anythink/network/ks/KSATNativeAd;->c:Z

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/export/i/KsNativeAd;->getVideoView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_23

    .line 63
    check-cast p2, Landroid/view/ViewGroup;

    .line 64
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 66
    invoke-direct {p0, p1, v1}, Lcom/anythink/network/ks/KSATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 69
    :cond_23
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATNativeAd;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/anythink/network/ks/KSATNativeAd;->c:Z

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/export/i/KsNativeAd;->getVideoView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_32

    .line 70
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_32
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 173
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsNativeAd;->getSdkLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 5

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATNativeAd;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/anythink/network/ks/KSATNativeAd;->c:Z

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/export/i/KsNativeAd;->getVideoView(Landroid/content/Context;Z)Landroid/view/View;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 167
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-direct {p0, v0, p1}, Lcom/anythink/network/ks/KSATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/anythink/network/ks/KSATNativeAd$1;

    invoke-direct {v2, p0}, Lcom/anythink/network/ks/KSATNativeAd$1;-><init>(Lcom/anythink/network/ks/KSATNativeAd;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/kwad/sdk/export/i/KsNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;)V

    .line 92
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    new-instance v1, Lcom/anythink/network/ks/KSATNativeAd$2;

    invoke-direct {v1, p0}, Lcom/anythink/network/ks/KSATNativeAd$2;-><init>(Lcom/anythink/network/ks/KSATNativeAd;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/KsNativeAd;->setDownloadListener(Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    .line 113
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_10

    .line 122
    :cond_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-direct {p0, p2, p1}, Lcom/anythink/network/ks/KSATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 125
    :cond_10
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v1, Lcom/anythink/network/ks/KSATNativeAd$3;

    invoke-direct {v1, p0}, Lcom/anythink/network/ks/KSATNativeAd$3;-><init>(Lcom/anythink/network/ks/KSATNativeAd;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/kwad/sdk/export/i/KsNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;)V

    .line 137
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/export/i/KsNativeAd;

    new-instance v1, Lcom/anythink/network/ks/KSATNativeAd$4;

    invoke-direct {v1, p0}, Lcom/anythink/network/ks/KSATNativeAd$4;-><init>(Lcom/anythink/network/ks/KSATNativeAd;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/KsNativeAd;->setDownloadListener(Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    .line 158
    return-void
.end method
