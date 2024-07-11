.class public Lcom/kwad/sdk/api/core/SpeedLimitApiHolder;
.super Ljava/lang/Object;


# static fields
.field private static volatile instance:Lcom/kwad/sdk/api/core/SpeedLimitApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kwad/sdk/api/core/SpeedLimitApi;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/api/core/SpeedLimitApiHolder;->instance:Lcom/kwad/sdk/api/core/SpeedLimitApi;

    if-nez v0, :cond_1e

    const-class v0, Lcom/kwad/sdk/api/core/SpeedLimitApiHolder;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/api/core/SpeedLimitApiHolder;->instance:Lcom/kwad/sdk/api/core/SpeedLimitApi;

    if-nez v1, :cond_19

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v1

    const-class v2, Lcom/kwad/sdk/api/core/SpeedLimitApi;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/api/loader/Loader;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/core/SpeedLimitApi;

    sput-object v1, Lcom/kwad/sdk/api/core/SpeedLimitApiHolder;->instance:Lcom/kwad/sdk/api/core/SpeedLimitApi;

    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1

    :cond_1e
    :goto_1e
    sget-object v0, Lcom/kwad/sdk/api/core/SpeedLimitApiHolder;->instance:Lcom/kwad/sdk/api/core/SpeedLimitApi;

    return-object v0
.end method
