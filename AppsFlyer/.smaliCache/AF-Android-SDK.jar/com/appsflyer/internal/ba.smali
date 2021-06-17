.class public final Lcom/appsflyer/internal/ba;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final AFInAppEventType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static values:Ljava/lang/String;


# instance fields
.field final AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

.field private final AFKeystoreWrapper:Ljava/lang/String;

.field private final AFLogger$LogLevel:I

.field private final AFVersionDeclaration:Lcom/appsflyer/internal/af;

.field private final init:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final valueOf:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    const-string v0, "https://%sgcdsdk.%s/install_data/v4.0/"

    sput-object v0, Lcom/appsflyer/internal/ba;->values:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "googleplay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "playstore"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "googleplaystore"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/ba;->AFInAppEventType:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/appsflyer/internal/af;Landroid/app/Application;Ljava/lang/String;)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    nop

    .line 1045
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez v0, :cond_f

    .line 1046
    new-instance v0, Lcom/appsflyer/internal/n;

    invoke-direct {v0}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 1048
    :cond_f
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 43
    invoke-virtual {v0}, Lcom/appsflyer/internal/n;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/ba;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/ba;->init:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    iput-object p1, p0, Lcom/appsflyer/internal/ba;->AFVersionDeclaration:Lcom/appsflyer/internal/af;

    .line 52
    iput-object p2, p0, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    .line 53
    iput-object p3, p0, Lcom/appsflyer/internal/ba;->AFKeystoreWrapper:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/appsflyer/internal/ba;->AFLogger$LogLevel:I

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/internal/ba;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    nop

    .line 2045
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez v0, :cond_f

    .line 2046
    new-instance v0, Lcom/appsflyer/internal/n;

    invoke-direct {v0}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 2048
    :cond_f
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 43
    invoke-virtual {v0}, Lcom/appsflyer/internal/n;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/ba;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/ba;->init:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    iget-object v0, p1, Lcom/appsflyer/internal/ba;->AFVersionDeclaration:Lcom/appsflyer/internal/af;

    iput-object v0, p0, Lcom/appsflyer/internal/ba;->AFVersionDeclaration:Lcom/appsflyer/internal/af;

    .line 59
    iget-object v0, p1, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    iput-object v0, p0, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    .line 60
    iget-object v0, p1, Lcom/appsflyer/internal/ba;->AFKeystoreWrapper:Ljava/lang/String;

    iput-object v0, p0, Lcom/appsflyer/internal/ba;->AFKeystoreWrapper:Ljava/lang/String;

    .line 61
    iget p1, p1, Lcom/appsflyer/internal/ba;->AFLogger$LogLevel:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/internal/ba;->AFLogger$LogLevel:I

    .line 62
    return-void
.end method

