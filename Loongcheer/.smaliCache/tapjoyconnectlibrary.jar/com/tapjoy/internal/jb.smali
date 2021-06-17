.class final Lcom/tapjoy/internal/jb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/tapjoy/internal/ja;

.field static b:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static a()Lcom/tapjoy/internal/ja;
    .registers 6

    .line 37
    const-class v0, Lcom/tapjoy/internal/jb;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/jb;->a:Lcom/tapjoy/internal/ja;

    if-eqz v1, :cond_18

    .line 39
    nop

    .line 40
    iget-object v2, v1, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    sput-object v2, Lcom/tapjoy/internal/jb;->a:Lcom/tapjoy/internal/ja;

    .line 41
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 42
    sget-wide v2, Lcom/tapjoy/internal/jb;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/tapjoy/internal/jb;->b:J

    .line 43
    monitor-exit v0

    return-object v1

    .line 45
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 46
    new-instance v0, Lcom/tapjoy/internal/ja;

    invoke-direct {v0}, Lcom/tapjoy/internal/ja;-><init>()V

    return-object v0

    .line 45
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method static a(Lcom/tapjoy/internal/ja;)V
    .registers 11

    .line 50
    iget-object v0, p0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    if-nez v0, :cond_32

    .line 51
    iget-boolean v0, p0, Lcom/tapjoy/internal/ja;->d:Z

    if-eqz v0, :cond_d

    return-void

    .line 52
    :cond_d
    const-class v0, Lcom/tapjoy/internal/jb;

    monitor-enter v0

    .line 53
    :try_start_10
    sget-wide v1, Lcom/tapjoy/internal/jb;->b:J

    const-wide/16 v3, 0x2000

    add-long v5, v1, v3

    const-wide/32 v7, 0x10000

    cmp-long v9, v5, v7

    if-lez v9, :cond_1f

    monitor-exit v0

    return-void

    .line 54
    :cond_1f
    add-long/2addr v1, v3

    sput-wide v1, Lcom/tapjoy/internal/jb;->b:J

    .line 55
    sget-object v1, Lcom/tapjoy/internal/jb;->a:Lcom/tapjoy/internal/ja;

    iput-object v1, p0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/tapjoy/internal/ja;->c:I

    iput v1, p0, Lcom/tapjoy/internal/ja;->b:I

    .line 57
    sput-object p0, Lcom/tapjoy/internal/jb;->a:Lcom/tapjoy/internal/ja;

    .line 58
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw p0

    .line 50
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
