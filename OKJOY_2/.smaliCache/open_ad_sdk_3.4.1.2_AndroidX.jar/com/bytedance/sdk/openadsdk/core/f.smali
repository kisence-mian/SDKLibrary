.class public Lcom/bytedance/sdk/openadsdk/core/f;
.super Lcom/bytedance/sdk/openadsdk/core/g;
.source "DBAdapter.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/f;
    .registers 3

    .line 17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    if-nez v0, :cond_17

    .line 18
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/f;

    monitor-enter v0

    .line 19
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    if-nez v1, :cond_12

    .line 20
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    .line 22
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 24
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/bytedance/sdk/openadsdk/core/g$c;
    .registers 2

    .line 11
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/g;->a()Lcom/bytedance/sdk/openadsdk/core/g$c;

    move-result-object v0

    return-object v0
.end method
