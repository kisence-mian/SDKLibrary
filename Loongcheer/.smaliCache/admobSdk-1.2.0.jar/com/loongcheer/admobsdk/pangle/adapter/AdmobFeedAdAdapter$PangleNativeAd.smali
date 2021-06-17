.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "AdmobFeedAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PangleNativeAd"
.end annotation


# instance fields
.field private mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

.field final synthetic this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;


# direct methods
.method private constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 14
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;
    .param p2, "ad"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 128
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 130
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setHeadline(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setBody(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setCallToAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAppScore()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 134
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setAdvertiser(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->isValid()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 137
    new-instance v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DLcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;)V

    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 140
    :cond_67
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b6

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "imagesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/formats/NativeAd$Image;>;"
    iget-object v1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 143
    .local v2, "ttImage":Lcom/bytedance/sdk/openadsdk/TTImage;
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTImage;->isValid()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 144
    new-instance v3, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DLcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "ttImage":Lcom/bytedance/sdk/openadsdk/TTImage;
    :cond_b2
    goto :goto_8a

    .line 148
    :cond_b3
    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setImages(Ljava/util/List;)V

    .line 152
    .end local v0    # "imagesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/formats/NativeAd$Image;>;"
    :cond_b6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setOverrideImpressionRecording(Z)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setOverrideClickHandling(Z)V

    .line 157
    new-instance v1, Lcom/bytedance/sdk/openadsdk/adapter/MediaView;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$300(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/adapter/MediaView;-><init>(Landroid/content/Context;)V

    .line 158
    .local v1, "mediaView":Lcom/bytedance/sdk/openadsdk/adapter/MediaView;
    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$300(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v3

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdView()Landroid/view/View;

    move-result-object v4

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/adapter/MediationAdapterUtil;->addNativeFeedMainView(Landroid/content/Context;ILcom/bytedance/sdk/openadsdk/adapter/MediaView;Landroid/view/View;Ljava/util/List;)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setMediaView(Landroid/view/View;)V

    .line 162
    iget-object v2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_f2

    .line 163
    invoke-virtual {p0, v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->setHasVideoContent(Z)V

    .line 164
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    new-instance v2, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$1;

    invoke-direct {v2, p0, p1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$1;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)V

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 201
    :cond_f2
    return-void
.end method

.method synthetic constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;
    .param p2, "x1"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;
    .param p3, "x2"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    return-void
.end method

.method static synthetic access$500(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    .line 125
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    return-object v0
.end method


# virtual methods
.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p2, "clickableAssetViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p3, "nonClickableAssetViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    .local v1, "assetViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v2, "3002"

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 211
    .local v2, "creativeBtn":Landroid/view/View;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v4, "creativeViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v2, :cond_1e

    .line 213
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1e
    iget-object v5, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v5, :cond_2e

    .line 217
    move-object/from16 v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    new-instance v7, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;

    invoke-direct {v7, p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$2;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;)V

    invoke-interface {v5, v6, v1, v4, v7}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 248
    :cond_2e
    move-object/from16 v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    .line 250
    .local v5, "adView":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 251
    .local v6, "overlayView":Landroid/view/View;
    instance-of v7, v6, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_ba

    .line 252
    const/4 v7, 0x1

    .line 253
    .local v7, "privacyIconPlacement":I
    iget-object v8, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;
    invoke-static {v8}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$400(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v8

    if-eqz v8, :cond_53

    .line 254
    iget-object v8, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;
    invoke-static {v8}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;->access$400(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v7

    .line 256
    :cond_53
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 257
    .local v8, "context":Landroid/content/Context;
    if-nez v8, :cond_5a

    .line 258
    return-void

    .line 261
    :cond_5a
    iget-object v9, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v9}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdLogoView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 262
    .local v9, "privacyInformationIconImageView":Landroid/widget/ImageView;
    if-eqz v9, :cond_b7

    .line 263
    new-instance v10, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$3;

    invoke-direct {v10, p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$3;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    move-object v10, v6

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 275
    .local v10, "scale":F
    const/high16 v11, 0x41200000    # 10.0f

    mul-float v11, v11, v10

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    mul-float v11, v11, v10

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v13

    double-to-int v11, v11

    .line 277
    .local v11, "icon_size_px":I
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v12, "params":Landroid/widget/FrameLayout$LayoutParams;
    const v13, 0x800035

    packed-switch v7, :pswitch_data_bc

    .line 294
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_b4

    .line 288
    :pswitch_9f
    const v13, 0x800053

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 289
    goto :goto_b4

    .line 285
    :pswitch_a5
    const v13, 0x800055

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 286
    goto :goto_b4

    .line 291
    :pswitch_ab
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 292
    goto :goto_b4

    .line 282
    :pswitch_ae
    const v13, 0x800033

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 283
    nop

    .line 296
    :goto_b4
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .end local v10    # "scale":F
    .end local v11    # "icon_size_px":I
    .end local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_b7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->requestLayout()V

    .line 301
    .end local v7    # "privacyIconPlacement":I
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "privacyInformationIconImageView":Landroid/widget/ImageView;
    :cond_ba
    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_ab
        :pswitch_a5
        :pswitch_9f
    .end packed-switch
.end method
