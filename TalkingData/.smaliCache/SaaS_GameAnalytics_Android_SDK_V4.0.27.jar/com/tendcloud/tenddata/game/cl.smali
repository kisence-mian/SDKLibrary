.class public Lcom/tendcloud/tenddata/game/cl;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/cl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cl;->a:Lcom/tendcloud/tenddata/game/cl;

    .line 36
    :try_start_3
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cl;->a()Lcom/tendcloud/tenddata/game/cl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    .line 40
    goto :goto_13

    .line 37
    :catchall_f
    move-exception v0

    .line 39
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 41
    :goto_13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cl;
    .registers 2

    .line 23
    sget-object v0, Lcom/tendcloud/tenddata/game/cl;->a:Lcom/tendcloud/tenddata/game/cl;

    if-nez v0, :cond_17

    .line 24
    const-class v0, Lcom/tendcloud/tenddata/game/cl;

    monitor-enter v0

    .line 25
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/cl;->a:Lcom/tendcloud/tenddata/game/cl;

    if-nez v1, :cond_12

    .line 26
    new-instance v1, Lcom/tendcloud/tenddata/game/cl;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/cl;->a:Lcom/tendcloud/tenddata/game/cl;

    .line 28
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 30
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/cl;->a:Lcom/tendcloud/tenddata/game/cl;

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 58
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bn;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/game/cm;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/cm;-><init>(Lcom/tendcloud/tenddata/game/cl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 83
    goto :goto_f

    .line 78
    :catchall_b
    move-exception v0

    .line 82
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 85
    :goto_f
    return-void
.end method

.method public final onTDEBEventCommonEnvironment(Lcom/tendcloud/tenddata/game/dj;)V
    .registers 3

    .line 45
    :try_start_0
    iget p1, p1, Lcom/tendcloud/tenddata/game/dj;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    .line 46
    return-void

    .line 48
    :cond_6
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/cl;->b()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 52
    goto :goto_e

    .line 49
    :catchall_a
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 54
    :goto_e
    return-void
.end method
