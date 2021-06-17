.class public final Lcom/appsflyer/internal/am;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AFInAppEventType:Lcom/appsflyer/internal/am;

.field private static values:Ljava/lang/String;


# instance fields
.field AFInAppEventParameterName:Z

.field private AFKeystoreWrapper:Lorg/json/JSONObject;

.field private AFLogger$LogLevel:Z

.field private AFVersionDeclaration:Z

.field private AppsFlyer2dXConversionCallback:I

.field private final getLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private init:Ljava/lang/String;

.field private valueOf:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, "https://%smonitorsdk.%s/remote-debug?app_id="

    sput-object v0, Lcom/appsflyer/internal/am;->values:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/internal/am;->valueOf:Z

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/am;->getLevel:Ljava/util/List;

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/appsflyer/internal/am;->AppsFlyer2dXConversionCallback:I

    .line 57
    const-string v2, "-1"

    iput-object v2, p0, Lcom/appsflyer/internal/am;->init:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "disableProxy"

    invoke-virtual {v2, v3, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/appsflyer/internal/am;->AFVersionDeclaration:Z

    .line 65
    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/appsflyer/internal/am;->AFInAppEventParameterName:Z

    .line 66
    iput v1, p0, Lcom/appsflyer/internal/am;->AppsFlyer2dXConversionCallback:I

    .line 67
    iput-boolean v1, p0, Lcom/appsflyer/internal/am;->AFLogger$LogLevel:Z

    .line 68
    return-void
.end method

.method static AFInAppEventParameterName(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .registers 8

    .line 1077
    :try_start_0
    sget-object v0, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;

    if-nez v0, :cond_b

    .line 1078
    new-instance v0, Lcom/appsflyer/internal/am;

    invoke-direct {v0}, Lcom/appsflyer/internal/am;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;

    .line 1080
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;

    .line 107
    invoke-direct {v0, p0, p1}, Lcom/appsflyer/internal/am;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 2077
    sget-object p1, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;

    if-nez p1, :cond_1b

    .line 2078
    new-instance p1, Lcom/appsflyer/internal/am;

    invoke-direct {p1}, Lcom/appsflyer/internal/am;-><init>()V

    sput-object p1, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;

    .line 2080
    :cond_1b
    sget-object p1, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;

    .line 108
    invoke-direct {p1}, Lcom/appsflyer/internal/am;->AppsFlyer2dXConversionCallback()Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/appsflyer/internal/k;

    new-instance v1, Lcom/appsflyer/internal/bk;

    invoke-direct {v1}, Lcom/appsflyer/internal/bk;-><init>()V

    .line 110
    nop

    .line 3011
    iput-object p1, v1, Lcom/appsflyer/internal/bk;->onAttributionFailureNative:Ljava/lang/String;

    .line 3012
    nop

    .line 111
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result p1

    .line 3030
    iput-boolean p1, v1, Lcom/appsflyer/internal/bh;->onConversionDataSuccess:Z

    .line 3031
    nop

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/am;->values:Ljava/lang/String;

    .line 3062
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/appsflyer/internal/h;->values(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/bh;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/k;-><init>(Lcom/appsflyer/internal/bh;)V

    .line 4025
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4031
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_78
    .catchall {:try_start_0 .. :try_end_78} :catchall_79

    .line 115
    return-void

    .line 114
    :catchall_79
    move-exception p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method private declared-synchronized AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 163
    if-eqz p1, :cond_13

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 164
    iget-object v0, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13

    .line 175
    :catchall_11
    move-exception p1

    goto :goto_41

    .line 166
    :cond_13
    :goto_13
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_22

    .line 167
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string v0, "app_version"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_22
    if-eqz p3, :cond_31

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_31

    .line 170
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "channel"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_31
    if-eqz p4, :cond_43

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_43

    .line 173
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "preInstall"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_11

    goto :goto_43

    .line 178
    :goto_41
    monitor-exit p0

    return-void

    .line 177
    :cond_43
    :goto_43
    monitor-exit p0

    return-void
.end method

.method public static AFInAppEventParameterName(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;
    .registers 5

    .line 275
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_9

    .line 276
    new-array p1, v1, [Ljava/lang/String;

    aput-object p0, p1, v0

    return-object p1

    .line 278
    :cond_9
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 279
    aput-object p0, v2, v0

    .line 280
    nop

    :goto_10
    array-length p0, p1

    if-ge v1, p0, :cond_1e

    .line 281
    aget-object p0, p1, v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 283
    :cond_1e
    return-object v2
.end method

.method private declared-synchronized AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_17

    .line 148
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string v0, "devkey"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_17
    if-eqz p3, :cond_26

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_26

    .line 151
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "originalAppsFlyerId"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_26
    if-eqz p4, :cond_35

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_35

    .line 154
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "uid"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 158
    :cond_35
    monitor-exit p0

    return-void

    .line 156
    :catchall_37
    move-exception p1

    .line 159
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string v1, "brand"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string v0, "model"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "platform"

    const-string v0, "Android"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "platform_version"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    if-eqz p4, :cond_2e

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2e

    .line 130
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "advertiserId"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_2e
    if-eqz p5, :cond_3d

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3d

    .line 133
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "imei"

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_3d
    if-eqz p6, :cond_4c

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4c

    .line 136
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "android_id"

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    .line 141
    :cond_4c
    monitor-exit p0

    return-void

    .line 139
    :catchall_4e
    move-exception p1

    .line 142
    monitor-exit p0

    return-void
.end method

.method public static AFKeystoreWrapper()Lcom/appsflyer/internal/am;
    .registers 1

    .line 77
    sget-object v0, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;

    if-nez v0, :cond_b

    .line 78
    new-instance v0, Lcom/appsflyer/internal/am;

    invoke-direct {v0}, Lcom/appsflyer/internal/am;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;

    .line 80
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;

    return-object v0
.end method

.method private declared-synchronized AFVersionDeclaration()V
    .registers 2

    monitor-enter p0

    .line 287
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/am;->getLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/appsflyer/internal/am;->AppsFlyer2dXConversionCallback:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 290
    monitor-exit p0

    return-void

    .line 286
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized AppsFlyer2dXConversionCallback()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 216
    nop

    .line 218
    :try_start_2
    iget-object v0, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string v1, "data"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/appsflyer/internal/am;->getLevel:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    iget-object v0, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_16} :catch_1f
    .catchall {:try_start_2 .. :try_end_16} :catchall_1c

    .line 221
    :try_start_16
    invoke-direct {p0}, Lcom/appsflyer/internal/am;->AFVersionDeclaration()V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_19} :catch_1a
    .catchall {:try_start_16 .. :try_end_19} :catchall_1c

    .line 225
    goto :goto_21

    .line 223
    :catch_1a
    move-exception v1

    goto :goto_21

    .line 215
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    :catch_1f
    move-exception v0

    const/4 v0, 0x0

    .line 226
    :goto_21
    monitor-exit p0

    return-object v0
.end method

.method private getLevel()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/appsflyer/internal/am;->AFInAppEventParameterName:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/appsflyer/internal/am;->valueOf:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/appsflyer/internal/am;->AFLogger$LogLevel:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized values(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .registers 13

    monitor-enter p0

    .line 232
    :try_start_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 233
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v1

    .line 234
    const-string v2, "remote_debug_static_data"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_94

    .line 235
    if-eqz v2, :cond_1b

    .line 237
    :try_start_11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_1a

    .line 238
    :catchall_19
    move-exception p1

    .line 239
    :goto_1a
    goto :goto_83

    .line 241
    :cond_1b
    :try_start_1b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    .line 242
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "advertiserId"

    .line 246
    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/appsflyer/internal/af;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    iget-object v9, v1, Lcom/appsflyer/internal/af;->AFVersionDeclaration:Ljava/lang/String;

    .line 242
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/appsflyer/internal/am;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "6.3.0."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/appsflyer/internal/af;->values:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppsFlyerKey"

    .line 251
    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KSAppsFlyerId"

    .line 252
    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uid"

    .line 253
    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/appsflyer/internal/am;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_1b .. :try_end_5c} :catchall_94

    .line 257
    const/4 v1, 0x0

    :try_start_5d
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 258
    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    const-string v2, "preInstallName"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/appsflyer/internal/am;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_77

    .line 263
    goto :goto_78

    .line 262
    :catchall_77
    move-exception p1

    .line 264
    :goto_78
    :try_start_78
    const-string p1, "remote_debug_static_data"

    iget-object p2, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_94

    .line 268
    :goto_83
    :try_start_83
    iget-object p1, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string p2, "launch_counter"

    iget-object v0, p0, Lcom/appsflyer/internal/am;->init:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_8c} :catch_8e
    .catchall {:try_start_83 .. :try_end_8c} :catchall_94

    .line 271
    monitor-exit p0

    return-void

    .line 270
    :catch_8e
    move-exception p1

    :try_start_8f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_94

    .line 272
    monitor-exit p0

    return-void

    .line 231
    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final declared-synchronized AFInAppEventParameterName()V
    .registers 5

    monitor-enter p0

    .line 94
    :try_start_1
    const-string v0, "r_debugging_off"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    iput-boolean v2, p0, Lcom/appsflyer/internal/am;->AFLogger$LogLevel:Z

    .line 96
    iput-boolean v2, p0, Lcom/appsflyer/internal/am;->valueOf:Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 97
    monitor-exit p0

    return-void

    .line 93
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized AFInAppEventType()V
    .registers 2

    monitor-enter p0

    .line 100
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/appsflyer/internal/am;->AFKeystoreWrapper:Lorg/json/JSONObject;

    .line 101
    sput-object v0, Lcom/appsflyer/internal/am;->AFInAppEventType:Lcom/appsflyer/internal/am;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 102
    monitor-exit p0

    return-void

    .line 99
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final AFLogger$LogLevel()Z
    .registers 2

    .line 302
    iget-boolean v0, p0, Lcom/appsflyer/internal/am;->AFLogger$LogLevel:Z

    return v0
.end method

.method final declared-synchronized valueOf()V
    .registers 5

    monitor-enter p0

    .line 89
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/appsflyer/internal/am;->AFLogger$LogLevel:Z

    .line 90
    const-string v0, "r_debugging_on"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 91
    monitor-exit p0

    return-void

    .line 88
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 202
    :try_start_1
    invoke-direct {p0}, Lcom/appsflyer/internal/am;->getLevel()Z

    move-result v0

    if-eqz v0, :cond_a2

    iget v0, p0, Lcom/appsflyer/internal/am;->AppsFlyer2dXConversionCallback:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a4

    const v1, 0x18000

    if-lt v0, v1, :cond_10

    goto/16 :goto_a2

    .line 204
    :cond_10
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    const-string v2, ", "

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 206
    if-eqz p1, :cond_5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " _/AppsFlyer_6.3.0 ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :cond_5a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/AppsFlyer_6.3.0 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    :goto_8d
    iget-object p2, p0, Lcom/appsflyer/internal/am;->getLevel:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget p2, p0, Lcom/appsflyer/internal/am;->AppsFlyer2dXConversionCallback:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/appsflyer/internal/am;->AppsFlyer2dXConversionCallback:I
    :try_end_9d
    .catchall {:try_start_10 .. :try_end_9d} :catchall_9f

    .line 212
    monitor-exit p0

    return-void

    .line 211
    :catchall_9f
    move-exception p1

    .line 213
    monitor-exit p0

    return-void

    .line 202
    :cond_a2
    :goto_a2
    monitor-exit p0

    return-void

    .line 201
    :catchall_a4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized values()V
    .registers 2

    monitor-enter p0

    .line 293
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/appsflyer/internal/am;->valueOf:Z

    .line 294
    invoke-direct {p0}, Lcom/appsflyer/internal/am;->AFVersionDeclaration()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 295
    monitor-exit p0

    return-void

    .line 292
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized values(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 84
    :try_start_1
    iput-object p1, p0, Lcom/appsflyer/internal/am;->init:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 85
    monitor-exit p0

    return-void

    .line 83
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
