.class public Lcom/anythink/network/mintegral/MintegralATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/anythink/network/mintegral/MintegralATAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/mintegral/MintegralATAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 33
    const-string v0, "{}"

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;ZLcom/anythink/nativead/unitgroup/api/CustomNativeListener;Z)V
    .registers 14

    .prologue
    .line 134
    .line 135
    invoke-static {p3}, Lcom/mintegral/msdk/out/MtgNativeHandler;->getNativeProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 137
    const-string v0, "ad_num"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "layout_type"

    const/4 v1, 0x0

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 138
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "unit_id"

    invoke-interface {v6, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "videoSupport"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/anythink/network/mintegral/MintegralATAdapter$2;-><init>(Lcom/anythink/network/mintegral/MintegralATAdapter;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 207
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 209
    :try_start_37
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_70

    .line 213
    :goto_42
    new-instance v1, Lcom/mintegral/msdk/out/MtgNativeHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/mintegral/msdk/out/MtgNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 214
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 215
    invoke-virtual {v1}, Lcom/mintegral/msdk/out/MtgNativeHandler;->load()Z

    .line 226
    :goto_51
    return-void

    .line 218
    :cond_52
    :try_start_52
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5c} :catch_6e

    .line 222
    :goto_5c
    new-instance v1, Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 223
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 224
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->bidLoad(Ljava/lang/String;)V

    goto :goto_51

    :catch_6e
    move-exception v1

    goto :goto_5c

    :catch_70
    move-exception v1

    goto :goto_42
.end method

.method private a(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/lang/String;ZI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    .line 123
    if-eqz p3, :cond_85

    .line 124
    :try_start_3
    sget-object v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->IS_AUTO_PLAY_KEY:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_62

    move-result v0

    :goto_11
    move v5, v0

    .line 1135
    :goto_12
    invoke-static {p4}, Lcom/mintegral/msdk/out/MtgNativeHandler;->getNativeProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 1137
    const-string v0, "ad_num"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string v0, "layout_type"

    .line 1139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1138
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const-string v0, "unit_id"

    invoke-interface {v6, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string v0, "videoSupport"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    new-instance v0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/network/mintegral/MintegralATAdapter$2;-><init>(Lcom/anythink/network/mintegral/MintegralATAdapter;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1207
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1209
    :try_start_47
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, p4, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_52} :catch_83

    .line 1213
    :goto_52
    new-instance v1, Lcom/mintegral/msdk/out/MtgNativeHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/mintegral/msdk/out/MtgNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 1214
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 1215
    invoke-virtual {v1}, Lcom/mintegral/msdk/out/MtgNativeHandler;->load()Z

    .line 1216
    :goto_61
    return-void

    :catch_62
    move-exception v0

    move v5, v1

    goto :goto_12

    .line 1218
    :cond_65
    :try_start_65
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, p4, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6f} :catch_81

    .line 1222
    :goto_6f
    new-instance v1, Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 1223
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 1224
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->bidLoad(Ljava/lang/String;)V

    goto :goto_61

    :catch_81
    move-exception v1

    goto :goto_6f

    :catch_83
    move-exception v1

    goto :goto_52

    :cond_85
    move v0, v1

    goto :goto_11
.end method

.method static synthetic a(Lcom/anythink/network/mintegral/MintegralATAdapter;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/lang/String;ZI)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 29
    .line 2123
    if-eqz p3, :cond_85

    .line 2124
    :try_start_3
    sget-object v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->IS_AUTO_PLAY_KEY:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_62

    move-result v0

    :goto_11
    move v5, v0

    .line 2135
    :goto_12
    invoke-static {p4}, Lcom/mintegral/msdk/out/MtgNativeHandler;->getNativeProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 2137
    const-string v0, "ad_num"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    const-string v0, "layout_type"

    .line 2139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2138
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    const-string v0, "unit_id"

    invoke-interface {v6, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    const-string v0, "videoSupport"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    new-instance v0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/network/mintegral/MintegralATAdapter$2;-><init>(Lcom/anythink/network/mintegral/MintegralATAdapter;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2207
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2209
    :try_start_47
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, p4, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_52} :catch_83

    .line 2213
    :goto_52
    new-instance v1, Lcom/mintegral/msdk/out/MtgNativeHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/mintegral/msdk/out/MtgNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 2214
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 2215
    invoke-virtual {v1}, Lcom/mintegral/msdk/out/MtgNativeHandler;->load()Z

    .line 2216
    :goto_61
    return-void

    :catch_62
    move-exception v0

    move v5, v1

    goto :goto_12

    .line 2218
    :cond_65
    :try_start_65
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, p4, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6f} :catch_81

    .line 2222
    :goto_6f
    new-instance v1, Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 2223
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 2224
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->bidLoad(Ljava/lang/String;)V

    goto :goto_61

    :catch_81
    move-exception v1

    goto :goto_6f

    :catch_83
    move-exception v1

    goto :goto_52

    :cond_85
    move v0, v1

    goto :goto_11
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 237
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadNativeAd(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 38
    :try_start_2
    const-string v4, ""

    .line 39
    const-string v3, ""

    .line 40
    const-string v2, ""
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_cc

    .line 45
    :try_start_8
    const-string v0, "appid"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 46
    const-string v0, "appid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    :cond_1a
    const-string v0, "unitid"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 49
    const-string v0, "unitid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    :cond_2c
    const-string v0, "appkey"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 52
    const-string v0, "appkey"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    :cond_3e
    const-string v0, "payload"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 56
    const-string v0, "payload"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->a:Ljava/lang/String;

    .line 59
    :cond_52
    const-string v0, "tp_info"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 60
    const-string v0, "tp_info"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter;->b:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_66} :catch_89

    :cond_66
    move-object v5, v3

    .line 66
    :goto_67
    :try_start_67
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 67
    :cond_79
    if-eqz p2, :cond_88

    .line 68
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "mintegral appid ,unitid or sdkkey is empty."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 69
    invoke-interface {p2, p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 117
    :cond_88
    :goto_88
    return-void

    .line 63
    :catch_89
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8d} :catch_cc

    move-object v5, v3

    goto :goto_67

    .line 76
    :cond_8f
    if-eqz p3, :cond_e8

    .line 77
    :try_start_91
    sget-object v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->AD_REQUEST_NUM:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9e} :catch_e2

    move-result v0

    :goto_9f
    move v7, v0

    .line 83
    :goto_a0
    :try_start_a0
    const-string v0, "suport_video"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 84
    const-string v0, "suport_video"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    move v6, v1

    .line 96
    :cond_bb
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v8

    new-instance v0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/anythink/network/mintegral/MintegralATAdapter$1;-><init>(Lcom/anythink/network/mintegral/MintegralATAdapter;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/lang/String;ZI)V

    invoke-virtual {v8, p1, p3, v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_cb} :catch_cc

    goto :goto_88

    .line 110
    :catch_cc
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    if-eqz p2, :cond_88

    .line 113
    const-string v1, "4001"

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 114
    invoke-interface {p2, p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_88

    .line 80
    :catch_e2
    move-exception v0

    :try_start_e3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_cc

    move v7, v1

    goto :goto_a0

    :cond_e8
    move v0, v1

    goto :goto_9f
.end method
