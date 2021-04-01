.class final Lcom/sigmob/wire/okio/SegmentPool;
.super Ljava/lang/Object;


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lcom/sigmob/wire/okio/Segment;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static recycle(Lcom/sigmob/wire/okio/Segment;)V
    .registers 9

    const-wide/16 v6, 0x2000

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    if-eqz v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    iget-boolean v0, p0, Lcom/sigmob/wire/okio/Segment;->shared:Z

    if-eqz v0, :cond_15

    :goto_14
    return-void

    :cond_15
    const-class v1, Lcom/sigmob/wire/okio/SegmentPool;

    monitor-enter v1

    :try_start_18
    sget-wide v2, Lcom/sigmob/wire/okio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_27

    monitor-exit v1

    goto :goto_14

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    sget-wide v2, Lcom/sigmob/wire/okio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    sput-wide v2, Lcom/sigmob/wire/okio/SegmentPool;->byteCount:J

    sget-object v0, Lcom/sigmob/wire/okio/SegmentPool;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object v0, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iput v0, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sput-object p0, Lcom/sigmob/wire/okio/SegmentPool;->next:Lcom/sigmob/wire/okio/Segment;

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_24

    goto :goto_14
.end method

.method static take()Lcom/sigmob/wire/okio/Segment;
    .registers 6

    const-class v1, Lcom/sigmob/wire/okio/SegmentPool;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sigmob/wire/okio/SegmentPool;->next:Lcom/sigmob/wire/okio/Segment;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/sigmob/wire/okio/SegmentPool;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    sput-object v2, Lcom/sigmob/wire/okio/SegmentPool;->next:Lcom/sigmob/wire/okio/Segment;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    sget-wide v2, Lcom/sigmob/wire/okio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/sigmob/wire/okio/SegmentPool;->byteCount:J

    monitor-exit v1

    :goto_18
    return-object v0

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    new-instance v0, Lcom/sigmob/wire/okio/Segment;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Segment;-><init>()V

    goto :goto_18

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method
