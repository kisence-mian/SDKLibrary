.class public Lcom/sigmob/sdk/base/common/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/sigmob/volley/toolbox/g;

.field private static b:Lcom/sigmob/volley/toolbox/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/volley/toolbox/g;

    sput-object v0, Lcom/sigmob/sdk/base/common/n;->b:Lcom/sigmob/volley/toolbox/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/volley/toolbox/g;
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/volley/toolbox/g;

    if-nez v0, :cond_22

    const-class v0, Lcom/sigmob/sdk/base/common/n;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/volley/toolbox/g;

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->d()Lcom/sigmob/sdk/common/e/l;

    move-result-object v1

    if-eqz v1, :cond_1d

    new-instance v1, Lcom/sigmob/volley/toolbox/g;

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->d()Lcom/sigmob/sdk/common/e/l;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sigmob/volley/toolbox/g;-><init>(Lcom/sigmob/volley/n;I)V

    sput-object v1, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/volley/toolbox/g;

    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    :cond_22
    :goto_22
    sget-object v0, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/volley/toolbox/g;

    return-object v0
.end method

.method public static b()Lcom/sigmob/volley/toolbox/g;
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/n;->b:Lcom/sigmob/volley/toolbox/g;

    if-nez v0, :cond_22

    const-class v0, Lcom/sigmob/sdk/base/common/n;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/sdk/base/common/n;->b:Lcom/sigmob/volley/toolbox/g;

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->e()Lcom/sigmob/sdk/common/e/l;

    move-result-object v1

    if-eqz v1, :cond_1d

    new-instance v1, Lcom/sigmob/volley/toolbox/g;

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->e()Lcom/sigmob/sdk/common/e/l;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sigmob/volley/toolbox/g;-><init>(Lcom/sigmob/volley/n;I)V

    sput-object v1, Lcom/sigmob/sdk/base/common/n;->b:Lcom/sigmob/volley/toolbox/g;

    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    :cond_22
    :goto_22
    sget-object v0, Lcom/sigmob/sdk/base/common/n;->b:Lcom/sigmob/volley/toolbox/g;

    return-object v0
.end method

.method public static c()Lcom/sigmob/volley/toolbox/g;
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/volley/toolbox/g;

    if-nez v0, :cond_22

    const-class v0, Lcom/sigmob/sdk/base/common/n;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/volley/toolbox/g;

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->e()Lcom/sigmob/sdk/common/e/l;

    move-result-object v1

    if-eqz v1, :cond_1d

    new-instance v1, Lcom/sigmob/volley/toolbox/g;

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->e()Lcom/sigmob/sdk/common/e/l;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sigmob/volley/toolbox/g;-><init>(Lcom/sigmob/volley/n;I)V

    sput-object v1, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/volley/toolbox/g;

    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    :cond_22
    :goto_22
    sget-object v0, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/volley/toolbox/g;

    return-object v0
.end method
