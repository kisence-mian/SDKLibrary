.class public Lcom/anythink/network/toutiao/TTATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeAd;ZLandroid/graphics/Bitmap;I)V
    .registers 8

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->b:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->c:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 29
    invoke-virtual {p0, p4, p5, p6}, Lcom/anythink/network/toutiao/TTATNativeAd;->setAdData(ZLandroid/graphics/Bitmap;I)V

    .line 30
    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/View;)V
    .registers 5
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
    .line 93
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_1f

    .line 94
    check-cast p2, Landroid/view/ViewGroup;

    .line 95
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 97
    invoke-direct {p0, p1, v1}, Lcom/anythink/network/toutiao/TTATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 100
    :cond_1f
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_2a

    .line 101
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2a
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 168
    return-void
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 182
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-eqz v0, :cond_b

    .line 160
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 3

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 177
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 7

    .prologue
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-direct {p0, v1, p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 111
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lcom/anythink/network/toutiao/TTATNativeAd$2;

    invoke-direct {v3, p0}, Lcom/anythink/network/toutiao/TTATNativeAd$2;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V

    invoke-interface {v2, v0, v1, v1, v3}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_28

    .line 129
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 132
    :cond_28
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 7
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
    .line 136
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/anythink/network/toutiao/TTATNativeAd$3;

    invoke-direct {v2, p0}, Lcom/anythink/network/toutiao/TTATNativeAd$3;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V

    invoke-interface {v1, v0, p2, p2, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_20

    .line 153
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 155
    :cond_20
    return-void
.end method

.method public setAdData(ZLandroid/graphics/Bitmap;I)V
    .registers 7

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_54

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 44
    :cond_4a
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 46
    :cond_54
    invoke-virtual {p0, v1}, Lcom/anythink/network/toutiao/TTATNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_78

    .line 49
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;->setCanInterruptVideoPlay(Z)V

    .line 50
    if-eqz p2, :cond_78

    if-lez p3, :cond_78

    .line 51
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;->setPauseIcon(Landroid/graphics/Bitmap;I)V

    .line 55
    :cond_78
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_8a

    .line 56
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeAd$1;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 90
    :cond_8a
    return-void
.end method
