.class public final Lcom/tds/protobuf/UnsafeByteOperations;
.super Ljava/lang/Object;
.source "UnsafeByteOperations.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unsafeWrap(Ljava/nio/ByteBuffer;)Lcom/tds/protobuf/ByteString;
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 75
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 76
    .local v0, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/tds/protobuf/ByteString;->wrap([BII)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 78
    .end local v0    # "offset":I
    :cond_1c
    new-instance v0, Lcom/tds/protobuf/NioByteString;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static unsafeWriteTo(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteOutput;)V
    .registers 2
    .param p0, "bytes"    # Lcom/tds/protobuf/ByteString;
    .param p1, "output"    # Lcom/tds/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/ByteString;->writeTo(Lcom/tds/protobuf/ByteOutput;)V

    .line 100
    return-void
.end method