.method static AFInAppEventParameterName(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GCD-A02] Calling onConversionDataSuccess with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public static values(Ljava/lang/String;)V
    .registers 3

    .line 76
    sget-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_16

    .line 77
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCD-A02] Calling onConversionFailure with:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    .line 80
    :cond_16
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 17

    .line 84
    move-object/from16 v1, p0

    const-string v0, "is_first_launch"

    const-string v2, "af_siteid"

    iget-object v3, v1, Lcom/appsflyer/internal/ba;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v3, :cond_2de

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_2de

    .line 91
    :cond_12
    iget-object v3, v1, Lcom/appsflyer/internal/ba;->AFVersionDeclaration:Lcom/appsflyer/internal/af;

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 92
    const-string v0, "[GCD-E03] \'isStopTracking\' enabled"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 93
    const-string v0, "\'isStopTracking\' enabled"

    invoke-static {v0}, Lcom/appsflyer/internal/ba;->values(Ljava/lang/String;)V

    .line 94
    return-void

    .line 97
    :cond_25
    iget-object v3, v1, Lcom/appsflyer/internal/ba;->init:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 98
    const/4 v3, 0x0

    .line 101
    const/4 v6, 0x2

    :try_start_2c
    iget-object v7, v1, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    if-nez v7, :cond_40

    .line 102
    const-string v0, "[GCD-E06] Context null"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 103
    const-string v0, "Context null"

    invoke-static {v0}, Lcom/appsflyer/internal/ba;->values(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_29b

    .line 211
    iget-object v0, v1, Lcom/appsflyer/internal/ba;->init:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 104
    return-void

    .line 106
    :cond_40
    :try_start_40
    iget-object v8, v1, Lcom/appsflyer/internal/ba;->AFVersionDeclaration:Lcom/appsflyer/internal/af;

    .line 107
    invoke-virtual {v8, v7}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v8, v7, v9}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_29b

    .line 108
    nop

    .line 109
    const-string v8, ""

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_75

    .line 110
    :try_start_51
    sget-object v11, Lcom/appsflyer/internal/ba;->AFInAppEventType:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_68

    .line 111
    const-string v11, "-"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_76

    .line 113
    :cond_68
    const-string v11, "AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v7, v12, v10

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 118
    :cond_75
    move-object v7, v8

    :goto_76
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/appsflyer/internal/ba;->values:Ljava/lang/String;

    .line 2062
    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v14

    invoke-virtual {v14}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v14

    invoke-virtual {v14}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 118
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    .line 119
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "?devkey="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v1, Lcom/appsflyer/internal/ba;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "&device_id="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v11, Ljava/lang/ref/WeakReference;

    iget-object v12, v1, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    invoke-direct {v11, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 122
    invoke-static {v11}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v11

    .line 2190
    const-string v12, "server_request"

    new-array v13, v9, [Ljava/lang/String;

    aput-object v8, v13, v10

    invoke-virtual {v11, v12, v7, v13}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    const-string v8, "[GCD-B01] URL: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appsflyer/internal/an;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 127
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_f7
    .catchall {:try_start_51 .. :try_end_f7} :catchall_29b

    .line 128
    :try_start_f7
    const-string v3, "GET"

    invoke-virtual {v8, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 129
    const/16 v3, 0x2710

    invoke-virtual {v8, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 130
    const-string v3, "Connection"

    const-string v13, "close"

    invoke-virtual {v8, v3, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V

    .line 132
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 133
    invoke-static {v8}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v13

    .line 134
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v14

    .line 2194
    const-string v15, "server_response"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    aput-object v13, v4, v9

    invoke-virtual {v14, v15, v7, v4}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    const/16 v4, 0xc8

    const/16 v5, 0x194

    if-eq v3, v4, :cond_15a

    if-ne v3, v5, :cond_12f

    goto :goto_15a

    .line 197
    :cond_12f
    const/16 v0, 0x193

    if-eq v3, v0, :cond_137

    const/16 v0, 0x1f4

    if-lt v3, v0, :cond_14b

    :cond_137
    iget v0, v1, Lcom/appsflyer/internal/ba;->AFLogger$LogLevel:I

    if-ge v0, v6, :cond_14b

    .line 199
    new-instance v0, Lcom/appsflyer/internal/ba;

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/ba;-><init>(Lcom/appsflyer/internal/ba;)V

    .line 4221
    iget-object v2, v0, Lcom/appsflyer/internal/ba;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-static {v2, v0, v4, v5, v3}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 199
    goto/16 :goto_28d

    .line 201
    :cond_14b
    const-string v0, "Error connection to server: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/ba;->values(Ljava/lang/String;)V

    goto/16 :goto_28d

    .line 137
    :cond_15a
    :goto_15a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 138
    const-string v7, "net"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    invoke-virtual {v4, v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 139
    const-string v7, "retries"

    iget v11, v1, Lcom/appsflyer/internal/ba;->AFLogger$LogLevel:I

    invoke-virtual {v4, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    iget-object v7, v1, Lcom/appsflyer/internal/ba;->AFVersionDeclaration:Lcom/appsflyer/internal/af;

    iget-object v7, v7, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    const-string v11, "gcd"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3071
    iget-object v7, v7, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v11, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    const-string v4, "Attribution data: "

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/an;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_28c

    .line 143
    invoke-static {v13}, Lcom/appsflyer/internal/ay;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 144
    const-string v7, "iscache"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 146
    if-ne v3, v5, :cond_1c0

    .line 147
    const-string v3, "error_reason"

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v3, "status_code"

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v3, "af_status"

    const-string v5, "Organic"

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v3, "af_message"

    const-string v5, "organic install"

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1c0
    if-eqz v7, :cond_1d5

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1d5

    .line 154
    iget-object v3, v1, Lcom/appsflyer/internal/ba;->AFVersionDeclaration:Lcom/appsflyer/internal/af;

    iget-object v5, v1, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    const-string v7, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v3, v5, v7, v11, v12}, Lcom/appsflyer/internal/af;->valueOf(Landroid/content/Context;Ljava/lang/String;J)V

    .line 156
    :cond_1d5
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d9
    .catchall {:try_start_f7 .. :try_end_1d9} :catchall_298

    const-string v5, "[Invite] Detected App-Invite via channel: "

    const-string v7, "af_channel"

    if-eqz v3, :cond_20b

    .line 157
    :try_start_1df
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fa

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_20b

    .line 162
    :cond_1fa
    const-string v3, "[CrossPromotion] App was installed via %s\'s Cross Promotion"

    new-array v11, v9, [Ljava/lang/Object;

    .line 164
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v11, v10

    .line 162
    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 167
    :cond_20b
    :goto_20b
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_225

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 172
    :cond_225
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_233
    .catchall {:try_start_1df .. :try_end_233} :catchall_298

    .line 175
    const-string v3, "attributionId"

    if-eqz v2, :cond_23d

    .line 176
    :try_start_237
    iget-object v5, v1, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    invoke-static {v5, v3, v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_242

    .line 178
    :cond_23d
    iget-object v2, v1, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    invoke-static {v2, v3, v13}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_242
    sget-object v2, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v2, :cond_28c

    .line 181
    iget-object v2, v1, Lcom/appsflyer/internal/ba;->init:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_24c
    .catchall {:try_start_237 .. :try_end_24c} :catchall_298

    if-gt v2, v9, :cond_28c

    .line 184
    :try_start_24e
    iget-object v2, v1, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    invoke-static {v2}, Lcom/appsflyer/internal/ay;->values(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 185
    iget-object v3, v1, Lcom/appsflyer/internal/ba;->valueOf:Landroid/app/Application;

    invoke-static {v3}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 186
    const-string v5, "sixtyDayConversionData"

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_267

    .line 187
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_267
    .catch Lcom/appsflyer/internal/bb; {:try_start_24e .. :try_end_267} :catch_269
    .catchall {:try_start_24e .. :try_end_267} :catchall_298

    .line 192
    :cond_267
    move-object v4, v2

    goto :goto_270

    .line 189
    :catch_269
    move-exception v0

    .line 190
    :try_start_26a
    const-string v2, "Exception while trying to fetch attribution data. "

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    nop

    .line 193
    :goto_270
    nop

    .line 4071
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[GCD-A02] Calling onConversionDataSuccess with:\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 4072
    sget-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, v4}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V
    :try_end_28c
    .catchall {:try_start_26a .. :try_end_28c} :catchall_298

    .line 197
    :cond_28c
    nop

    .line 211
    :goto_28d
    iget-object v0, v1, Lcom/appsflyer/internal/ba;->init:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 212
    if-eqz v8, :cond_2c7

    .line 213
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2c7

    .line 203
    :catchall_298
    move-exception v0

    move-object v3, v8

    goto :goto_29c

    :catchall_29b
    move-exception v0

    .line 204
    :goto_29c
    :try_start_29c
    iget v2, v1, Lcom/appsflyer/internal/ba;->AFLogger$LogLevel:I

    if-ge v2, v6, :cond_2af

    .line 205
    new-instance v2, Lcom/appsflyer/internal/ba;

    invoke-direct {v2, v1}, Lcom/appsflyer/internal/ba;-><init>(Lcom/appsflyer/internal/ba;)V

    .line 5221
    iget-object v4, v2, Lcom/appsflyer/internal/ba;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-static {v4, v2, v6, v7, v5}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 205
    goto :goto_2b6

    .line 207
    :cond_2af
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/ba;->values(Ljava/lang/String;)V

    .line 209
    :goto_2b6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2bd
    .catchall {:try_start_29c .. :try_end_2bd} :catchall_2d2

    .line 211
    iget-object v0, v1, Lcom/appsflyer/internal/ba;->init:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 212
    if-eqz v3, :cond_2c7

    .line 213
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 216
    :cond_2c7
    :goto_2c7
    iget-object v0, v1, Lcom/appsflyer/internal/ba;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 217
    const-string v0, "[GCD-A03] Server retrieving attempt finished"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 218
    return-void

    .line 211
    :catchall_2d2
    move-exception v0

    iget-object v2, v1, Lcom/appsflyer/internal/ba;->init:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 212
    if-eqz v3, :cond_2dd

    .line 213
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 215
    :cond_2dd
    throw v0

    .line 85
    :cond_2de
    :goto_2de
    const-string v0, "[GCD-E05] AppsFlyer dev key is missing"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 86
    const-string v0, "AppsFlyer dev key is missing"

    invoke-static {v0}, Lcom/appsflyer/internal/ba;->values(Ljava/lang/String;)V

    .line 87
    return-void
.end method
