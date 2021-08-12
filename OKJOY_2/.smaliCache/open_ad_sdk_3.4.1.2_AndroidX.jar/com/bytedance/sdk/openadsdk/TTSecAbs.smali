.class public abstract Lcom/bytedance/sdk/openadsdk/TTSecAbs;
.super Ljava/lang/Object;
.source "TTSecAbs.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public NM_getAppKey()Ljava/lang/String;
    .registers 2

    .line 17
    const-string v0, "df979cdb-05a7-448c-bece-92d5005a1247"

    return-object v0
.end method

.method public NM_getCustomInfo()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object v0

    .line 34
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public NM_getDeviceId()Ljava/lang/String;
    .registers 2

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NM_getInstallId()Ljava/lang/String;
    .registers 2

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract NM_pullSg()Ljava/lang/String;
.end method

.method public abstract NM_pullVer(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract NM_reportNow(Ljava/lang/String;)V
.end method

.method public abstract NM_setParams(Ljava/lang/String;)V
.end method
