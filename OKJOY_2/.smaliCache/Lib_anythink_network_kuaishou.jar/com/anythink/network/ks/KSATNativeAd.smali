.class public Lcom/anythink/network/ks/KSATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/kwad/sdk/api/KsNativeAd;

.field c:Z

.field d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/api/KsNativeAd;Z)V
    .registers 4

    .line 36
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    .line 39
    iput-boolean p3, p0, Lcom/anythink/network/ks/KSATNativeAd;->c:Z

    .line 41
    nop

    .line 1045
    invoke-interface {p2}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/ks/KSATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 1046
    iget-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsNativeAd;->getAppIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/ks/KSATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 1047
    iget-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsNativeAd;->getAdSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/ks/KSATNativeAd;->setAdFrom(Ljava/lang/String;)V

    .line 1048
    iget-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsNativeAd;->getAppScore()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/ks/KSATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 1049
    iget-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/ks/KSATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 1050
    iget-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object p1

    .line 1051
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    if-eqz p1, :cond_6f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_6f

    .line 1054
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kwad/sdk/api/KsImage;

    .line 1055
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    goto :goto_51

    .line 1057
    :cond_65
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/network/ks/KSATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 1059
    :cond_6f
    invoke-virtual {p0, p2}, Lcom/anythink/network/ks/KSATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 1060
    iget-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsNativeAd;->getActionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/ks/KSATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 1061
    iget-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/ks/KSATNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private a()V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAdSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setAdFrom(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppScore()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 49
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    if-eqz v0, :cond_67

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_67

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/api/KsImage;

    .line 55
    invoke-interface {v2}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_49

    .line 57
    :cond_5d
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 59
    :cond_67
    invoke-virtual {p0, v1}, Lcom/anythink/network/ks/KSATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getActionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/ks/KSATNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    new-instance v1, Lcom/anythink/network/ks/KSATNativeAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/ks/KSATNativeAd$1;-><init>(Lcom/anythink/network/ks/KSATNativeAd;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/kwad/sdk/api/KsNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V

    .line 151
    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 71
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->d:Landroid/view/View;

    if-eq p2, v0, :cond_1c

    .line 72
    check-cast p2, Landroid/view/ViewGroup;

    .line 73
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 74
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 75
    invoke-direct {p0, p1, v1}, Lcom/anythink/network/ks/KSATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 77
    :cond_1b
    return-void

    .line 78
    :cond_1c
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->d:Landroid/view/View;

    if-eq p2, v0, :cond_23

    .line 79
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_23
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 170
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsNativeAd;->setDownloadListener(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 172
    :try_start_8
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0, v1, v1, v1}, Lcom/kwad/sdk/api/KsNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    .line 174
    goto :goto_f

    .line 173
    :catch_e
    move-exception v0

    .line 175
    :goto_f
    iput-object v1, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    .line 177
    :cond_11
    iput-object v1, p0, Lcom/anythink/network/ks/KSATNativeAd;->a:Landroid/content/Context;

    .line 178
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getSdkLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 4

    .line 157
    :try_start_0
    new-instance p1, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    invoke-direct {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    iget-boolean v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->c:Z

    .line 158
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd;->b:Lcom/kwad/sdk/api/KsNativeAd;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATNativeAd;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoView(Landroid/content/Context;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd;->d:Landroid/view/View;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 160
    return-object p1

    .line 161
    :catchall_1a
    move-exception p1

    .line 164
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    .line 87
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-direct {p0, p2, p1}, Lcom/anythink/network/ks/KSATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 90
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/anythink/network/ks/KSATNativeAd;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .line 97
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-gtz p3, :cond_10

    .line 100
    :cond_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-direct {p0, p2, p1}, Lcom/anythink/network/ks/KSATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 104
    :cond_10
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/anythink/network/ks/KSATNativeAd;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 105
    return-void
.end method
