.class public Lcom/sigmob/sdk/base/common/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/sigmob/volley/toolbox/i;

.field private static b:Lcom/sigmob/volley/toolbox/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/common/u;->a:Lcom/sigmob/volley/toolbox/i;

    sput-object v0, Lcom/sigmob/sdk/base/common/u;->b:Lcom/sigmob/volley/toolbox/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/volley/toolbox/i;
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/u;->a:Lcom/sigmob/volley/toolbox/i;

    if-nez v0, :cond_1e

    const-class v1, Lcom/sigmob/sdk/base/common/u;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/common/u;->a:Lcom/sigmob/volley/toolbox/i;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->e()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/sigmob/volley/toolbox/i;

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->e()Lcom/sigmob/sdk/base/c/t;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/sigmob/volley/toolbox/i;-><init>(Lcom/sigmob/volley/u;I)V

    sput-object v0, Lcom/sigmob/sdk/base/common/u;->a:Lcom/sigmob/volley/toolbox/i;

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_21

    :cond_1e
    sget-object v0, Lcom/sigmob/sdk/base/common/u;->a:Lcom/sigmob/volley/toolbox/i;

    return-object v0

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public static b()Lcom/sigmob/volley/toolbox/i;
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/u;->b:Lcom/sigmob/volley/toolbox/i;

    if-nez v0, :cond_1e

    const-class v1, Lcom/sigmob/sdk/base/common/u;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/common/u;->b:Lcom/sigmob/volley/toolbox/i;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->f()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/sigmob/volley/toolbox/i;

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->f()Lcom/sigmob/sdk/base/c/t;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/sigmob/volley/toolbox/i;-><init>(Lcom/sigmob/volley/u;I)V

    sput-object v0, Lcom/sigmob/sdk/base/common/u;->b:Lcom/sigmob/volley/toolbox/i;

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_21

    :cond_1e
    sget-object v0, Lcom/sigmob/sdk/base/common/u;->b:Lcom/sigmob/volley/toolbox/i;

    return-object v0

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public static c()Lcom/sigmob/volley/toolbox/i;
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/u;->a:Lcom/sigmob/volley/toolbox/i;

    if-nez v0, :cond_1e

    const-class v1, Lcom/sigmob/sdk/base/common/u;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/common/u;->a:Lcom/sigmob/volley/toolbox/i;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->f()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/sigmob/volley/toolbox/i;

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->f()Lcom/sigmob/sdk/base/c/t;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/sigmob/volley/toolbox/i;-><init>(Lcom/sigmob/volley/u;I)V

    sput-object v0, Lcom/sigmob/sdk/base/common/u;->a:Lcom/sigmob/volley/toolbox/i;

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_21

    :cond_1e
    sget-object v0, Lcom/sigmob/sdk/base/common/u;->a:Lcom/sigmob/volley/toolbox/i;

    return-object v0

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method
