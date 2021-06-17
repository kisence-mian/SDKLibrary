.class public Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;
.super Ljava/lang/Object;
.source "AppsflyerInit.java"


# static fields
.field private static appsflyerInit:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;


# instance fields
.field public playCallback:Lcom/loongcheer/appsflyersdk/callback/PlayCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;
    .registers 1

    .line 37
    sget-object v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->appsflyerInit:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    invoke-direct {v0}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;-><init>()V

    sput-object v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->appsflyerInit:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    .line 40
    :cond_b
    sget-object v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->appsflyerInit:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    return-object v0
.end method


# virtual methods
.method public event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "eventKey"    # Ljava/lang/String;
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

    .line 118
    .local p2, "eventValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;)V
    .registers 9
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "appKey"    # Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$1;-><init>(Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;)V

    .line 73
    .local v0, "appsFlyerConversionListener":Lcom/appsflyer/AppsFlyerConversionListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    new-instance v2, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$2;

    invoke-direct {v2, p0}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$2;-><init>(Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;)V

    invoke-virtual {v1, p1, v2}, Lcom/appsflyer/AppsFlyerLib;->registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V

    .line 93
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    .line 94
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->startTracking(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->getInstance()Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->start(Landroid/content/Context;)V

    .line 98
    :try_start_2e
    invoke-static {p1}, Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "app_packename":Ljava/lang/String;
    const-string v2, "loongcheer_admob"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "pkname"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v3

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "install_pkname"

    invoke-virtual {v3, v4, v2, v5}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4e} :catch_4f

    .line 106
    .end local v1    # "app_packename":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_50

    .line 104
    :catch_4f
    move-exception v1

    .line 107
    :goto_50
    return-void
.end method

.method public playValidation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/loongcheer/appsflyersdk/callback/PlayCallback;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playKey"    # Ljava/lang/String;
    .param p3, "playSignin"    # Ljava/lang/String;
    .param p4, "playJson"    # Ljava/lang/String;
    .param p5, "playRevenue"    # Ljava/lang/String;
    .param p6, "playCurrency"    # Ljava/lang/String;
    .param p8, "playCallback"    # Lcom/loongcheer/appsflyersdk/callback/PlayCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/loongcheer/appsflyersdk/callback/PlayCallback;",
            ")V"
        }
    .end annotation

    .line 142
    .local p7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->playCallback:Lcom/loongcheer/appsflyersdk/callback/PlayCallback;

    .line 144
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/appsflyer/AppsFlyerLib;->validateAndTrackInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method public purchase(Landroid/content/Context;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "REVENUE"    # F
    .param p3, "CONTENT_TYPE"    # Ljava/lang/String;
    .param p4, "CONTENT_ID"    # Ljava/lang/String;
    .param p5, "CURRENCY"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v0, "eventValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "af_revenue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "af_content_type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "af_content_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "af_currency"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const-string v2, "af_purchase"

    invoke-virtual {v1, p1, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    return-void
.end method

.method public s()V
    .registers 1

    .line 169
    return-void
.end method
