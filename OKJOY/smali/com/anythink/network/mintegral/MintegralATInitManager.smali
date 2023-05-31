.class public Lcom/anythink/network/mintegral/MintegralATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static d:Lcom/anythink/network/mintegral/MintegralATInitManager;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Landroid/os/Handler;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/mintegral/MintegralATInitManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager;->e:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager;->c:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/mintegral/MintegralATInitManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/network/mintegral/MintegralATInitManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATInitManager;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/anythink/network/mintegral/MintegralATInitManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/network/mintegral/MintegralATInitManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATInitManager;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/anythink/network/mintegral/MintegralATInitManager;)V
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;->logGDPRSetting(I)V

    return-void
.end method

.method public static getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/anythink/network/mintegral/MintegralATInitManager;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    if-nez v0, :cond_b

    .line 49
    new-instance v0, Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-direct {v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;-><init>()V

    sput-object v0, Lcom/anythink/network/mintegral/MintegralATInitManager;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    .line 51
    :cond_b
    sget-object v0, Lcom/anythink/network/mintegral/MintegralATInitManager;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public getActivityStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    const-string v1, "com.mintegral.msdk.activity.MTGCommonActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v1, "com.mintegral.msdk.reward.player.MTGRewardVideoActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const-string v1, "com.mintegral.msdk.interstitial.view.MTGInterstitialActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    const-string v0, "Mintegral"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    const-string v0, "com.mintegral.msdk.MIntegralSDK"

    return-object v0
.end method

.method public getPluginClassStatus()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    const-string v0, "mintegral_alphab.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "mintegral_interstitial.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "mintegral_interstitialvideo.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "mintegral_mtgbanner.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "mintegral_mtgbid.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "mintegral_mtgjscommon.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "mintegral_mtgnative.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "mintegral_nativeex.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "mintegral_playercommon.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "mintegral_reward.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "mintegral_videocommon.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "mintegral_videofeeds.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "mintegral_videojs.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "mintegral_mtgdownloads.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :try_start_67
    const-class v0, Lcom/alphab/receiver/AlphabReceiver;

    .line 162
    const-string v0, "mintegral_alphab.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_70} :catch_e9

    .line 168
    :goto_70
    :try_start_70
    const-class v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    .line 169
    const-string v0, "mintegral_interstitial.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_79} :catch_ee

    .line 175
    :goto_79
    :try_start_79
    const-class v0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    .line 176
    const-string v0, "mintegral_interstitialvideo.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_82} :catch_f3

    .line 182
    :goto_82
    :try_start_82
    const-class v0, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    .line 183
    const-string v0, "mintegral_mtgbanner.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_8b} :catch_f8

    .line 189
    :goto_8b
    :try_start_8b
    const-class v0, Lcom/mintegral/msdk/mtgbid/out/BidManager;

    .line 190
    const-string v0, "mintegral_mtgbid.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_94} :catch_fd

    .line 196
    :goto_94
    :try_start_94
    const-class v0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;

    .line 197
    const-string v0, "mintegral_mtgjscommon.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_9d} :catch_102

    .line 203
    :goto_9d
    :try_start_9d
    const-class v0, Lcom/mintegral/msdk/mtgnative/a/b;

    .line 204
    const-string v0, "mintegral_mtgnative.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a6} :catch_107

    .line 210
    :goto_a6
    :try_start_a6
    const-class v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 211
    const-string v0, "mintegral_nativeex.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_af} :catch_10c

    .line 217
    :goto_af
    :try_start_af
    const-class v0, Lcom/mintegral/msdk/playercommon/PlayerView;

    .line 218
    const-string v0, "mintegral_playercommon.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b8} :catch_111

    .line 224
    :goto_b8
    :try_start_b8
    const-class v0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    .line 225
    const-string v0, "mintegral_reward.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_c1} :catch_116

    .line 231
    :goto_c1
    :try_start_c1
    const-class v0, Lcom/mintegral/msdk/video/js/bridge/RewardJs;

    .line 232
    const-string v0, "mintegral_videocommon.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_ca} :catch_11b

    .line 238
    :goto_ca
    :try_start_ca
    const-class v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    .line 239
    const-string v0, "mintegral_videofeeds.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_d3} :catch_120

    .line 245
    :goto_d3
    :try_start_d3
    const-class v0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;

    .line 246
    const-string v0, "mintegral_videojs.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_dc} :catch_125

    .line 253
    :goto_dc
    :try_start_dc
    const-string v0, "com.mintegral.msdk.pluginFramework.PluginService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 254
    const-string v0, "mintegral_mtgdownloads.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_e8} :catch_12a

    .line 259
    :goto_e8
    return-object v1

    .line 164
    :catch_e9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_70

    .line 171
    :catch_ee
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_79

    .line 178
    :catch_f3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_82

    .line 185
    :catch_f8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8b

    .line 192
    :catch_fd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_94

    .line 199
    :catch_102
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9d

    .line 206
    :catch_107
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a6

    .line 213
    :catch_10c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_af

    .line 220
    :catch_111
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b8

    .line 227
    :catch_116
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c1

    .line 234
    :catch_11b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ca

    .line 241
    :catch_120
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d3

    .line 248
    :catch_125
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_dc

    .line 256
    :catch_12a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e8
.end method

.method public getProviderStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 283
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATConst;->isChinaSdk()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    const-string v1, "com.mintegral.msdk.base.utils.MTGFileProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getServiceStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 273
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATConst;->isChinaSdk()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    const-string v1, "com.mintegral.msdk.shell.MTGService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;)V

    .line 57
    return-void
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATInitManager$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/anythink/network/mintegral/MintegralATInitManager$1;-><init>(Lcom/anythink/network/mintegral/MintegralATInitManager;Ljava/util/Map;Landroid/content/Context;Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method
