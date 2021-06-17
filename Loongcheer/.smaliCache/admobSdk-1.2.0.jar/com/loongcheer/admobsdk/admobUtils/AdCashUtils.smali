.class public Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;
.super Ljava/lang/Object;
.source "AdCashUtils.java"


# static fields
.field private static AD_INTERSTITIAL_SUPPLIER:Z = false

.field private static AD_REWARD_SUPPLIER:Z = false

.field private static final DISPLAYBANNER:I = 0x16

.field private static final LOADINTERSTITIAL:I = 0x14

.field private static final LOADREWD:I = 0x12

.field private static final ONCLKETIME:I = 0x2710

.field private static final SHOWBANNER:I = 0x15

.field private static final SHOWINTERSTITIAL:I = 0x13

.field private static final SHOWREWD:I = 0x11

.field private static final TAG:Ljava/lang/String; = "loongcheer_ad_log"

.field private static admobInterstitialErrorNum:I = 0x0

.field private static admobRewardedErrorNum:I = 0x0

.field private static banner_error:Z = false

.field private static final banner_evetname:Ljava/lang/String; = "admob_banner_pingback"

.field private static defIsIntersitial:Ljava/lang/String; = null

.field private static defIsReward:Ljava/lang/String; = null

.field private static handler:Landroid/os/Handler; = null

.field private static intersitialCorresponding:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static interstitialAdList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private static interstitialAdMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private static interstitialAdid:Ljava/lang/String; = null

.field private static interstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack; = null

.field private static interstitial_error:Z = false

.field private static final interstitial_eventname:Ljava/lang/String; = "admob_intl_pingback"

.field private static interstitialdTimeSwitch:J = 0x0L

.field private static isInterstitialErrorNum:I = 0x0

.field private static isRewardedErrorNum:I = 0x0

.field public static relativeLayout:Landroid/widget/RelativeLayout; = null

.field private static rewardCorresponding:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rewardedAdList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private static rewardedAdMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private static rewardedTimeSwitch:J = 0x0L

.field private static rewarded_error:Z = false

.field private static final rewarded_eventname:Ljava/lang/String; = "admob_rwd_pingback"

.field private static switchNum:I

.field private static timelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->banner_error:Z

    .line 74
    sput-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitial_error:Z

    .line 75
    sput-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewarded_error:Z

    .line 78
    sput-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    .line 79
    sput-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    .line 81
    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    .line 82
    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    .line 84
    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    .line 85
    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    .line 87
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedTimeSwitch:J

    .line 88
    sput-wide v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialdTimeSwitch:J

    .line 90
    const-string v0, "DEFREWARD"

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->defIsReward:Ljava/lang/String;

    .line 91
    const-string v0, "DEFINTERSITIAL"

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->defIsIntersitial:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$1;

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->handler:Landroid/os/Handler;

    .line 1119
    const/4 v0, 0x2

    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->switchNum:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 54
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewarded_error:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 54
    sput-boolean p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewarded_error:Z

    return p0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->appsflyerAdValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()I
    .registers 1

    .line 54
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 54
    sput p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    return p0
.end method

.method static synthetic access$1208()I
    .registers 2

    .line 54
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    return v0
.end method

.method static synthetic access$1210()I
    .registers 2

    .line 54
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    return v0
.end method

.method static synthetic access$1300()Ljava/util/List;
    .registers 1

    .line 54
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .registers 1

    .line 54
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500()I
    .registers 1

    .line 54
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 54
    sput p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    return p0
.end method

.method static synthetic access$1508()I
    .registers 2

    .line 54
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    return v0
.end method

.method static synthetic access$1510()I
    .registers 2

    .line 54
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    return v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .registers 1

    .line 54
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;
    .registers 1

    .line 54
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitial_error:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 54
    sput-boolean p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitial_error:Z

    return p0
.end method

