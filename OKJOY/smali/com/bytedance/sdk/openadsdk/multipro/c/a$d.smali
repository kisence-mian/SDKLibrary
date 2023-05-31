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
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/j/a;


# direct methods
.method public static a()Lcom/bytedance/sdk/openadsdk/j/a;
    .registers 5

    .prologue
    .line 400
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/j/a;

    if-nez v0, :cond_20

    .line 401
    const-class v1, Lcom/bytedance/sdk/openadsdk/j/a;

    monitor-enter v1

    .line 402
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/j/a;

    if-nez v0, :cond_1f

    .line 403
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/j/g;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/j/f;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/j/a;

    .line 405
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_23

    .line 407
    :cond_20
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/j/a;

    return-object v0

    .line 405
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method
