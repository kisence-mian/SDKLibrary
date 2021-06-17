.class public Lcom/appsflyer/AppsFlyerProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
    }
.end annotation


# static fields
.field public static final ADDITIONAL_CUSTOM_DATA:Ljava/lang/String; = "additionalCustomData"

.field public static final AF_KEY:Ljava/lang/String; = "AppsFlyerKey"

.field public static final AF_WAITFOR_CUSTOMERID:Ljava/lang/String; = "waitForCustomerId"

.field public static final APP_ID:Ljava/lang/String; = "appid"

.field public static final APP_USER_ID:Ljava/lang/String; = "AppUserId"

.field public static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final COLLECT_ANDROID_ID:Ljava/lang/String; = "collectAndroidId"

.field public static final COLLECT_ANDROID_ID_FORCE_BY_USER:Ljava/lang/String; = "collectAndroidIdForceByUser"

.field public static final COLLECT_FACEBOOK_ATTR_ID:Ljava/lang/String; = "collectFacebookAttrId"

.field public static final COLLECT_FINGER_PRINT:Ljava/lang/String; = "collectFingerPrint"

.field public static final COLLECT_IMEI:Ljava/lang/String; = "collectIMEI"

.field public static final COLLECT_IMEI_FORCE_BY_USER:Ljava/lang/String; = "collectIMEIForceByUser"

.field public static final COLLECT_MAC:Ljava/lang/String; = "collectMAC"

.field public static final COLLECT_OAID:Ljava/lang/String; = "collectOAID"

.field public static final CURRENCY_CODE:Ljava/lang/String; = "currencyCode"

.field public static final DEVICE_TRACKING_DISABLED:Ljava/lang/String; = "deviceTrackingDisabled"

.field public static final DISABLE_KEYSTORE:Ljava/lang/String; = "keyPropDisableAFKeystore"

.field public static final DISABLE_LOGS_COMPLETELY:Ljava/lang/String; = "disableLogs"

.field public static final DISABLE_OTHER_SDK:Ljava/lang/String; = "disableOtherSdk"

.field public static final DPM:Ljava/lang/String; = "disableProxy"

.field public static final EMAIL_CRYPT_TYPE:Ljava/lang/String; = "userEmailsCryptType"

.field public static final ENABLE_GPS_FALLBACK:Ljava/lang/String; = "enableGpsFallback"

.field public static final EXTENSION:Ljava/lang/String; = "sdkExtension"

.field public static final HTTP_CACHE:Ljava/lang/String; = "http_cache"

.field public static final IS_UPDATE:Ljava/lang/String; = "IS_UPDATE"

.field public static final LAUNCH_PROTECT_ENABLED:Ljava/lang/String; = "launchProtectEnabled"

.field public static final NEW_REFERRER_SENT:Ljava/lang/String; = "newGPReferrerSent"

.field public static final ONELINK_DOMAIN:Ljava/lang/String; = "onelinkDomain"

.field public static final ONELINK_ID:Ljava/lang/String; = "oneLinkSlug"

.field public static final ONELINK_SCHEME:Ljava/lang/String; = "onelinkScheme"

.field public static final USER_EMAIL:Ljava/lang/String; = "userEmail"

.field public static final USER_EMAILS:Ljava/lang/String; = "userEmails"

.field public static final USE_HTTP_FALLBACK:Ljava/lang/String; = "useHttpFallback"

.field private static valueOf:Lcom/appsflyer/AppsFlyerProperties;


# instance fields
.field private AFInAppEventParameterName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public AFInAppEventType:Ljava/lang/String;

.field private AFKeystoreWrapper:Z

.field public values:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/appsflyer/AppsFlyerProperties;

    invoke-direct {v0}, Lcom/appsflyer/AppsFlyerProperties;-><init>()V

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties;->valueOf:Lcom/appsflyer/AppsFlyerProperties;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Z

    .line 65
    return-void
.end method

.method public static getInstance()Lcom/appsflyer/AppsFlyerProperties;
    .registers 1

    .line 68
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties;->valueOf:Lcom/appsflyer/AppsFlyerProperties;

    return-object v0
.end method

.method private valueOf()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Z

    return v0
.end method


# virtual methods
.method public final AFKeystoreWrapper()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->values:Z

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 108
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    if-nez p1, :cond_7

    return p2

    :cond_7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 3

    .line 121
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    if-nez p1, :cond_7

    return p2

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 4

    .line 126
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    if-nez p1, :cond_7

    return-wide p2

    :cond_7
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public declared-synchronized getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    .line 131
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getReferrer(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventType:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 161
    return-object v0

    .line 162
    :cond_5
    const-string v0, "AF_REFERRER"

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 163
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_12
    const/4 v0, 0x0

    if-nez p1, :cond_16

    .line 165
    return-object v0

    .line 167
    :cond_16
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 168
    const-string v1, "referrer"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    return-object p1
.end method

.method public declared-synchronized getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    .line 104
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isEnableLog()Z
    .registers 3

    .line 173
    nop

    .line 1113
    sget-object v0, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v0}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v0

    const-string v1, "logLevel"

    invoke-virtual {p0, v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 173
    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v1

    if-le v0, v1, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isLogsDisabledCompletely()Z
    .registers 3

    .line 177
    const-string v0, "disableLogs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOtherSdkStringDisabled()Z
    .registers 3

    .line 181
    const-string v0, "disableOtherSdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized loadProperties(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    .line 191
    :try_start_1
    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerProperties;->valueOf()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_62

    if-eqz v0, :cond_9

    .line 192
    monitor-exit p0

    return-void

    .line 194
    :cond_9
    :try_start_9
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "savedProperties"

    const/4 v1, 0x0

    .line 195
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    if-eqz p1, :cond_60

    .line 197
    const-string v0, "Loading properties.."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_62

    .line 199
    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 201
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 202
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_41

    .line 204
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_41
    goto :goto_24

    .line 207
    :cond_42
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Z
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_45} :catch_46
    .catchall {:try_start_1b .. :try_end_45} :catchall_62

    .line 210
    goto :goto_4c

    .line 208
    :catch_46
    move-exception p1

    .line 209
    :try_start_47
    const-string v0, "Failed loading properties"

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    :goto_4c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Done loading properties: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_62

    .line 213
    :cond_60
    monitor-exit p0

    return-void

    .line 190
    :catchall_62
    move-exception p1

    monitor-exit p0

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 73
    monitor-exit p0

    return-void

    .line 71
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveProperties(Landroid/content/SharedPreferences;)V
    .registers 5

    monitor-enter p0

    .line 185
    :try_start_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "savedProperties"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 186
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 187
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 188
    monitor-exit p0

    return-void

    .line 184
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Ljava/lang/String;I)V
    .registers 4

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 85
    monitor-exit p0

    return-void

    .line 83
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Ljava/lang/String;J)V
    .registers 5

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 77
    monitor-exit p0

    return-void

    .line 75
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Ljava/lang/String;Z)V
    .registers 4

    monitor-enter p0

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCustomData(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "additionalCustomData"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 97
    monitor-exit p0

    return-void

    .line 95
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserEmails(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "userEmails"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 101
    monitor-exit p0

    return-void

    .line 99
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
