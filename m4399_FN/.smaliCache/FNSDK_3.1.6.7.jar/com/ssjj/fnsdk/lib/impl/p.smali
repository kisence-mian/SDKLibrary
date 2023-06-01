.class public Lcom/ssjj/fnsdk/lib/impl/p;
.super Lcom/ssjj/fnsdk/lib/core/ApiClass;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/ApiClass;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/p;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceInfo(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/String;
    .registers 7

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getContext(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/FNInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deviceName"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deviceType"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getContext(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/FNInfo;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkName"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v1

    const-string v2, "operatorName"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkVersion"

    const-string v2, "3.1.6.7"

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_5a

    move-object v1, v2

    goto :goto_5c

    :cond_5a
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_5c
    const-string v3, "osVersion"

    invoke-virtual {v0, v3, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getContext(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_68

    goto :goto_6c

    :cond_68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_6c
    const-string p1, "packageName"

    invoke-virtual {v0, p1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_79

    const/4 p1, 0x1

    const-string v1, "succ"

    invoke-interface {p2, p1, v1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_79
    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPlatformInfo(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/String;
    .registers 5

    new-instance p1, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    const-string v0, "fngid"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fnpid"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fnpidraw"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fnptag"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fnptagraw"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelFN"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelSY"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getSYChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4c

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_4c
    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStorageRoot(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/String;
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/p;->a:Ljava/lang/String;

    if-nez p1, :cond_25

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/p;->a:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/p;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_25

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/p;->a:Ljava/lang/String;

    :cond_25
    if-eqz p2, :cond_37

    new-instance p1, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->putResult(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_37
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/p;->a:Ljava/lang/String;

    return-object p1
.end method

.method public toast(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    if-nez p1, :cond_c

    if-eqz p2, :cond_b

    const-string p1, "param is null"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p2, v1, p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void

    :cond_c
    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/q;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/lib/impl/q;-><init>(Lcom/ssjj/fnsdk/lib/impl/p;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_1c

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_1c
    return-void
.end method
