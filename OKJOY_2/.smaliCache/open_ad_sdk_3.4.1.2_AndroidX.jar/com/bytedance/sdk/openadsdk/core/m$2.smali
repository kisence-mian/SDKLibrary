.class final Lcom/bytedance/sdk/openadsdk/core/m$2;
.super Ljava/lang/Object;
.source "InitHelper.java"

# interfaces
.implements Lcom/bytedance/embedapplog/ISensitiveInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/m;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImsi()Ljava/lang/String;
    .registers 2

    .line 193
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_f

    .line 194
    const-string v0, ""

    return-object v0

    .line 196
    :cond_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .line 202
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    if-nez v0, :cond_e

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
