.class public abstract Lcom/bytedance/sdk/openadsdk/TTCustomController;
.super Ljava/lang/Object;
.source "TTCustomController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alist()Z
    .registers 2

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public getDevImei()Ljava/lang/String;
    .registers 2

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevOaid()Ljava/lang/String;
    .registers 2

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTTLocation()Lcom/bytedance/sdk/openadsdk/TTLocation;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCanUseLocation()Z
    .registers 2

    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public isCanUsePhoneState()Z
    .registers 2

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseWifiState()Z
    .registers 2

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseWriteExternal()Z
    .registers 2

    .line 69
    const/4 v0, 0x1

    return v0
.end method
