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
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/g/c/c;


# direct methods
.method public static a()Lcom/bytedance/sdk/openadsdk/g/c/c;
    .registers 2

    .line 415
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a:Lcom/bytedance/sdk/openadsdk/g/c/c;

    if-nez v0, :cond_17

    .line 416
    const-class v0, Lcom/bytedance/sdk/openadsdk/g/c/c;

    monitor-enter v0

    .line 417
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a:Lcom/bytedance/sdk/openadsdk/g/c/c;

    if-nez v1, :cond_12

    .line 418
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/c/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/g/c/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a:Lcom/bytedance/sdk/openadsdk/g/c/c;

    .line 420
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 422
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a:Lcom/bytedance/sdk/openadsdk/g/c/c;

    return-object v0
.end method
