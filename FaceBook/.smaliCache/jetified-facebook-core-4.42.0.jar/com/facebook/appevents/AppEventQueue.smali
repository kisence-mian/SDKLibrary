.class Lcom/facebook/appevents/AppEventQueue;
.super Ljava/lang/Object;
.source "AppEventQueue.java"


# static fields
.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static volatile appEventCollection:Lcom/facebook/appevents/AppEventCollection;

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    new-instance v0, Lcom/facebook/appevents/AppEventQueue$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventQueue$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledFuture;

    .line 49
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$100()Lcom/facebook/appevents/AppEventCollection;
    .registers 1

    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/AppEventCollection;
    .registers 1
    .param p0, "x0"    # Lcom/facebook/appevents/AppEventCollection;

    .line 49
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Runnable;
    .registers 1

    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .registers 5
    .param p0, "x0"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "x1"    # Lcom/facebook/GraphRequest;
    .param p2, "x2"    # Lcom/facebook/GraphResponse;
    .param p3, "x3"    # Lcom/facebook/appevents/SessionEventsState;
    .param p4, "x4"    # Lcom/facebook/appevents/FlushStatistics;

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventQueue;->handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    return-void
.end method

.method public static add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .registers 4
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvent"    # Lcom/facebook/appevents/AppEvent;

    .line 96
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/appevents/AppEventQueue$4;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method private static buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;
    .registers 12
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;
    .param p2, "limitEventUsage"    # Z
    .param p3, "flushState"    # Lcom/facebook/appevents/FlushStatistics;

    .line 195
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "applicationId":Ljava/lang/String;
    nop

    .line 198
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v2

    .line 200
    .local v2, "fetchedAppSettings":Lcom/facebook/internal/FetchedAppSettings;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 202
    const-string v1, "%s/activities"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    const/4 v3, 0x0

    invoke-static {v3, v1, v3, v3}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 206
    .local v1, "postRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    .line 207
    .local v4, "requestParameters":Landroid/os/Bundle;
    if-nez v4, :cond_26

    .line 208
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v4, v5

    .line 210
    :cond_26
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getAccessTokenString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "access_token"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getPushNotificationsRegistrationId()Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "pushNotificationsRegistrationId":Ljava/lang/String;
    if-eqz v5, :cond_3a

    .line 214
    const-string v6, "device_token"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_3a
    invoke-virtual {v1, v4}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 219
    const/4 v6, 0x0

    .line 221
    .local v6, "supportsImplicitLogging":Z
    if-eqz v2, :cond_44

    .line 222
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v6

    .line 225
    :cond_44
    nop

    .line 227
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 225
    invoke-virtual {p1, v1, v7, v6, p2}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result v7

    .line 231
    .local v7, "numEvents":I
    if-nez v7, :cond_50

    .line 232
    return-object v3

    .line 235
    :cond_50
    iget v3, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    add-int/2addr v3, v7

    iput v3, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 237
    new-instance v3, Lcom/facebook/appevents/AppEventQueue$5;

    invoke-direct {v3, p0, v1, p1, p3}, Lcom/facebook/appevents/AppEventQueue$5;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    invoke-virtual {v1, v3}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 249
    return-object v1
.end method

.method public static flush(Lcom/facebook/appevents/FlushReason;)V
    .registers 3
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;

    .line 85
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$3;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventQueue$3;-><init>(Lcom/facebook/appevents/FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method static flushAndWait(Lcom/facebook/appevents/FlushReason;)V
    .registers 6
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;

    .line 126
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v0

    .line 128
    .local v0, "result":Lcom/facebook/appevents/PersistedEvents;
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v1, v0}, Lcom/facebook/appevents/AppEventCollection;->addPersistedEvents(Lcom/facebook/appevents/PersistedEvents;)V

    .line 133
    :try_start_9
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-static {p0, v1}, Lcom/facebook/appevents/AppEventQueue;->sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_33

    .line 139
    .local v1, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    nop

    .line 141
    if-eqz v1, :cond_32

    .line 142
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "intent":Landroid/content/Intent;
    iget v3, v1, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    const-string v4, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    iget-object v3, v1, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    const-string v4, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 150
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 152
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "context":Landroid/content/Context;
    :cond_32
    return-void

    .line 136
    .end local v1    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    :catch_33
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v3, "Caught unexpected exception while flushing app events: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    return-void
.end method

