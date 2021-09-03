.class public Lcom/tds/common/websocket/util/ByteBufferUtils;
.super Ljava/lang/Object;
.source "ByteBufferUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getEmptyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .line 49
    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    .line 52
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 53
    .local v0, "fremain":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 54
    .local v1, "toremain":I
    if-le v0, v1, :cond_19

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 56
    .local v2, "limit":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 57
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 58
    return v2

    .line 60
    .end local v2    # "limit":I
    :cond_19
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    return v0

    .line 50
    .end local v0    # "fremain":I
    .end local v1    # "toremain":I
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
