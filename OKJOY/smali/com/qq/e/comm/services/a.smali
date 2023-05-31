.class public Lcom/qq/e/comm/services/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/qq/e/comm/services/a;


# instance fields
.field private volatile b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/qq/e/comm/services/a;

    invoke-direct {v0}, Lcom/qq/e/comm/services/a;-><init>()V

    sput-object v0, Lcom/qq/e/comm/services/a;->a:Lcom/qq/e/comm/services/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/qq/e/comm/services/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Lcom/qq/e/comm/services/a;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/services/a;->a:Lcom/qq/e/comm/services/a;

    return-object v0
.end method

.method private static a(Lcom/qq/e/comm/managers/setting/SM;Lcom/qq/e/comm/managers/plugin/PM;Lcom/qq/e/comm/managers/status/DeviceStatus;Lcom/qq/e/comm/managers/status/APPStatus;J)Ljava/lang/String;
    .registers 16

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {p0}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/setting/SM;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_8} :catch_f1

    move-result-object v0

    :try_start_9
    const-string v1, "sig"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_24

    const-string v3, "app"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/setting/SM;->getDevCloudSettingSig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk"

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/setting/SM;->getSdkCloudSettingSig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    if-eqz p1, :cond_3c

    const-string v3, "jar"

    invoke-virtual {p1}, Lcom/qq/e/comm/managers/plugin/PM;->getLocalSig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "plugin_version"

    invoke-virtual {p1}, Lcom/qq/e/comm/managers/plugin/PM;->getPluginVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3c
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dev"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_ac

    const-string v3, "did"

    invoke-virtual {p2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getPlainDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "md"

    iget-object v4, p2, Lcom/qq/e/comm/managers/status/DeviceStatus;->model:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lg"

    invoke-virtual {p2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "w"

    invoke-virtual {p2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getDeviceWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "h"

    invoke-virtual {p2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getDeviceHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "dd"

    invoke-virtual {p2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getDeviceDensity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "apil"

    invoke-virtual {p2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "op"

    invoke-virtual {p2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mf"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ac
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app"

    invoke-static {p3}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/status/APPStatus;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/status/DeviceStatus;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk"

    invoke-static {p1}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/plugin/PM;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "sdk_init_time"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, p4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "performance"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "biz"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_ec} :catch_fb

    :goto_ec
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_f1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_f5
    const-string v2, "JSONException while build init req"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ec

    :catch_fb
    move-exception v1

    goto :goto_f5
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    if-eqz v0, :cond_bf

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_bf

    :try_start_10
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/setting/SM;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "c"

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/GDTADManager;->getDeviceStatus()Lcom/qq/e/comm/managers/status/DeviceStatus;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/status/DeviceStatus;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app"

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/GDTADManager;->getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/status/APPStatus;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_ab

    const-string v2, "extype"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_84
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "biz"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/qq/e/comm/net/rr/S2SSRequest;

    const-string v2, "http://sdk.e.qq.com/err"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/net/rr/S2SSRequest;-><init>(Ljava/lang/String;[B)V

    invoke-static {}, Lcom/qq/e/comm/net/NetworkClientImpl;->getInstance()Lcom/qq/e/comm/net/NetworkClient;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/qq/e/comm/net/NetworkClient;->submit(Lcom/qq/e/comm/net/rr/Request;)Ljava/util/concurrent/Future;

    :goto_aa
    return-void

    :cond_ab
    const-string v2, "extype"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ex"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_b7} :catch_b8

    goto :goto_84

    :catch_b8
    move-exception v0

    const-string v1, "Exception While build s2ss error report req"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_aa

    :cond_bf
    const-string v0, "Report Not Work while  ADManager  not Inited"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    goto :goto_aa
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/qq/e/comm/managers/setting/SM;Lcom/qq/e/comm/managers/plugin/PM;Lcom/qq/e/comm/managers/status/DeviceStatus;Lcom/qq/e/comm/managers/status/APPStatus;J)V
    .registers 14

    iget-object v0, p0, Lcom/qq/e/comm/services/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-class v1, Lcom/qq/e/comm/services/a;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/qq/e/comm/services/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    monitor-exit v1

    goto :goto_8

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    :try_start_19
    invoke-static/range {p2 .. p7}, Lcom/qq/e/comm/services/a;->a(Lcom/qq/e/comm/managers/setting/SM;Lcom/qq/e/comm/managers/plugin/PM;Lcom/qq/e/comm/managers/status/DeviceStatus;Lcom/qq/e/comm/managers/status/APPStatus;J)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "launch request: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    const-string v0, "http://sdk.e.qq.com/activate"

    invoke-virtual {p2}, Lcom/qq/e/comm/managers/setting/SM;->getSuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v0, "http://sdk.e.qq.com/launch"

    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v3, Lcom/qq/e/comm/services/a$1;

    invoke-direct {v3, p0, p3, v4, v5}, Lcom/qq/e/comm/services/a$1;-><init>(Lcom/qq/e/comm/services/a;Lcom/qq/e/comm/managers/plugin/PM;J)V

    new-instance v4, Lcom/qq/e/comm/net/rr/S2SSRequest;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v4, v0, v2}, Lcom/qq/e/comm/net/rr/S2SSRequest;-><init>(Ljava/lang/String;[B)V

    invoke-static {}, Lcom/qq/e/comm/net/NetworkClientImpl;->getInstance()Lcom/qq/e/comm/net/NetworkClient;

    move-result-object v0

    sget-object v2, Lcom/qq/e/comm/net/NetworkClient$Priority;->High:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-interface {v0, v4, v2, v3}, Lcom/qq/e/comm/net/NetworkClient;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/qq/e/comm/services/a;->b:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_19 .. :try_end_63} :catchall_16

    goto :goto_8
.end method