.method public static getKeySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .registers 19
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "response"    # Lcom/facebook/GraphResponse;
    .param p3, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;
    .param p4, "flushState"    # Lcom/facebook/appevents/FlushStatistics;

    .line 258
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    .line 259
    .local v3, "error":Lcom/facebook/FacebookRequestError;
    const-string v0, "Success"

    .line 261
    .local v0, "resultDescription":Ljava/lang/String;
    sget-object v4, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    .line 263
    .local v4, "flushResult":Lcom/facebook/appevents/FlushResult;
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v3, :cond_39

    .line 264
    const/4 v8, -0x1

    .line 265
    .local v8, "NO_CONNECTIVITY_ERROR_CODE":I
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_20

    .line 266
    const-string v0, "Failed: No Connectivity"

    .line 267
    sget-object v4, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    move-object v8, v4

    move-object v4, v0

    goto :goto_3b

    .line 269
    :cond_20
    new-array v9, v7, [Ljava/lang/Object;

    .line 270
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 271
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 269
    const-string v10, "Failed:\n  Response: %s\n  Error %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    sget-object v4, Lcom/facebook/appevents/FlushResult;->SERVER_ERROR:Lcom/facebook/appevents/FlushResult;

    move-object v8, v4

    move-object v4, v0

    goto :goto_3b

    .line 263
    .end local v8    # "NO_CONNECTIVITY_ERROR_CODE":I
    :cond_39
    move-object v8, v4

    move-object v4, v0

    .line 276
    .end local v0    # "resultDescription":Ljava/lang/String;
    .local v4, "resultDescription":Ljava/lang/String;
    .local v8, "flushResult":Lcom/facebook/appevents/FlushResult;
    :goto_3b
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 277
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 281
    .local v9, "eventsJsonString":Ljava/lang/String;
    :try_start_4a
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_53} :catch_55

    move-object v0, v10

    .line 285
    .local v0, "prettyPrintedEvents":Ljava/lang/String;
    goto :goto_59

    .line 283
    .end local v0    # "prettyPrintedEvents":Ljava/lang/String;
    :catch_55
    move-exception v0

    .line 284
    .local v0, "exc":Lorg/json/JSONException;
    const-string v10, "<Can\'t encode events for debug logging>"

    move-object v0, v10

    .line 287
    .local v0, "prettyPrintedEvents":Ljava/lang/String;
    :goto_59
    sget-object v10, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v11, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    .line 289
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    aput-object v4, v12, v5

    aput-object v0, v12, v7

    .line 287
    const-string v7, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    invoke-static {v10, v11, v7, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    .end local v0    # "prettyPrintedEvents":Ljava/lang/String;
    .end local v9    # "eventsJsonString":Ljava/lang/String;
    :cond_73
    if-eqz v3, :cond_76

    goto :goto_77

    :cond_76
    const/4 v5, 0x0

    :goto_77
    invoke-virtual {v1, v5}, Lcom/facebook/appevents/SessionEventsState;->clearInFlightAndStats(Z)V

    .line 296
    sget-object v0, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-ne v8, v0, :cond_8c

    .line 302
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v5, Lcom/facebook/appevents/AppEventQueue$6;

    move-object v6, p0

    invoke-direct {v5, p0, v1}, Lcom/facebook/appevents/AppEventQueue$6;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8d

    .line 296
    :cond_8c
    move-object v6, p0

    .line 310
    :goto_8d
    sget-object v0, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    if-eq v8, v0, :cond_99

    .line 312
    iget-object v0, v2, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    sget-object v5, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-eq v0, v5, :cond_99

    .line 313
    iput-object v8, v2, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    .line 316
    :cond_99
    return-void
.end method

.method public static persistToDisk()V
    .registers 2

    .line 74
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$2;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventQueue$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method private static sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    .registers 11
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;
    .param p1, "appEventCollection"    # Lcom/facebook/appevents/AppEventCollection;

    .line 157
    new-instance v0, Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {v0}, Lcom/facebook/appevents/FlushStatistics;-><init>()V

    .line 159
    .local v0, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v2

    .line 162
    .local v2, "limitEventUsage":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v3, "requestsToExecute":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphRequest;>;"
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 164
    .local v5, "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    nop

    .line 166
    invoke-virtual {p1, v5}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v6

    .line 164
    invoke-static {v5, v6, v2, v0}, Lcom/facebook/appevents/AppEventQueue;->buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;

    move-result-object v6

    .line 169
    .local v6, "request":Lcom/facebook/GraphRequest;
    if-eqz v6, :cond_34

    .line 170
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v5    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v6    # "request":Lcom/facebook/GraphRequest;
    :cond_34
    goto :goto_1a

    .line 174
    :cond_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6c

    .line 175
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v5, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v0, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 176
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/facebook/appevents/FlushReason;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 175
    const-string v7, "Flushing %d events due to %s."

    invoke-static {v4, v5, v7, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/GraphRequest;

    .line 182
    .local v5, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    .line 183
    .end local v5    # "request":Lcom/facebook/GraphRequest;
    goto :goto_5b

    .line 184
    :cond_6b
    return-object v0

    .line 187
    :cond_6c
    const/4 v4, 0x0

    return-object v4
.end method
