.class final Lcom/tds/protobuf/CodedOutputStream$NioHeapEncoder;
.super Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NioHeapEncoder"
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private initialPosition:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1456
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 1457
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 1456
    invoke-direct {p0, v0, v1, v2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    .line 1458
    iput-object p1, p0, Lcom/tds/protobuf/CodedOutputStream$NioHeapEncoder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 1459
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioHeapEncoder;->initialPosition:I

    .line 1460
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 4

    .line 1465
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioHeapEncoder;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$NioHeapEncoder;->initialPosition:I

    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream$NioHeapEncoder;->getTotalBytesWritten()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1466
    return-void
.end method
