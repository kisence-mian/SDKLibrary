.class abstract Lcom/tds/xxhash/AbstractStreamingXXHash64Java;
.super Lcom/tds/xxhash/StreamingXXHash64;
.source "AbstractStreamingXXHash64Java.java"


# instance fields
.field memSize:I

.field final memory:[B

.field totalLen:J

.field v1:J

.field v2:J

.field v3:J

.field v4:J


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "seed"    # J

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tds/xxhash/StreamingXXHash64;-><init>(J)V

    .line 29
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->memory:[B

    .line 30
    invoke-virtual {p0}, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->reset()V

    .line 31
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 7

    .line 35
    iget-wide v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->seed:J

    const-wide v2, -0x61c8864e7a143579L

    add-long/2addr v0, v2

    const-wide v4, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->v1:J

    .line 36
    iget-wide v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->seed:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->v2:J

    .line 37
    iget-wide v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->seed:J

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->v3:J

    .line 38
    iget-wide v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->seed:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->v4:J

    .line 39
    iput-wide v4, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->totalLen:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;->memSize:I

    .line 41
    return-void
.end method
