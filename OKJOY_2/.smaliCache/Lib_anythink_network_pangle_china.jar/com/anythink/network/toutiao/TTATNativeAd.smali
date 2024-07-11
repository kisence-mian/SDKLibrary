.class public Lcom/anythink/network/toutiao/TTATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeAd;ZLandroid/graphics/Bitmap;I)V
    .registers 7

    .line 31
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 36
    invoke-virtual {p0, p4, p5, p6}, Lcom/anythink/network/toutiao/TTATNativeAd;->setAdData(ZLandroid/graphics/Bitmap;I)V

    .line 37
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

    .line 100
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_20

    .line 101
    check-cast p2, Landroid/view/ViewGroup;

    .line 102
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 103
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 104
    invoke-direct {p0, p1, v1}, Lcom/anythink/network/toutiao/TTATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 106
    :cond_1f
    return-void

    .line 107
    :cond_20
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_2b

    .line 108
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2b
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .line 175
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 190
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-eqz v1, :cond_8

    .line 191
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    .line 195
    :cond_8
    goto :goto_a

    .line 193
    :catch_9
    move-exception v1

    .line 196
    :goto_a
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->b:Landroid/content/Context;

    .line 197
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 198
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-eqz v0, :cond_9

    .line 167
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 169
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 2

    .line 180
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 181
    :catch_7
    move-exception p1

    .line 184
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6

    .line 116
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-direct {p0, p2, p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/anythink/network/toutiao/TTATNativeAd$2;

    invoke-direct {v2, p0}, Lcom/anythink/network/toutiao/TTATNativeAd$2;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V

    invoke-interface {v0, v1, p2, p2, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_28

    .line 136
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 139
    :cond_28
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6
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

    .line 143
    iget-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeAd$3;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeAd$3;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V

    invoke-interface {p3, v0, p2, p2, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_20

    .line 160
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 162
    :cond_20
    return-void
.end method

.method public setAdData(ZLandroid/graphics/Bitmap;I)V
    .registers 7

    .line 41
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_54

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 49
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_36

    .line 51
    :cond_4a
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 53
    :cond_54
    invoke-virtual {p0, v1}, Lcom/anythink/network/toutiao/TTATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v1, :cond_76

    .line 56
    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;->setCanInterruptVideoPlay(Z)V

    .line 57
    if-eqz p2, :cond_76

    if-lez p3, :cond_76

    .line 58
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;->setPauseIcon(Landroid/graphics/Bitmap;I)V

    .line 62
    :cond_76
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p2, :cond_86

    .line 63
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    new-instance p2, Lcom/anythink/network/toutiao/TTATNativeAd$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/toutiao/TTATNativeAd$1;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 97
    :cond_86
    return-void
.end method
