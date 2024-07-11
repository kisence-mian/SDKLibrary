.class Lcom/bytedance/sdk/openadsdk/core/t$1;
.super Ljava/lang/Object;
.source "SecSdkHelperInner.java"

# interfaces
.implements Lcom/pgl/sys/ces/out/ISdkInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/t;->c()Lcom/pgl/sys/ces/out/ISdkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/t;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/t;Lcom/bytedance/sdk/openadsdk/TTCustomController;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    if-nez v0, :cond_c

    .line 73
    return-object v1

    .line 76
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 77
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    :cond_1e
    return-object v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 58
    const-string v0, ""

    return-object v0
.end method

.method public getHardwareAddress()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    if-nez v0, :cond_c

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v0

    if-nez v0, :cond_23

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/TTLocation;

    move-result-object v0

    if-nez v0, :cond_14

    .line 120
    return-object v1

    .line 122
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/TTLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 125
    return-object v1

    .line 127
    :cond_2e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    .line 128
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v0

    if-nez v0, :cond_23

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/TTLocation;

    move-result-object v0

    if-nez v0, :cond_14

    .line 104
    return-object v1

    .line 106
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/TTLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 109
    return-object v1

    .line 111
    :cond_2e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    if-nez v0, :cond_c

    .line 83
    return-object v1

    .line 86
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 87
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    :cond_1e
    return-object v1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t$1;->a:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_c

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
