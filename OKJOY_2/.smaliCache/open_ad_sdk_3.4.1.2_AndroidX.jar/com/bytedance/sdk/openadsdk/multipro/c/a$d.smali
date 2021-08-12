.class Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;
.super Ljava/lang/Object;
.source "AdEventProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/k/a;


# direct methods
.method public static a()Lcom/bytedance/sdk/openadsdk/k/a;
    .registers 5

    .line 400
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/k/a;

    if-nez v0, :cond_24

    .line 401
    const-class v0, Lcom/bytedance/sdk/openadsdk/k/a;

    monitor-enter v0

    .line 402
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/k/a;

    if-nez v1, :cond_1f

    .line 403
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/k/g;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/k/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/k/f;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/k/a;

    .line 405
    :cond_1f
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    .line 407
    :cond_24
    :goto_24
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/k/a;

    return-object v0
.end method
