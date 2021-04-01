.class public Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

.field c:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private final d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->d:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    .line 61
    new-instance v0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/anythink/network/toutiao/TTRewardedVideoSetting;)V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 159
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v1

    .line 160
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 163
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 165
    if-eqz p2, :cond_3f

    .line 166
    invoke-virtual {p2}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->getSoupportDeepLink()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {p2}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->getVideoOrientation()I

    move-result v2

    if-ne v2, v4, :cond_66

    .line 168
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 173
    :cond_3f
    :goto_3f
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 174
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 177
    :cond_4c
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 178
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 181
    :cond_59
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 183
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 185
    return-void

    .line 169
    :cond_66
    invoke-virtual {p2}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->getVideoOrientation()I

    move-result v2

    if-ne v2, v5, :cond_3f

    .line 170
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto :goto_3f
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Landroid/content/Context;Lcom/anythink/network/toutiao/TTRewardedVideoSetting;)V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 1159
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v1

    .line 1160
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 1161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1163
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1165
    if-eqz p2, :cond_3f

    .line 1166
    invoke-virtual {p2}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->getSoupportDeepLink()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 1167
    invoke-virtual {p2}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->getVideoOrientation()I

    move-result v2

    if-ne v2, v4, :cond_66

    .line 1168
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1173
    :cond_3f
    :goto_3f
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1174
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1177
    :cond_4c
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1178
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1181
    :cond_59
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1183
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 1184
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 21
    return-void

    .line 1169
    :cond_66
    invoke-virtual {p2}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->getVideoOrientation()I

    move-result v2

    if-ne v2, v5, :cond_3f

    .line 1170
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto :goto_3f
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic h(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic l(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic n(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic o(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic p(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic q(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic r(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic s(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic t(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 204
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    invoke-static {}, Lcom/anythink/network/toutiao/TTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    .line 123
    if-nez p2, :cond_18

    .line 124
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_17

    .line 125
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "This placement\'s params in server is null!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 154
    :cond_17
    :goto_17
    return-void

    .line 130
    :cond_18
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    const-string v1, "slot_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 134
    :cond_38
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_17

    .line 135
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "app_id or slot_id is empty!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_17

    .line 141
    :cond_4c
    const/4 v0, 0x0

    .line 142
    if-eqz p3, :cond_62

    instance-of v1, p3, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;

    if-eqz v1, :cond_62

    .line 143
    check-cast p3, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;

    .line 148
    :goto_55
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Landroid/app/Activity;Lcom/anythink/network/toutiao/TTRewardedVideoSetting;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    goto :goto_17

    :cond_62
    move-object p3, v0

    goto :goto_55
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 214
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 209
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_10

    .line 195
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 196
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 199
    :cond_10
    return-void
.end method
