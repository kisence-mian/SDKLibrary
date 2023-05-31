.class Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;
.super Ljava/lang/Object;
.source "CodedInputStream.java"

# interfaces
.implements Lcom/tds/protobuf/CodedInputStream$RefillCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkippedDataSink"
.end annotation


# instance fields
.field private byteArrayStream:Ljava/io/ByteArrayOutputStream;

.field private lastPos:I

.field final synthetic this$0:Lcom/tds/protobuf/CodedInputStream;


# direct methods
.method private constructor <init>(Lcom/tds/protobuf/CodedInputStream;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/tds/protobuf/CodedInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    # getter for: Lcom/tds/protobuf/CodedInputStream;->bufferPos:I
    invoke-static {p1}, Lcom/tds/protobuf/CodedInputStream;->access$000(Lcom/tds/protobuf/CodedInputStream;)I

    move-result p1

    iput p1, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    return-void
.end method


# virtual methods
.method getSkippedData()Ljava/nio/ByteBuffer;
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1a

    .line 305
    iget-object v0, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/tds/protobuf/CodedInputStream;

    # getter for: Lcom/tds/protobuf/CodedInputStream;->buffer:[B
    invoke-static {v0}, Lcom/tds/protobuf/CodedInputStream;->access$100(Lcom/tds/protobuf/CodedInputStream;)[B

    move-result-object v0

    iget v1, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    iget-object v2, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/tds/protobuf/CodedInputStream;

    # getter for: Lcom/tds/protobuf/CodedInputStream;->bufferPos:I
    invoke-static {v2}, Lcom/tds/protobuf/CodedInputStream;->access$000(Lcom/tds/protobuf/CodedInputStream;)I

    move-result v2

    iget v3, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 307
    :cond_1a
    iget-object v1, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/tds/protobuf/CodedInputStream;

    # getter for: Lcom/tds/protobuf/CodedInputStream;->buffer:[B
    invoke-static {v1}, Lcom/tds/protobuf/CodedInputStream;->access$100(Lcom/tds/protobuf/CodedInputStream;)[B

    move-result-object v1

    iget v2, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/tds/protobuf/CodedInputStream;

    # getter for: Lcom/tds/protobuf/CodedInputStream;->bufferPos:I
    invoke-static {v3}, Lcom/tds/protobuf/CodedInputStream;->access$000(Lcom/tds/protobuf/CodedInputStream;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 308
    iget-object v0, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public onRefill()V
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_b

    .line 293
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    .line 295
    :cond_b
    iget-object v0, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/tds/protobuf/CodedInputStream;

    # getter for: Lcom/tds/protobuf/CodedInputStream;->buffer:[B
    invoke-static {v1}, Lcom/tds/protobuf/CodedInputStream;->access$100(Lcom/tds/protobuf/CodedInputStream;)[B

    move-result-object v1

    iget v2, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/tds/protobuf/CodedInputStream;

    # getter for: Lcom/tds/protobuf/CodedInputStream;->bufferPos:I
    invoke-static {v3}, Lcom/tds/protobuf/CodedInputStream;->access$000(Lcom/tds/protobuf/CodedInputStream;)I

    move-result v3

    iget v4, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    .line 297
    return-void
.end method
