.class final Lcom/appsflyer/internal/af$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/ah$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/af;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field private synthetic valueOf:Ljava/lang/String;

.field private synthetic values:Lcom/appsflyer/internal/af;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/af;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .registers 4

    .line 943
    iput-object p1, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    iput-object p2, p0, Lcom/appsflyer/internal/af$1;->valueOf:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/internal/af$1;->AFInAppEventParameterName:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventType(Landroid/app/Activity;)V
    .registers 13

    .line 945
    iget-object v0, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Lcom/appsflyer/internal/af;J)J

    .line 946
    iget-object v0, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    .line 2810
    iget-object v1, v0, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    if-nez v1, :cond_16

    new-instance v1, Lcom/appsflyer/internal/aw;

    invoke-direct {v1, p1}, Lcom/appsflyer/internal/aw;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 2811
    :cond_16
    iget-object v0, v0, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 946
    nop

    .line 3079
    invoke-virtual {v0}, Lcom/appsflyer/internal/aw;->AFKeystoreWrapper()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4067
    iget-object v0, v0, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "fg_ts"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 947
    :cond_32
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4703
    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    .line 947
    nop

    .line 948
    if-nez v0, :cond_62

    .line 949
    :try_start_40
    iget-object v3, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    invoke-static {v3}, Lcom/appsflyer/internal/af;->valueOf(Lcom/appsflyer/internal/af;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "init_to_fg"

    iget-object v5, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    invoke-static {v5}, Lcom/appsflyer/internal/af;->values(Lcom/appsflyer/internal/af;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    iget-object v7, v7, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    const-string v8, "init_ts"

    .line 5058
    iget-object v7, v7, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 949
    sub-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_60} :catch_61

    .line 951
    goto :goto_62

    .line 950
    :catch_61
    move-exception v3

    .line 952
    :cond_62
    :goto_62
    const-string v3, "onBecameForeground"

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 954
    const/4 v3, 0x2

    if-ge v0, v3, :cond_7c

    invoke-static {p1}, Lcom/appsflyer/internal/z;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/z;

    move-result-object v0

    .line 5150
    iget-object v3, v0, Lcom/appsflyer/internal/z;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v4, v0, Lcom/appsflyer/internal/z;->getLevel:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5152
    iget-object v3, v0, Lcom/appsflyer/internal/z;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v0, v0, Lcom/appsflyer/internal/z;->values:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 955
    :cond_7c
    new-instance v0, Lcom/appsflyer/internal/bi;

    invoke-direct {v0}, Lcom/appsflyer/internal/bi;-><init>()V

    .line 956
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v3

    .line 958
    invoke-virtual {v0}, Lcom/appsflyer/internal/h;->valueOf()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    iget-object v5, v5, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 956
    nop

    .line 6063
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 6064
    const-string v7, "ddl_sent"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 6065
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    .line 6703
    invoke-static {v6, v1, v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v1

    .line 6065
    nop

    .line 6066
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, v2, p1, v4}, Lcom/appsflyer/internal/f;->values(Landroid/content/Intent;Landroid/content/Context;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_130

    iget-object v2, v3, Lcom/appsflyer/internal/f;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v2, :cond_130

    if-nez v1, :cond_130

    if-nez v7, :cond_130

    .line 6070
    new-instance v1, Lcom/appsflyer/internal/ar;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/appsflyer/internal/ar;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/aw;)V

    .line 7074
    const-string v2, "[DDL] start"

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 7075
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/appsflyer/internal/ar$3;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/ar$3;-><init>(Lcom/appsflyer/internal/ar;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 7084
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 7086
    const/4 v3, 0x0

    :try_start_d3
    sget-wide v4, Lcom/appsflyer/internal/ar;->onAppOpenAttributionNative:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 7087
    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/ar;->AFInAppEventParameterName(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_e0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d3 .. :try_end_e0} :catch_115
    .catch Ljava/lang/InterruptedException; {:try_start_d3 .. :try_end_e0} :catch_113
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d3 .. :try_end_e0} :catch_e1

    goto :goto_130

    .line 7095
    :catch_e1
    move-exception v2

    .line 7096
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[DDL] Timeout, didn\'t manage to find deferred deep link after "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/appsflyer/internal/ar;->onAttributionFailureNative:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " attempt(s) within "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/appsflyer/internal/ar;->onAppOpenAttributionNative:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " milliseconds"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 7098
    new-instance v2, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v4, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v2, v3, v4}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/ar;->AFInAppEventParameterName(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto :goto_130

    .line 7088
    :catch_113
    move-exception v2

    goto :goto_116

    :catch_115
    move-exception v2

    .line 7089
    :goto_116
    const-string v4, "[DDL] Error occurred"

    invoke-static {v4, v2}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7090
    new-instance v4, Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 7091
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_128

    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    goto :goto_12a

    :cond_128
    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    :goto_12a
    invoke-direct {v4, v3, v2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 7094
    invoke-virtual {v1, v4}, Lcom/appsflyer/internal/ar;->AFInAppEventParameterName(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 960
    :cond_130
    :goto_130
    iget-object v1, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    .line 8053
    if-eqz p1, :cond_13c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, v0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 8054
    :cond_13c
    nop

    .line 960
    iget-object v2, p0, Lcom/appsflyer/internal/af$1;->valueOf:Ljava/lang/String;

    .line 961
    nop

    .line 8127
    iput-object v2, v0, Lcom/appsflyer/internal/h;->AFLogger$LogLevel:Ljava/lang/String;

    .line 8128
    nop

    .line 961
    iget-object v2, p0, Lcom/appsflyer/internal/af$1;->AFInAppEventParameterName:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 962
    nop

    .line 9089
    iput-object v2, v0, Lcom/appsflyer/internal/h;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 9090
    nop

    .line 962
    nop

    .line 960
    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Lcom/appsflyer/internal/h;Landroid/app/Activity;)V

    .line 963
    return-void
.end method

.method public final valueOf(Landroid/content/Context;)V
    .registers 9

    .line 966
    const-string v0, "onBecameBackground"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/af;->values(Lcom/appsflyer/internal/af;J)J

    .line 968
    iget-object v0, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFVersionDeclaration(Lcom/appsflyer/internal/af;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    invoke-static {v2}, Lcom/appsflyer/internal/af;->values(Lcom/appsflyer/internal/af;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 970
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_28

    cmp-long v4, v0, v2

    if-gez v4, :cond_28

    .line 971
    move-wide v0, v2

    .line 973
    :cond_28
    iget-object v2, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    .line 9810
    iget-object v3, v2, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    if-nez v3, :cond_35

    new-instance v3, Lcom/appsflyer/internal/aw;

    invoke-direct {v3, p1}, Lcom/appsflyer/internal/aw;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 9811
    :cond_35
    iget-object v2, v2, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 973
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 974
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 10067
    iget-object v2, v2, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "prev_session_dur"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 976
    const-string v0, "callStatsBackground background call"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/appsflyer/internal/af$1;->values:Lcom/appsflyer/internal/af;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/af;->valueOf(Ljava/lang/ref/WeakReference;)V

    .line 978
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Lcom/appsflyer/internal/am;->AFLogger$LogLevel()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 980
    invoke-virtual {v0}, Lcom/appsflyer/internal/am;->AFInAppEventParameterName()V

    .line 981
    if-eqz p1, :cond_75

    .line 982
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 983
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 984
    invoke-static {v1, v2}, Lcom/appsflyer/internal/am;->AFInAppEventParameterName(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 986
    :cond_75
    invoke-virtual {v0}, Lcom/appsflyer/internal/am;->AFInAppEventType()V

    goto :goto_7e

    .line 988
    :cond_79
    const-string v0, "RD status is OFF"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 11045
    :goto_7e
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez v0, :cond_89

    .line 11046
    new-instance v0, Lcom/appsflyer/internal/n;

    invoke-direct {v0}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 11048
    :cond_89
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 990
    nop

    .line 11092
    :try_start_8c
    iget-object v1, v0, Lcom/appsflyer/internal/n;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Lcom/appsflyer/internal/n;->AFInAppEventParameterName(Ljava/util/concurrent/ExecutorService;)V

    .line 11094
    iget-object v1, v0, Lcom/appsflyer/internal/n;->AFInAppEventType:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_9e

    .line 11095
    iget-object v0, v0, Lcom/appsflyer/internal/n;->AFInAppEventType:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/appsflyer/internal/n;->AFInAppEventParameterName(Ljava/util/concurrent/ExecutorService;)V
    :try_end_9e
    .catchall {:try_start_8c .. :try_end_9e} :catchall_9f

    .line 11099
    :cond_9e
    goto :goto_a5

    .line 11097
    :catchall_9f
    move-exception v0

    .line 11098
    const-string v1, "failed to stop Executors"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 991
    :goto_a5
    invoke-static {p1}, Lcom/appsflyer/internal/z;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/z;

    move-result-object p1

    .line 11183
    iget-object v0, p1, Lcom/appsflyer/internal/z;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object p1, p1, Lcom/appsflyer/internal/z;->getLevel:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 992
    return-void
.end method
