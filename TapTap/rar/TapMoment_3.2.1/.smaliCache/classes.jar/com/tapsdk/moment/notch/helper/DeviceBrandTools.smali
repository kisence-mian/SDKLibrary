.class public Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;
.super Ljava/lang/Object;
.source "DeviceBrandTools.java"


# static fields
.field private static sDeviceBrandTools:Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;
    .registers 2

    .line 11
    sget-object v0, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->sDeviceBrandTools:Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;

    if-nez v0, :cond_17

    .line 12
    const-class v0, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;

    monitor-enter v0

    .line 13
    :try_start_7
    sget-object v1, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->sDeviceBrandTools:Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;

    if-nez v1, :cond_12

    .line 14
    new-instance v1, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;

    invoke-direct {v1}, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;-><init>()V

    sput-object v1, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->sDeviceBrandTools:Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;

    .line 16
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 18
    :cond_17
    :goto_17
    sget-object v0, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->sDeviceBrandTools:Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;

    return-object v0
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "propName"    # Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/tapsdk/moment/notch/helper/SystemProperties;->getInstance()Lcom/tapsdk/moment/notch/helper/SystemProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapsdk/moment/notch/helper/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final isHuaWei()Z
    .registers 3

    .line 22
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 23
    .local v0, "manufacturer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 24
    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    return v1

    .line 26
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public final isMiui()Z
    .registers 3

    .line 30
    const-string v0, "ro.miui.ui.version.name"

    invoke-direct {p0, v0}, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "manufacturer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 32
    const/4 v1, 0x1

    return v1

    .line 34
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public final isOppo()Z
    .registers 3

    .line 38
    const-string v0, "ro.product.brand"

    invoke-direct {p0, v0}, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "manufacturer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 40
    const/4 v1, 0x1

    return v1

    .line 42
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public final isVivo()Z
    .registers 3

    .line 46
    const-string v0, "ro.vivo.os.name"

    invoke-direct {p0, v0}, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "manufacturer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 48
    const/4 v1, 0x1

    return v1

    .line 50
    :cond_e
    const/4 v1, 0x0

    return v1
.end method
