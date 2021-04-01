.class public Lcom/bytedance/sdk/openadsdk/core/e;
.super Lcom/bytedance/sdk/openadsdk/core/f;
.source "DBAdapter.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/e;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;
    .registers 3

    .prologue
    .line 17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    if-nez v0, :cond_13

    .line 18
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/e;

    monitor-enter v1

    .line 19
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    if-nez v0, :cond_12

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    .line 22
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 24
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    return-object v0

    .line 22
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/bytedance/sdk/openadsdk/core/f$c;
    .registers 2

    .prologue
    .line 11
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/f;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v0

    return-object v0
.end method
