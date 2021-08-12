.class final Lcom/bytedance/sdk/a/a/p;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static a:Lcom/bytedance/sdk/a/a/o;

.field static b:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static a()Lcom/bytedance/sdk/a/a/o;
    .registers 6

    .line 45
    const-class v0, Lcom/bytedance/sdk/a/a/p;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/a/a/p;->a:Lcom/bytedance/sdk/a/a/o;

    if-eqz v1, :cond_18

    .line 47
    nop

    .line 48
    iget-object v2, v1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    sput-object v2, Lcom/bytedance/sdk/a/a/p;->a:Lcom/bytedance/sdk/a/a/o;

    .line 49
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 50
    sget-wide v2, Lcom/bytedance/sdk/a/a/p;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/bytedance/sdk/a/a/p;->b:J

    .line 51
    monitor-exit v0

    return-object v1

    .line 53
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 54
    new-instance v0, Lcom/bytedance/sdk/a/a/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/o;-><init>()V

    return-object v0

    .line 53
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method static a(Lcom/bytedance/sdk/a/a/o;)V
    .registers 10

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    if-nez v0, :cond_32

    .line 59
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/o;->d:Z

    if-eqz v0, :cond_d

    return-void

    .line 60
    :cond_d
    const-class v0, Lcom/bytedance/sdk/a/a/p;

    monitor-enter v0

    .line 61
    :try_start_10
    sget-wide v1, Lcom/bytedance/sdk/a/a/p;->b:J

    const-wide/16 v3, 0x2000

    add-long v5, v1, v3

    const-wide/32 v7, 0x10000

    cmp-long v5, v5, v7

    if-lez v5, :cond_1f

    monitor-exit v0

    return-void

    .line 62
    :cond_1f
    add-long/2addr v1, v3

    sput-wide v1, Lcom/bytedance/sdk/a/a/p;->b:J

    .line 63
    sget-object v1, Lcom/bytedance/sdk/a/a/p;->a:Lcom/bytedance/sdk/a/a/o;

    iput-object v1, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/a/a/o;->c:I

    iput v1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 65
    sput-object p0, Lcom/bytedance/sdk/a/a/p;->a:Lcom/bytedance/sdk/a/a/o;

    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 66
    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw p0

    .line 58
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
