.class Lcom/tencent/smtt/sdk/al;
.super Landroid/os/HandlerThread;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/al;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/smtt/sdk/al;
    .registers 3

    const-class v1, Lcom/tencent/smtt/sdk/al;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/sdk/al;->a:Lcom/tencent/smtt/sdk/al;

    if-nez v0, :cond_13

    new-instance v0, Lcom/tencent/smtt/sdk/al;

    const-string v2, "TbsHandlerThread"

    invoke-direct {v0, v2}, Lcom/tencent/smtt/sdk/al;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/smtt/sdk/al;->a:Lcom/tencent/smtt/sdk/al;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/al;->start()V

    :cond_13
    sget-object v0, Lcom/tencent/smtt/sdk/al;->a:Lcom/tencent/smtt/sdk/al;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method