.method static synthetic access$1900()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->banner_error:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 54
    sput-boolean p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->banner_error:Z

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 54
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;FLcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # F
    .param p2, "x2"    # Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    .line 54
    invoke-static {p0, p1, p2}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showBanner(Ljava/lang/String;FLcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V

    return-void
.end method

.method static synthetic access$500()V
    .registers 0

    .line 54
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->shutDownBannerAD()V

    return-void
.end method

.method static synthetic access$600()I
    .registers 1

    .line 54
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    return v0
.end method

.method static synthetic access$602(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 54
    sput p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    return p0
.end method

.method static synthetic access$608()I
    .registers 2

    .line 54
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    return v0
.end method

.method static synthetic access$610()I
    .registers 2

    .line 54
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    return v0
.end method

.method static synthetic access$700()V
    .registers 0

    .line 54
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardSwitch()V

    return-void
.end method

.method static synthetic access$800()Ljava/util/List;
    .registers 1

    .line 54
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/Map;
    .registers 1

    .line 54
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    return-object v0
.end method

.method private static adOnclkeTime(Ljava/lang/String;)Z
    .registers 9
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 987
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->timelist:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->timelist:Ljava/util/HashMap;

    .line 991
    :cond_b
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->timelist:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_22

    .line 992
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->timelist:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    return v1

    .line 995
    :cond_22
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->timelist:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 996
    .local v2, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-lez v0, :cond_47

    .line 997
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->timelist:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    return v1

    .line 1000
    :cond_47
    const/4 v0, 0x0

    return v0
.end method

.method private static admobshowInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    .registers 6
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adInterstitialCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob  \u89e6\u53d1\u63d2\u9875\u5e7f\u544a id\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 627
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u5c55\u793a\u63d2\u9875"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    sput-object p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdid:Ljava/lang/String;

    .line 630
    sput-object p1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 631
    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    if-eqz v1, :cond_7b

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7b

    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_7b

    .line 646
    :cond_3a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitial_error:Z

    .line 647
    const-string v1, "admob \u89e6\u53d1\u63d2\u9875\u5e7f\u544a"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 648
    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 649
    .local v1, "interstitialAd":Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    invoke-static {v1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdValue(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 650
    invoke-virtual {v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "mediationAdpteName":Ljava/lang/String;
    new-instance v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$7;

    invoke-direct {v3, v2, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$7;-><init>(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 691
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 693
    sget-object v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 694
    const-string v0, "admob \u89e6\u53d1\u63d2\u9875\u5e7f\u544a\u5b8c\u6210"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    goto :goto_a6

    .line 632
    .end local v1    # "interstitialAd":Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .end local v2    # "mediationAdpteName":Ljava/lang/String;
    :cond_7b
    :goto_7b
    const-string v1, "admob \u672a\u627e\u63d2\u9875\u5e7f\u544a"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 633
    sget-object v2, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    const-string v3, "admob \u672a\u627e\u5e7f\u544a"

    invoke-interface {v2, v3}, Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;->onAdError(Ljava/lang/String;)V

    .line 634
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->adOnclkeTime(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 637
    const-string v1, "admob   \u672a\u627e\u63d2\u9875 \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 638
    const-string v1, "admob \u672a\u627e\u63d2\u9875 \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadInterstitialAd(Ljava/lang/String;)V

    goto :goto_a6

    .line 641
    :cond_9e
    const-string v1, "admob \u672a\u627e\u5230\u63d2\u9875 \u91cd\u590d\u70b9\u51fb"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 642
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :goto_a6
    return-void
.end method

.method private static appsflyerAdValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "currencyCode"    # Ljava/lang/String;
    .param p1, "precisionType"    # Ljava/lang/String;
    .param p2, "valueMicros"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "network"    # Ljava/lang/String;

    .line 1075
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1076
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "currencyCode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const-string v1, "precisionType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const-string v1, "valueMicros"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    invoke-static {p4}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->netWorkAdpterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string v1, "ad_type"

    const-string v2, "Admob"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v1

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u4ef7\u503c\u56de\u4f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::::: \u4e8b\u4ef6\u540d\u5b57\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::::: \u4e2d\u4ecb\u7ec4\u4e3a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->netWorkAdpterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 1085
    return-void
.end method

.method private static appsflyerEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "eventname"    # Ljava/lang/String;

    .line 1297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1298
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v1

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p0}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "af \u6253\u70b9 \u4e8b\u4ef6\u540d\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 1300
    return-void
.end method

.method private static bannerValue(Lcom/google/android/gms/ads/AdView;)V
    .registers 2
    .param p0, "adView"    # Lcom/google/android/gms/ads/AdView;

    .line 1060
    new-instance v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$11;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$11;-><init>(Lcom/google/android/gms/ads/AdView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/AdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 1070
    return-void
.end method

.method private static interstitialAdValue(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 2
    .param p0, "interstitialAd"    # Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 1038
    new-instance v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$10;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$10;-><init>(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 1050
    return-void
.end method

.method private static interstitialCorresponding()V
    .registers 7

    .line 1243
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    if-nez v0, :cond_6c

    .line 1244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    .line 1246
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInterstitialAdList()Ljava/util/List;

    move-result-object v0

    .line 1247
    .local v0, "admobList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getIsInterstitialAdList()Ljava/util/List;

    move-result-object v1

    .line 1249
    .local v1, "islist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 1252
    const-string v3, "DefaultInterstitial"

    if-eqz v1, :cond_3b

    :try_start_26
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2d

    goto :goto_3b

    .line 1255
    :cond_2d
    sget-object v4, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 1253
    :cond_3b
    :goto_3b
    sget-object v4, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_44} :catch_45

    .line 1267
    :goto_44
    goto :goto_69

    .line 1257
    :catch_45
    move-exception v4

    .line 1258
    .local v4, "e":Ljava/lang/Exception;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_56

    .line 1259
    sget-object v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 1261
    :cond_56
    sget-object v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1274
    .end local v0    # "admobList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "islist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_6c
    return-void
.end method

.method public static interstitialSwitch()V
    .registers 9

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob\u63d2\u9875\u9519\u8bef\u6b21\u6570"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":::: IS \u63d2\u9875\u672a\u67e5\u8be2\u5230\u6b21\u6570"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 1164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialdTimeSwitch:J

    sub-long/2addr v0, v2

    .line 1166
    .local v0, "timeIt":J
    const-wide/32 v2, 0x2bf20

    cmp-long v4, v0, v2

    if-gez v4, :cond_39

    .line 1168
    const-string v2, "\u672a\u5230\u5207\u6362\u65f6\u95f4"

    invoke-static {v2}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    goto/16 :goto_cc

    .line 1171
    :cond_39
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInterstitialAdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_56

    :cond_4a
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInterstitialAdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1172
    .local v2, "num":I
    :goto_56
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getIsInterstitialAdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_66

    const/4 v4, 0x1

    goto :goto_72

    :cond_66
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getIsInterstitialAdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1174
    .local v4, "isNum":I
    :goto_72
    sget v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    sget v6, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->switchNum:I

    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getParallel()I

    move-result v7

    mul-int v6, v6, v7

    mul-int v6, v6, v2

    const/4 v7, 0x0

    if-lt v5, v6, :cond_a0

    sget-boolean v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    if-nez v5, :cond_a0

    .line 1175
    const-string v5, "admob\u63d2\u9875\u5207\u6362IS\u5e7f\u544a\u5e73\u53f0"

    invoke-static {v5}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 1176
    sput-boolean v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    .line 1177
    sput v7, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    .line 1178
    sput v7, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    .line 1180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialdTimeSwitch:J

    .line 1181
    const-string v3, "admob_is_intl"

    invoke-static {v3}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->appsflyerEvent(Ljava/lang/String;)V

    goto :goto_cc

    .line 1183
    :cond_a0
    sget v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    sget v6, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->switchNum:I

    mul-int v6, v6, v4

    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getParallel()I

    move-result v8

    mul-int v6, v6, v8

    if-lt v5, v6, :cond_cc

    sget-boolean v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    if-ne v5, v3, :cond_cc

    .line 1185
    const-string v3, "IS\u63d2\u9875\u5207\u6362Admob\u5e7f\u544a\u5e73\u53f0"

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 1186
    sput-boolean v7, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    .line 1187
    sput v7, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I

    .line 1188
    sput v7, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    .line 1189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialdTimeSwitch:J

    .line 1190
    const-string v3, "is_admob_intl"

    invoke-static {v3}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->appsflyerEvent(Ljava/lang/String;)V

    .line 1197
    .end local v2    # "num":I
    .end local v4    # "isNum":I
    :cond_cc
    :goto_cc
    return-void
.end method

.method public static isAdInterstitialSupplier()Z
    .registers 1

    .line 1204
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    return v0
.end method

.method public static isAdRewardSupplier()Z
    .registers 1

    .line 1200
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    return v0
.end method

.method private static isshowInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    .registers 5
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adInterstitialCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 706
    const-string v0, "\u5f00\u59cb\u5c55\u793aIS\u63d2\u9875\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 707
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 708
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS \u5c55\u793a\u63d2\u9875id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 711
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->queryCashInterstitialAd()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 712
    invoke-static {v0, p1}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->showInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V

    .line 713
    const-string v1, "\u5c55\u793aIS\u63d2\u9875\u5e7f\u544a"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    goto :goto_4e

    .line 716
    :cond_32
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->adOnclkeTime(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "loongcheer_ad_log"

    if-eqz v1, :cond_46

    .line 717
    const-string v1, "IS\u672a\u67e5\u8be2\u5230\u63d2\u9875"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 718
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadInterstitialAd(Ljava/lang/String;)V

    goto :goto_4e

    .line 721
    :cond_46
    const-string v1, "IS\u672a\u67e5\u8be2\u5230\u63d2\u9875 \u91cd\u590d\u70b9\u51fb"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 722
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_4e
    return-void
.end method

.method private static loadAdmobInterstitial(Ljava/lang/String;)V
    .registers 7
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u8fdb\u5165\u7f13\u5b58\u63d2\u9875\u5e7f\u544a \u7f13\u5b58id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 547
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u7f13\u5b58\u63d2\u9875\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    if-nez v0, :cond_28

    .line 549
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    .line 551
    :cond_28
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdList:Ljava/util/List;

    if-nez v0, :cond_33

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdList:Ljava/util/List;

    .line 556
    :cond_33
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 557
    .local v0, "interstitialSize":I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getParallel()I

    move-result v1

    sub-int/2addr v1, v0

    .line 558
    .local v1, "forsize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "admob  \u5f53\u524d\u63d2\u9875\u6570\u7ec4\u957f\u5ea6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 560
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5f
    if-ge v2, v1, :cond_79

    .line 562
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    .line 563
    .local v3, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$6;

    invoke-direct {v5, p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$6;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p0, v3, v5}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    .line 560
    .end local v3    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 594
    .end local v2    # "i":I
    :cond_79
    return-void
.end method

.method private static loadAdmobRewardedVideo(Ljava/lang/String;)V
    .registers 7
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u8fdb\u5165\u7f13\u5b58\u6fc0\u52b1\u89c6\u9891 \u7f13\u5b58id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 195
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u52a0\u8f7d\u6fc0\u52b1\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    if-nez v0, :cond_28

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    .line 201
    :cond_28
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdList:Ljava/util/List;

    if-nez v0, :cond_33

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdList:Ljava/util/List;

    .line 205
    :cond_33
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 206
    .local v0, "rewardedSize":I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getParallel()I

    move-result v1

    sub-int/2addr v1, v0

    .line 207
    .local v1, "forsize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "admob \u5f53\u524d\u6fc0\u52b1\u6570\u7ec4\u957f\u5ea6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 208
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5f
    if-ge v2, v1, :cond_79

    .line 210
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    .line 213
    .local v3, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$2;

    invoke-direct {v5, p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$2;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p0, v3, v5}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    .line 208
    .end local v3    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 242
    .end local v2    # "i":I
    :cond_79
    return-void
.end method

.method private static loadInterstitial(Ljava/lang/String;)V
    .registers 3
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 500
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialCorresponding()V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u63d2\u9875\u5e7f\u544a ::: \u6807\u8bc6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 502
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    if-eqz v0, :cond_23

    .line 503
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadIsInterstitial(Ljava/lang/String;)V

    goto :goto_26

    .line 505
    :cond_23
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadAdmobInterstitial(Ljava/lang/String;)V

    .line 509
    :goto_26
    return-void
.end method

.method public static loadInterstitialAd(Ljava/lang/String;)V
    .registers 3
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 490
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 491
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 492
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 493
    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    return-void
.end method

.method private static loadIsInterstitial(Ljava/lang/String;)V
    .registers 3
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 512
    const-string v0, "\u52a0\u8f7dIS\u63d2\u9875\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 515
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->queryCashInterstitialAd()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 516
    const-string v0, "IS\u63d2\u9875\u5e7f\u544a\u4ee5\u7f13\u5b58\u597d"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 517
    return-void

    .line 519
    :cond_11
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 521
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$5;

    invoke-direct {v1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$5;-><init>()V

    invoke-static {v0, v1}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->loadInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;)V

    .line 541
    return-void
.end method

.method private static loadIsRewardedVideo(Ljava/lang/String;)V
    .registers 2
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 170
    const-string v0, "\u52a0\u8f7dIS\u6fc0\u52b1\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->queryCashRewardVideoAd()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 173
    const-string v0, "IS\u6fc0\u52b1\u5e7f\u544a\u53ef\u4ee5\u64ad\u653e"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 174
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    .line 175
    if-gez v0, :cond_2a

    .line 176
    const/4 v0, 0x0

    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    goto :goto_2a

    .line 179
    :cond_1c
    sget v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    .line 180
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardSwitch()V

    .line 181
    const-string v0, "IS\u6fc0\u52b1\u5e7f\u544a\u4e0d\u53ef\u4ee5\u64ad\u653e"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 185
    :cond_2a
    :goto_2a
    return-void
.end method

.method private static loadRewardedVideo(Ljava/lang/String;)V
    .registers 4
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding()V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f13\u5b58\u6fc0\u52b1\uff1a\uff1a\uff1a \u6807\u8bc6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 155
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    if-eqz v0, :cond_41

    .line 156
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS \u6fc0\u52b1id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 158
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadIsRewardedVideo(Ljava/lang/String;)V

    .line 159
    .end local v0    # "id":Ljava/lang/String;
    goto :goto_44

    .line 160
    :cond_41
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadAdmobRewardedVideo(Ljava/lang/String;)V

    .line 162
    :goto_44
    return-void
.end method

.method public static loadRewardedVideoAd(Ljava/lang/String;)V
    .registers 3
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 136
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 137
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    .line 138
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method

.method private static netWorkAdpterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1090
    const-string v0, "unity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1091
    const-string v0, "Unity"

    return-object v0

    .line 1093
    :cond_b
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1094
    const-string v0, "Facebook"

    return-object v0

    .line 1095
    :cond_16
    const-string v0, "applovin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1096
    const-string v0, "Applovin"

    return-object v0

    .line 1097
    :cond_21
    const-string v0, "ironsource"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1099
    const-string v0, "IronSource"

    return-object v0

    .line 1101
    :cond_2c
    const-string v0, "pangle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1102
    const-string v0, "Pangle"

    return-object v0

    .line 1103
    :cond_37
    const-string v0, "vungle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1104
    const-string v0, "Vungle"

    return-object v0

    .line 1106
    :cond_42
    const-string v0, "admob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1107
    const-string v0, "Admob"

    return-object v0

    .line 1109
    :cond_4d
    const-string v0, "tapjoy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1110
    const-string v0, "Tapjoy"

    return-object v0

    .line 1111
    :cond_58
    const-string v0, "adcolony"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1112
    const-string v0, "AdColony"

    return-object v0

    .line 1114
    :cond_63
    return-object p0
.end method

.method private static queryAdmobCashInterstitialAd(Ljava/lang/String;)Z
    .registers 3
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob  \u67e5\u8be2\u63d2\u9875\u5e7f\u544aid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 940
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u67e5\u8be2\u63d2\u9875\u5e7f\u544a\u7f13\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    if-eqz v1, :cond_3d

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_36

    goto :goto_3d

    .line 955
    :cond_36
    const-string v1, "admob \u67e5\u8be2\u5230\u63d2\u9875\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x1

    return v0

    .line 943
    :cond_3d
    :goto_3d
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->adOnclkeTime(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 944
    const-string v1, "admob \u672a\u627e\u5230\u63d2\u9875 \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 945
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadInterstitialAd(Ljava/lang/String;)V

    goto :goto_57

    .line 948
    :cond_4f
    const-string v1, "admob \u672a\u627e\u5230\u63d2\u9875 \u91cd\u590d\u70b9\u51fb"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 949
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :goto_57
    const/4 v0, 0x0

    return v0
.end method

.method public static queryCashAdmobRewardVideoAd(Ljava/lang/String;)Z
    .registers 3
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u67e5\u8be2\u6fc0\u52b1\u5e7f\u544aid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 410
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u67e5\u8be2\u6fc0\u52b1\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    if-eqz v1, :cond_3d

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_36

    goto :goto_3d

    .line 426
    :cond_36
    const-string v1, "admob \u67e5\u8be2\u5230\u6fc0\u52b1\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x1

    return v0

    .line 413
    :cond_3d
    :goto_3d
    const-string v1, "admob \u67e5\u8be2\u6fc0\u52b1\u5e7f\u544a\u5931\u8d25\u6216\u8005\u672a\u627e\u5230"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->adOnclkeTime(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 416
    const-string v1, " admob \u672a\u627e\u5230\u6fc0\u52b1 \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 417
    const-string v1, "admob \u672a\u627e\u5230\u6fc0\u52b1 \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadRewardedVideoAd(Ljava/lang/String;)V

    goto :goto_5e

    .line 421
    :cond_56
    const-string v1, "admob \u672a\u627e\u5230\u6fc0\u52b1 \u91cd\u590d\u70b9\u51fb"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 422
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_5e
    const/4 v0, 0x0

    return v0
.end method

.method public static queryCashInterstitialAd(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 922
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    if-eqz v0, :cond_9

    .line 923
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->queryIsCashInterstitialAd(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 925
    :cond_9
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->queryAdmobCashInterstitialAd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static queryCashIsRewardVideoAd(Ljava/lang/String;)Z
    .registers 5
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IS \u67e5\u8be2\u5e7f\u544a\u5230\u5e7f\u544a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->queryCashRewardVideoAd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 437
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 438
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS \u67e5\u8be2\u6fc0\u52b1id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 439
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->queryCashRewardVideoAd()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 440
    const-string v1, "IS \u67e5\u8be2\u5e7f\u544a\u5230\u5e7f\u544a"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 441
    sget v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    sput v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    .line 442
    if-gez v1, :cond_4e

    .line 443
    sput v2, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    .line 445
    :cond_4e
    return v3

    .line 447
    :cond_4f
    const-string v1, "IS \u672a\u67e5\u8be2\u5e7f\u544a\u5230\u5e7f\u544a \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 449
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->adOnclkeTime(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "loongcheer_ad_log"

    if-eqz v1, :cond_68

    .line 450
    const-string v1, "IS\u672a\u627e\u5230\u63d2\u9875 \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 451
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadRewardedVideoAd(Ljava/lang/String;)V

    goto :goto_70

    .line 454
    :cond_68
    const-string v1, "IS\u672a\u627e\u5230\u63d2\u9875 \u91cd\u590d\u70b9\u51fb"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 455
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_70
    return v2
.end method

.method public static queryCashRewardVideoAd(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 472
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 473
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding()V

    .line 476
    :cond_7
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    if-eqz v0, :cond_10

    .line 477
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->queryCashIsRewardVideoAd(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 479
    :cond_10
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->queryCashAdmobRewardVideoAd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static queryIsCashInterstitialAd(Ljava/lang/String;)Z
    .registers 4
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IS \u67e5\u8be2\u5e7f\u544a\u5230\u5e7f\u544a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->queryCashInterstitialAd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 891
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 892
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS \u67e5\u8be2\u63d2\u9875id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 893
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->queryCashInterstitialAd()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 894
    const-string v1, "IS \u67e5\u8be2\u5e7f\u544a\u5230\u53ef\u64ad\u653e"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 895
    const/4 v1, 0x1

    return v1

    .line 897
    :cond_45
    const-string v1, "IS \u672a\u67e5\u8be2\u5e7f\u544a\u5230\u5e7f\u544a \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 899
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->adOnclkeTime(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "loongcheer_ad_log"

    if-eqz v1, :cond_5e

    .line 900
    const-string v1, "IS\u672a\u627e\u5230\u63d2\u9875 \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 901
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadInterstitialAd(Ljava/lang/String;)V

    goto :goto_66

    .line 904
    :cond_5e
    const-string v1, "IS\u672a\u627e\u5230\u63d2\u9875 \u91cd\u590d\u70b9\u51fb"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 905
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :goto_66
    const/4 v1, 0x0

    return v1
.end method

.method private static rewardCorresponding()V
    .registers 7

    .line 1208
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    if-nez v0, :cond_6c

    .line 1209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    .line 1211
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getRewardVideoList()Ljava/util/List;

    move-result-object v0

    .line 1212
    .local v0, "admobList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getIsRewardVideoList()Ljava/util/List;

    move-result-object v1

    .line 1214
    .local v1, "islist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 1217
    const-string v3, "DefaultRewardedVideo"

    if-eqz v1, :cond_3b

    :try_start_26
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2d

    goto :goto_3b

    .line 1220
    :cond_2d
    sget-object v4, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 1218
    :cond_3b
    :goto_3b
    sget-object v4, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_44} :catch_45

    .line 1234
    :goto_44
    goto :goto_69

    .line 1222
    :catch_45
    move-exception v4

    .line 1224
    .local v4, "e":Ljava/lang/Exception;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_56

    .line 1225
    sget-object v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 1228
    :cond_56
    sget-object v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->intersitialCorresponding:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1240
    .end local v0    # "admobList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "islist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_6c
    return-void
.end method

.method private static rewardSwitch()V
    .registers 9

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob\u6fc0\u52b1\u9519\u8bef\u6b21\u6570"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::::: IS\u6fc0\u52b1\u672a\u67e5\u8be2\u5230\u6b21\u6570"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 1128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedTimeSwitch:J

    sub-long/2addr v0, v2

    .line 1130
    .local v0, "timeRW":J
    const-wide/32 v2, 0x2bf20

    cmp-long v4, v0, v2

    if-gez v4, :cond_39

    .line 1131
    const-string v2, "\u672a\u5230\u5207\u6362\u65f6\u95f4"

    invoke-static {v2}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    goto/16 :goto_c8

    .line 1134
    :cond_39
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getRewardVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_56

    :cond_4a
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getRewardVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1135
    .local v2, "num":I
    :goto_56
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getIsRewardVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_66

    const/4 v4, 0x1

    goto :goto_72

    :cond_66
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getIsRewardVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1137
    .local v4, "isNum":I
    :goto_72
    sget v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    sget v6, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->switchNum:I

    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getParallel()I

    move-result v7

    mul-int v6, v6, v7

    mul-int v6, v6, v2

    const/4 v7, 0x0

    if-lt v5, v6, :cond_9e

    sget-boolean v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    if-nez v5, :cond_9e

    .line 1138
    const-string v5, "admob \u6fc0\u52b1\u5207\u6362\u4e3aIS\u5e7f\u544a\u5e73\u53f0 "

    invoke-static {v5}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 1139
    sput-boolean v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    .line 1140
    sput v7, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    .line 1141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedTimeSwitch:J

    .line 1142
    const-string v3, " admob_is_rwd"

    invoke-static {v3}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->appsflyerEvent(Ljava/lang/String;)V

    goto :goto_c8

    .line 1145
    :cond_9e
    sget v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    sget v6, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->switchNum:I

    mul-int v6, v6, v4

    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getParallel()I

    move-result v8

    mul-int v6, v6, v8

    if-lt v5, v6, :cond_c8

    sget-boolean v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    if-ne v5, v3, :cond_c8

    .line 1146
    const-string v3, "IS\u6fc0\u52b1\u5207\u6362\u4e3aadmob\u5e7f\u544a\u5e73\u53f0"

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 1147
    sput-boolean v7, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    .line 1148
    sput v7, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isRewardedErrorNum:I

    .line 1149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedTimeSwitch:J

    .line 1150
    const-string v3, "  is_admob_rwd"

    invoke-static {v3}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->appsflyerEvent(Ljava/lang/String;)V

    .line 1156
    .end local v2    # "num":I
    .end local v4    # "isNum":I
    :cond_c8
    :goto_c8
    return-void
.end method

.method private static rewardedVideoValue(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .registers 2
    .param p0, "rewardedAd"    # Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 1017
    new-instance v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$9;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$9;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 1028
    return-void
.end method

.method public static setRewAd(Z)V
    .registers 2
    .param p0, "isAd"    # Z

    .line 1277
    sput-boolean p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    .line 1278
    const/16 v0, 0x3e7

    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I

    .line 1279
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardSwitch()V

    .line 1282
    return-void
.end method

.method public static setintAd(Z)V
    .registers 2
    .param p0, "isAd"    # Z

    .line 1285
    sput-boolean p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    .line 1286
    const/16 v0, 0x3e7

    sput v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I

    .line 1287
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialSwitch()V

    .line 1288
    return-void
.end method

.method private static showAdmobRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    .registers 7
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adRewardedCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u89e6\u53d1\u6fc0\u52b1\u5e7f\u544a id\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 271
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u5c55\u793a\u6fc0\u52b1\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    if-eqz v1, :cond_9a

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9a

    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_36

    goto :goto_9a

    .line 287
    :cond_36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewarded_error:Z

    .line 288
    sget-object v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 289
    .local v1, "rewardedAd":Lcom/google/android/gms/ads/rewarded/RewardedAd;
    invoke-static {v1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedVideoValue(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 290
    invoke-virtual {v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "mediationAdpteName":Ljava/lang/String;
    new-instance v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;

    invoke-direct {v3, p1, p0, v2}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;-><init>(Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 329
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$4;

    invoke-direct {v4, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$4;-><init>(Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 337
    sget-object v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " admob \u6fc0\u52b1\u5e7f\u544a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u7f13\u5b58\u957f\u5ea6"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    goto :goto_c3

    .line 273
    .end local v1    # "rewardedAd":Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .end local v2    # "mediationAdpteName":Ljava/lang/String;
    :cond_9a
    :goto_9a
    const-string v1, "admob \u672a\u627e\u5230\u6fc0\u52b1 \u6216\u8005\u6fc0\u52b1\u5931\u8d25"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 274
    const-string v1, "admob \u672a\u627e\u5230\u6fc0\u52b1\u6216\u8005\u6fc0\u52b1\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v1, "\u672a\u627e\u5230\u7f13\u5b58\u5e7f\u544a"

    invoke-interface {p1, v1}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onAdError(Ljava/lang/String;)V

    .line 277
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->adOnclkeTime(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 278
    const-string v1, "admob \u672a\u627e\u5230\u6fc0\u52b1 \u89e6\u53d1\u7f13\u5b58"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadRewardedVideoAd(Ljava/lang/String;)V

    goto :goto_c3

    .line 283
    :cond_bb
    const-string v1, "admob \u672a\u627e\u5230\u6fc0\u52b1 \u91cd\u590d\u70b9\u51fb"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_c3
    return-void
.end method

.method private static showBanner(Ljava/lang/String;FLcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V
    .registers 8
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "y"    # F
    .param p2, "adBannerCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    .line 784
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->relativeLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_21

    .line 785
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 788
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 789
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    float-to-int v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 792
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_21
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isCash()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 795
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->relativeLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 796
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 797
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 798
    .local v0, "adView":Lcom/google/android/gms/ads/AdView;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->bannerValue(Lcom/google/android/gms/ads/AdView;)V

    .line 800
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 801
    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 803
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 804
    .local v1, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 805
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 806
    .local v2, "width":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, "netWorkAdpterName":Ljava/lang/String;
    new-instance v4, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$8;

    invoke-direct {v4, p2, v3}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$8;-><init>(Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 854
    sget-object v4, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 855
    .end local v0    # "adView":Lcom/google/android/gms/ads/AdView;
    .end local v1    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .end local v2    # "width":I
    .end local v3    # "netWorkAdpterName":Ljava/lang/String;
    goto :goto_84

    .line 857
    :cond_7f
    const-string v0, "\u4e2d\u4ecb\u7ec4\u8fd8\u672a\u521d\u59cb\u5b8c\u6210"

    invoke-interface {p2, v0}, Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;->onAdError(Ljava/lang/String;)V

    .line 859
    :goto_84
    return-void
.end method

.method public static showBannerAd(Ljava/lang/String;FLcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V
    .registers 6
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "y"    # F
    .param p2, "adBannerCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    .line 771
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 772
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;

    invoke-direct {v1}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;-><init>()V

    .line 773
    .local v1, "showAdBean":Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
    invoke-virtual {v1, p0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->setAd_id(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v1, p2}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->setAdBannerCallBack(Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V

    .line 775
    invoke-virtual {v1, p1}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->setY(F)V

    .line 776
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 777
    const/16 v2, 0x15

    iput v2, v0, Landroid/os/Message;->what:I

    .line 778
    sget-object v2, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 781
    return-void
.end method

.method private static showInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    .registers 4
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adInterstitialCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c55\u793a\u63d2\u9875\u5e7f\u544a :::\u6807\u8bc6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 740
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_INTERSTITIAL_SUPPLIER:Z

    if-eqz v0, :cond_3d

    .line 742
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    if-eqz v0, :cond_39

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_39

    .line 746
    :cond_35
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobshowInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V

    goto :goto_40

    .line 743
    :cond_39
    :goto_39
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isshowInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V

    goto :goto_40

    .line 751
    :cond_3d
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobshowInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V

    .line 755
    :goto_40
    return-void
.end method

.method public static showInterstitialAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    .registers 5
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adInterstitialCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 608
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 609
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;

    invoke-direct {v1}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;-><init>()V

    .line 610
    .local v1, "showAdBean":Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
    invoke-virtual {v1, p0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->setAd_id(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1, p1}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->setAdInterstitialCallBack(Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V

    .line 612
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 613
    const/16 v2, 0x13

    iput v2, v0, Landroid/os/Message;->what:I

    .line 614
    sget-object v2, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 616
    return-void
.end method

.method private static showIsRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    .registers 5
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adRewardedCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 352
    const-string v0, "IS \u5f00\u59cb\u5c55\u793a\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 355
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS \u5c55\u793a\u6fc0\u52b1id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 357
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->queryCashRewardVideoAd()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 358
    const-string v1, "IS \u67e5\u8be2\u5230\u5e7f\u544a\u5e76\u5f00\u59cb\u5c55\u793a\u5e7f\u544a"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 359
    invoke-static {v0, p1}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->showRewdAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    goto :goto_53

    .line 361
    :cond_32
    const-string v1, "\u5e7f\u544a\u672a\u7f13\u5b58\u597d"

    invoke-interface {p1, v1}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onAdError(Ljava/lang/String;)V

    .line 362
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->adOnclkeTime(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "loongcheer_ad_log"

    if-eqz v1, :cond_4b

    .line 363
    const-string v1, "IS\u672a\u67e5\u8be2\u5230\u6fc0\u52b1"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 364
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadRewardedVideoAd(Ljava/lang/String;)V

    goto :goto_53

    .line 367
    :cond_4b
    const-string v1, "IS\u672a\u67e5\u8be2\u5230\u6fc0\u52b1 \u91cd\u590d\u70b9\u51fb"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 368
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_53
    return-void
.end method

.method private static showRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    .registers 4
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adRewardedCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u5f00\u59cb\u5c55\u793a\u6fc0\u52b1\u5e7f\u544a \uff1a\uff1a\uff1a \u6807\u8bc6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 386
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding:Ljava/util/Map;

    if-nez v0, :cond_1f

    .line 387
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardCorresponding()V

    .line 391
    :cond_1f
    sget-boolean v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->AD_REWARD_SUPPLIER:Z

    if-eqz v0, :cond_44

    .line 393
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    if-eqz v0, :cond_40

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_40

    .line 398
    :cond_3c
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showAdmobRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    goto :goto_47

    .line 395
    :cond_40
    :goto_40
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showIsRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    goto :goto_47

    .line 401
    :cond_44
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showAdmobRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    .line 405
    :goto_47
    return-void
.end method

.method public static showRewardedVideoAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    .registers 5
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adRewardedCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 252
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 253
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;

    invoke-direct {v1}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;-><init>()V

    .line 254
    .local v1, "showAdBean":Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
    invoke-virtual {v1, p0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->setAd_id(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1, p1}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->setAdRewardedCallBack(Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    .line 256
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    const/16 v2, 0x11

    iput v2, v0, Landroid/os/Message;->what:I

    .line 258
    sget-object v2, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    return-void
.end method

.method public static shutDownBanner()V
    .registers 2

    .line 867
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->handler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 869
    return-void
.end method

.method private static shutDownBannerAD()V
    .registers 2

    .line 873
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->relativeLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    goto :goto_f

    .line 876
    :cond_5
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 877
    sget-object v0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->relativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 880
    :goto_f
    return-void
.end method
