.class public Lcom/anythink/core/api/ATSDK;
.super Ljava/lang/Object;


# static fields
.field private static HAS_INIT:Z = false

.field public static final NONPERSONALIZED:I = 0x1

.field public static final PERSONALIZED:I = 0x0

.field public static final UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/core/api/ATSDK;->HAS_INIT:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 242
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 244
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 245
    const-string v1, "placementId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string p0, "adtype"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string p0, "api"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string p0, "result"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string p0, "reason"

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_network"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_41

    .line 253
    return-void

    .line 251
    :catchall_41
    move-exception p0

    .line 255
    :cond_42
    return-void
.end method

.method public static checkIsEuTraffic(Landroid/content/Context;Lcom/anythink/core/api/NetTrafficeCallback;)V
    .registers 2

    .line 190
    invoke-static {p0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/b/h;->a(Lcom/anythink/core/api/NetTrafficeCallback;)V

    .line 191
    return-void
.end method

.method public static varargs deniedUploadDeviceInfo([Ljava/lang/String;)V
    .registers 2

    .line 172
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/g;->a([Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static getGDPRDataLevel(Landroid/content/Context;)I
    .registers 1

    .line 179
    invoke-static {p0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/h;->a()I

    move-result p0

    return p0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .registers 1

    .line 218
    const-string v0, "UA_5.7.8"

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/anythink/core/api/ATSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATSDKInitListener;)V

    .line 59
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATSDKInitListener;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/anythink/core/api/ATSDK;

    monitor-enter v0

    .line 72
    if-nez p0, :cond_15

    .line 73
    if-eqz p3, :cond_c

    .line 74
    :try_start_7
    const-string p0, "init: Context is null!"

    invoke-interface {p3, p0}, Lcom/anythink/core/api/ATSDKInitListener;->onFail(Ljava/lang/String;)V

    .line 76
    :cond_c
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string p1, "init: Context is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_3c
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_13} :catch_39
    .catchall {:try_start_7 .. :try_end_13} :catchall_36

    .line 77
    monitor-exit v0

    return-void

    .line 81
    :cond_15
    :try_start_15
    sget-boolean v1, Lcom/anythink/core/api/ATSDK;->HAS_INIT:Z

    if-nez v1, :cond_23

    .line 82
    const/4 v1, 0x1

    sput-boolean v1, Lcom/anythink/core/api/ATSDK;->HAS_INIT:Z

    .line 83
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/anythink/core/common/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_23
    if-eqz p3, :cond_28

    .line 87
    invoke-interface {p3}, Lcom/anythink/core/api/ATSDKInitListener;->onSuccess()V

    .line 90
    :cond_28
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p0

    new-instance p1, Lcom/anythink/core/api/ATSDK$1;

    invoke-direct {p1}, Lcom/anythink/core/api/ATSDK$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_34} :catch_3c
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_34} :catch_39
    .catchall {:try_start_15 .. :try_end_34} :catchall_36

    .line 105
    :goto_34
    monitor-exit v0

    return-void

    .line 71
    :catchall_36
    move-exception p0

    monitor-exit v0

    throw p0

    .line 103
    :catch_39
    move-exception p0

    .line 106
    monitor-exit v0

    return-void

    .line 98
    :catch_3c
    move-exception p0

    goto :goto_34
.end method

.method public static initCustomMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/g;->a(Ljava/util/Map;)V

    .line 137
    return-void
.end method

.method public static initPlacementCustomMap(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 144
    return-void
.end method

.method public static integrationChecking(Landroid/content/Context;)V
    .registers 2

    .line 237
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/g;->b(Landroid/content/Context;)V

    .line 238
    return-void
.end method

.method public static isCnSDK()Z
    .registers 1

    .line 114
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isEUTraffic(Landroid/content/Context;)Z
    .registers 1

    .line 186
    invoke-static {p0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/h;->d()Z

    move-result p0

    return p0
.end method

.method public static isNetworkLogDebug()Z
    .registers 1

    .line 230
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->p()Z

    move-result v0

    return v0
.end method

.method public static setAdLogoVisible(Z)V
    .registers 2

    .line 258
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/g;->b(Z)V

    .line 259
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .registers 2

    .line 121
    invoke-static {p0}, Lcom/anythink/core/common/g/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 122
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/String;)V

    .line 124
    :cond_d
    return-void
.end method

.method public static setExcludeMyOfferPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/g;->a(Ljava/util/List;)V

    .line 151
    return-void
.end method

.method public static setGDPRUploadDataLevel(Landroid/content/Context;I)V
    .registers 3

    .line 157
    if-nez p0, :cond_a

    .line 158
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string p1, "setGDPRUploadDataLevel: context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 163
    :cond_a
    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    goto :goto_18

    .line 166
    :cond_10
    sget-object p0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string p1, "GDPR level setting error!!! Level must be PERSONALIZED or NONPERSONALIZED."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 164
    :cond_18
    :goto_18
    invoke-static {p0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/b/h;->a(I)V

    return-void
.end method

.method public static setNetworkLogDebug(Z)V
    .registers 2

    .line 226
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/g;->a(Z)V

    .line 227
    return-void
.end method

.method public static setSubChannel(Ljava/lang/String;)V
    .registers 2

    .line 127
    invoke-static {p0}, Lcom/anythink/core/common/g/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/g;->d(Ljava/lang/String;)V

    .line 130
    :cond_d
    return-void
.end method

.method public static showGdprAuth(Landroid/content/Context;)V
    .registers 3

    .line 199
    invoke-static {p0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V

    .line 200
    return-void
.end method

.method public static showGdprAuth(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V
    .registers 3

    .line 208
    invoke-static {p0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V

    .line 209
    return-void
.end method
