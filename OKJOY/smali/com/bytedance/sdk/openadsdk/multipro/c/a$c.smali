.class Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;
.super Ljava/lang/Object;
.source "AdEventProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/f/b/c;


# direct methods
.method public static a()Lcom/bytedance/sdk/openadsdk/f/b/c;
    .registers 2

    .prologue
    .line 415
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a:Lcom/bytedance/sdk/openadsdk/f/b/c;

    if-nez v0, :cond_13

    .line 416
    const-class v1, Lcom/bytedance/sdk/openadsdk/f/b/c;

    monitor-enter v1

    .line 417
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a:Lcom/bytedance/sdk/openadsdk/f/b/c;

    if-nez v0, :cond_12

    .line 418
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/b/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/b/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a:Lcom/bytedance/sdk/openadsdk/f/b/c;

    .line 420
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 422
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a:Lcom/bytedance/sdk/openadsdk/f/b/c;

    return-object v0

    .line 420
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
