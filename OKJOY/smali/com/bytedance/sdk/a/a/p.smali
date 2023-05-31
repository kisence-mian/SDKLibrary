.class final Lcom/bytedance/sdk/a/a/p;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static a:Lcom/bytedance/sdk/a/a/o;

.field static b:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static a()Lcom/bytedance/sdk/a/a/o;
    .registers 6

    .prologue
    .line 45
    const-class v1, Lcom/bytedance/sdk/a/a/p;

    monitor-enter v1

    .line 46
    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/a/a/p;->a:Lcom/bytedance/sdk/a/a/o;

    if-eqz v0, :cond_19

    .line 47
    sget-object v0, Lcom/bytedance/sdk/a/a/p;->a:Lcom/bytedance/sdk/a/a/o;

    .line 48
    iget-object v2, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    sput-object v2, Lcom/bytedance/sdk/a/a/p;->a:Lcom/bytedance/sdk/a/a/o;

    .line 49
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 50
    sget-wide v2, Lcom/bytedance/sdk/a/a/p;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/bytedance/sdk/a/a/p;->b:J

    .line 51
    monitor-exit v1

    .line 54
    :goto_18
    return-object v0

    .line 53
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    .line 54
    new-instance v0, Lcom/bytedance/sdk/a/a/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/o;-><init>()V

    goto :goto_18

    .line 53
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method static a(Lcom/bytedance/sdk/a/a/o;)V
    .registers 9

    .prologue
    const-wide/16 v6, 0x2000

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    if-eqz v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 59
    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/o;->d:Z

    if-eqz v0, :cond_15

    .line 67
    :goto_14
    return-void

    .line 60
    :cond_15
    const-class v1, Lcom/bytedance/sdk/a/a/p;

    monitor-enter v1

    .line 61
    :try_start_18
    sget-wide v2, Lcom/bytedance/sdk/a/a/p;->b:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_27

    monitor-exit v1

    goto :goto_14

    .line 66
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0

    .line 62
    :cond_27
    :try_start_27
    sget-wide v2, Lcom/bytedance/sdk/a/a/p;->b:J

    add-long/2addr v2, v6

    sput-wide v2, Lcom/bytedance/sdk/a/a/p;->b:J

    .line 63
    sget-object v0, Lcom/bytedance/sdk/a/a/p;->a:Lcom/bytedance/sdk/a/a/o;

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/a/o;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 65
    sput-object p0, Lcom/bytedance/sdk/a/a/p;->a:Lcom/bytedance/sdk/a/a/o;

    .line 66
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_24

    goto :goto_14
.end method
