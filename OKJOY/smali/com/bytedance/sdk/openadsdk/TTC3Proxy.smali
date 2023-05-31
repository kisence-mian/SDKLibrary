.class public Lcom/bytedance/sdk/openadsdk/TTC3Proxy;
.super Ljava/lang/Object;
.source "TTC3Proxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_11

    .line 41
    :goto_7
    :try_start_7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_f

    .line 44
    :goto_e
    return-void

    .line 42
    :catch_f
    move-exception v0

    goto :goto_e

    .line 36
    :catch_11
    move-exception v0

    goto :goto_7
.end method

.method public static loadFull(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
    .registers 4

    .prologue
    .line 26
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 27
    return-void
.end method

.method public static loadReward(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 4

    .prologue
    .line 22
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 23
    return-void
.end method

.method public static verityPlayable(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
