.class public Lcom/ssjj/fnsdk/core/FNInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/FNInfo$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/FNInfo$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string v0, "\u83b7\u53d6\u5931\u8d25\uff01\u60a8\u672a\u8c03\u7528\u8702\u9e1f\u521d\u59cb\u5316\u63a5\u53e3 SsjjFNSDK.getInstance().init(...)\uff0c\u8bf7\u5148\u521d\u59cb\u5316\u3002"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u5148\u8c03\u7528\u8702\u9e1f\u521d\u59cb\u5316\u63a5\u53e3 SsjjFNSDK.getInstance().init(...)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_5
    if-lt v3, v0, :cond_8

    return-void

    :cond_8
    aget-object v5, p1, v3

    new-instance v6, Lcom/ssjj/fnsdk/core/FNInfo$a;

    invoke-direct {v6, p0}, Lcom/ssjj/fnsdk/core/FNInfo$a;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_14

    iput-boolean v1, v6, Lcom/ssjj/fnsdk/core/FNInfo$a;->a:Z

    goto :goto_16

    :cond_14
    iput-boolean v2, v6, Lcom/ssjj/fnsdk/core/FNInfo$a;->a:Z

    :goto_16
    sget-object v4, Lcom/ssjj/fnsdk/core/FNInfo;->a:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_5
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_9

    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .registers 1

    const-string v0, "android"

    return-object v0
.end method

.method public static getFNChannel()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->a()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFNGid()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->a()V

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    return-object v0
.end method

.method public static getFNPTag()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->a()V

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformTag:Ljava/lang/String;

    return-object v0
.end method

.method public static getFNPid()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->a()V

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getNM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRawFNPTag()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->a()V

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatTag:Ljava/lang/String;

    return-object v0
.end method

.method public static getRawFNPid()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->a()V

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSYChannel()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->a()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getSyChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->toJson()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    sget-object v0, Lcom/ssjj/fnsdk/core/FNInfo;->a:Ljava/util/Map;

    if-nez v0, :cond_1f

    return-object v1

    :cond_1f
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ssjj/fnsdk/core/FNInfo$a;

    if-nez p0, :cond_28

    return-object v1

    :cond_28
    iget-object p0, p0, Lcom/ssjj/fnsdk/core/FNInfo$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static init()V
    .registers 5

    sget-object v0, Lcom/ssjj/fnsdk/core/FNInfo;->a:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/FNInfo;->a:Ljava/util/Map;

    :cond_b
    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fnpid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rawfnpid"

    const-string v2, "fnpidraw"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fnptag"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rawfnptag"

    const-string v2, "fnptagraw"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientid"

    const-string v2, "client_id"

    const-string v3, "fngid"

    const-string v4, "gameid"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fnchannel"

    const-string v2, "channelfn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getSYChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sychannel"

    const-string v2, "channelsy"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceType"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceName"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    const-string v1, "cid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    const-string v1, "oid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    const-string v1, "aid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    const-string v1, "ssrc"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    const-string v1, "skwid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    const-string v1, "projectId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    const-string v1, "loginType"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->fngtag:Ljava/lang/String;

    const-string v1, "fngtag"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->os:Ljava/lang/String;

    const-string v1, "os"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->deviceId:Ljava/lang/String;

    const-string v1, "deviceId"

    const-string v2, "did"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->screen:Ljava/lang/String;

    const-string v1, "screen"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->operatorName:Ljava/lang/String;

    const-string v1, "operatorName"

    const-string v2, "mno"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->networkName:Ljava/lang/String;

    const-string v1, "networkName"

    const-string v2, "nm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->sdkVer:Ljava/lang/String;

    const-string v1, "sdkVer"

    const-string v2, "sdkVersion"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->osVer:Ljava/lang/String;

    const-string v1, "osVersion"

    const-string v2, "androidVersion"

    const-string v3, "osVer"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->appVer:Ljava/lang/String;

    const-string v1, "appVer"

    const-string v2, "appVersion"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->pkg:Ljava/lang/String;

    const-string v1, "package"

    const-string v2, "packageName"

    const-string v3, "pkg"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNInfo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static toJson()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/ssjj/fnsdk/core/FNInfo;->a:Ljava/util/Map;

    if-nez v0, :cond_7

    const-string v0, "{}"

    return-object v0

    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/ssjj/fnsdk/core/FNInfo;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_27
    sget-object v3, Lcom/ssjj/fnsdk/core/FNInfo;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ssjj/fnsdk/core/FNInfo$a;

    if-nez v3, :cond_32

    goto :goto_16

    :cond_32
    iget-boolean v4, v3, Lcom/ssjj/fnsdk/core/FNInfo$a;->a:Z

    if-eqz v4, :cond_16

    iget-object v4, v3, Lcom/ssjj/fnsdk/core/FNInfo$a;->b:Ljava/lang/String;

    if-nez v4, :cond_3d

    const-string v3, ""

    goto :goto_3f

    :cond_3d
    iget-object v3, v3, Lcom/ssjj/fnsdk/core/FNInfo$a;->b:Ljava/lang/String;

    :goto_3f
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_42} :catch_43

    goto :goto_16

    :catch_43
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method
