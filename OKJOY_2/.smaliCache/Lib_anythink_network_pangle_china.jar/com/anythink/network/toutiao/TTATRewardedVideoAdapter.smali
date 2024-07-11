.class public Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

.field d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private final e:Ljava/lang/String;

.field private f:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    .line 67
    new-instance v0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 3

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 244
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_11

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_11
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 127
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 131
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 134
    :try_start_2a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "1"

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_47

    .line 135
    int-to-float p3, v2

    invoke-static {p1, p3}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    int-to-float v2, v3

    invoke-static {p1, v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p3, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_48

    .line 139
    :cond_47
    goto :goto_4c

    .line 138
    :catchall_48
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    :goto_4c
    const/4 p1, 0x1

    if-eqz p2, :cond_7c

    .line 144
    :try_start_4f
    const-string p3, "ad_is_support_deep_link"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5e} :catch_5f

    .line 146
    goto :goto_60

    .line 145
    :catch_5f
    move-exception p3

    .line 149
    :goto_60
    :try_start_60
    const-string p3, "ad_orientation"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 150
    packed-switch p2, :pswitch_data_a4

    goto :goto_7a

    .line 152
    :pswitch_72
    const/4 p2, 0x2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 153
    goto :goto_7c

    .line 155
    :pswitch_77
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_7a} :catch_7b

    .line 159
    :goto_7a
    goto :goto_7c

    .line 158
    :catch_7b
    move-exception p2

    .line 162
    :cond_7c
    :goto_7c
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_89

    .line 163
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 166
    :cond_89
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_96

    .line 167
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 170
    :cond_96
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 172
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 173
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 174
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_77
        :pswitch_72
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .registers 9

    .line 1125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 1127
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    .line 1128
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 1129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1131
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1134
    :try_start_2a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "1"

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_47

    .line 1135
    int-to-float p3, v2

    invoke-static {p1, p3}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    int-to-float v2, v3

    invoke-static {p1, v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p3, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_48

    .line 1139
    :cond_47
    goto :goto_4c

    .line 1138
    :catchall_48
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1142
    :goto_4c
    const/4 p1, 0x1

    if-eqz p2, :cond_7c

    .line 1144
    :try_start_4f
    const-string p3, "ad_is_support_deep_link"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5e} :catch_5f

    .line 1146
    goto :goto_60

    .line 1145
    :catch_5f
    move-exception p3

    .line 1149
    :goto_60
    :try_start_60
    const-string p3, "ad_orientation"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 1150
    packed-switch p2, :pswitch_data_a4

    goto :goto_7a

    .line 1152
    :pswitch_72
    const/4 p2, 0x2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1153
    goto :goto_7c

    .line 1155
    :pswitch_77
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_7a} :catch_7b

    .line 1159
    :goto_7a
    goto :goto_7c

    .line 1158
    :catch_7b
    move-exception p2

    .line 1162
    :cond_7c
    :goto_7c
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_89

    .line 1163
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1166
    :cond_89
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_96

    .line 1167
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1170
    :cond_96
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1172
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 1173
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 26
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_77
        :pswitch_72
    .end packed-switch
.end method

.method static synthetic b(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic t(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic u(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic v(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 224
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 225
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 228
    :cond_a
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    .line 229
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 230
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 191
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 239
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 196
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    const-string v1, "slot_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    .line 198
    const-string v1, "personalized_template"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_36

    .line 207
    :cond_29
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    new-instance v2, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;

    invoke-direct {v2, p0, p1, p3, v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    .line 219
    return-void

    .line 201
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_43

    .line 202
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, ""

    const-string p3, "app_id or slot_id is empty!"

    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_43
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 4

    .line 183
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_10

    .line 184
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 185
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 187
    :cond_10
    return-void
.end method
