.class public Lcom/facebook/internal/FetchedAppGateKeepersManager;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.java"


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APPLICATION_GATEKEEPER_CACHE_TIMEOUT:J = 0x36ee80L

.field private static final APPLICATION_GATEKEEPER_EDGE:Ljava/lang/String; = "mobile_sdk_gk"

.field private static final APPLICATION_GATEKEEPER_FIELD:Ljava/lang/String; = "gatekeepers"

.field private static final APPLICATION_GRAPH_DATA:Ljava/lang/String; = "data"

.field private static final APPLICATION_PLATFORM:Ljava/lang/String; = "platform"

.field private static final APPLICATION_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final APP_GATEKEEPERS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_GATEKEEPERS.%s"

.field private static final APP_GATEKEEPERS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_GATEKEEPERS"

.field private static final APP_PLATFORM:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String;

.field private static final fetchedAppGateKeepers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static timestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .line 43
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 43
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 1
    .param p0, "x0"    # Ljava/lang/Long;

    .line 43
    sput-object p0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method private static getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .param p0, "applicationId"    # Ljava/lang/String;

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "appGateKeepersParams":Landroid/os/Bundle;
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "fields"

    const-string v2, "gatekeepers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "mobile_sdk_gk"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 158
    const-string v2, "%s/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 160
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1, v3}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 161
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public static getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 142
    invoke-static {}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync()V

    .line 143
    if-eqz p1, :cond_19

    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_19

    .line 146
    :cond_e
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 144
    :cond_19
    :goto_19
    return p2
.end method

.method private static isTimestampValid(Ljava/lang/Long;)Z
    .registers 7
    .param p0, "timestamp"    # Ljava/lang/Long;

    .line 198
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 199
    return v0

    .line 201
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v5, v1, v3

    if-gez v5, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public static declared-synchronized loadAppGateKeepersAsync()V
    .registers 6

    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    invoke-static {v1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isTimestampValid(Ljava/lang/Long;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2f

    if-eqz v1, :cond_d

    .line 65
    monitor-exit v0

    return-void

    .line 68
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "applicationId":Ljava/lang/String;
    const-string v3, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "gateKeepersKey":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;

    invoke-direct {v5, v1, v3, v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2f

    .line 107
    monitor-exit v0

    return-void

    .line 63
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "applicationId":Ljava/lang/String;
    .end local v3    # "gateKeepersKey":Ljava/lang/String;
    :catchall_2f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 11
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "gateKeepersJSON"    # Lorg/json/JSONObject;

    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    monitor-enter v0

    .line 170
    :try_start_3
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 171
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .local v1, "result":Lorg/json/JSONObject;
    goto :goto_17

    .line 173
    .end local v1    # "result":Lorg/json/JSONObject;
    :cond_12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .restart local v1    # "result":Lorg/json/JSONObject;
    :goto_17
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 176
    .local v2, "arr":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 177
    .local v3, "gateKeepers":Lorg/json/JSONObject;
    if-eqz v2, :cond_26

    .line 178
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object v3, v4

    .line 181
    :cond_26
    if-eqz v3, :cond_5a

    const-string v4, "gatekeepers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_5a

    .line 182
    const-string v4, "gatekeepers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 183
    .local v4, "data":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_61

    if-ge v5, v6, :cond_5a

    .line 185
    :try_start_3d
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 186
    .local v6, "gk":Lorg/json/JSONObject;
    const-string v7, "key"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_50} :catch_51
    .catchall {:try_start_3d .. :try_end_50} :catchall_61

    .line 189
    .end local v6    # "gk":Lorg/json/JSONObject;
    goto :goto_57

    .line 187
    :catch_51
    move-exception v6

    .line 188
    .local v6, "je":Lorg/json/JSONException;
    :try_start_52
    const-string v7, "FacebookSDK"

    invoke-static {v7, v6}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 183
    .end local v6    # "je":Lorg/json/JSONException;
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 193
    .end local v4    # "data":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_5a
    sget-object v4, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v4, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_61

    .line 194
    monitor-exit v0

    return-object v1

    .line 169
    .end local v1    # "result":Lorg/json/JSONObject;
    .end local v2    # "arr":Lorg/json/JSONArray;
    .end local v3    # "gateKeepers":Lorg/json/JSONObject;
    .end local p0    # "applicationId":Ljava/lang/String;
    .end local p1    # "gateKeepersJSON":Lorg/json/JSONObject;
    :catchall_61
    move-exception p0

    monitor-exit v0

    goto :goto_65

    :goto_64
    throw p0

    :goto_65
    goto :goto_64
.end method

.method public static queryAppGateKeepers(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 8
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "forceRequery"    # Z

    .line 116
    if-nez p1, :cond_11

    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 117
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    .line 120
    :cond_11
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    .local v0, "response":Lorg/json/JSONObject;
    if-nez v0, :cond_19

    .line 122
    const/4 v1, 0x0

    return-object v1

    .line 125
    :cond_19
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 126
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v4, "com.facebook.internal.APP_GATEKEEPERS.%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "gateKeepersKey":Ljava/lang/String;
    const-string v4, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 131
    .local v3, "gateKeepersSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 133
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-static {p0, v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    return-object v4
.end method
