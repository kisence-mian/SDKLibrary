.class public Lcom/bytedance/sdk/openadsdk/TTC3Proxy;
.super Ljava/lang/Object;
.source "TTC3Proxy.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 38
    goto :goto_9

    .line 37
    :catchall_8
    move-exception v0

    .line 42
    :goto_9
    :try_start_9
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    .line 44
    goto :goto_12

    .line 43
    :catchall_11
    move-exception p0

    .line 45
    :goto_12
    return-void
.end method

.method public static loadFull(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
    .registers 3

    .line 27
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 28
    return-void
.end method

.method public static loadReward(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 3

    .line 23
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 24
    return-void
.end method

.method public static verityPlayable(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 19
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
