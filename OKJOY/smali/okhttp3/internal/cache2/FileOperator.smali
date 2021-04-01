.class final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "FileOperator.java"


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .registers 2
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 41
    return-void
.end method


# virtual methods
.method public read(JLokio/Buffer;J)V
    .registers 16
    .param p1, "pos"    # J
    .param p3, "sink"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 62
    :cond_c
    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1e

    .line 63
    iget-object v1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-wide v2, p1

    move-wide v4, p4

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v8

    .line 64
    .local v8, "bytesRead":J
    add-long/2addr p1, v8

    .line 65
    sub-long/2addr p4, v8

    .line 66
    goto :goto_c

    .line 67
    .end local v8    # "bytesRead":J
    :cond_1e
    return-void
.end method

.method public write(JLokio/Buffer;J)V
    .registers 16
    .param p1, "pos"    # J
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 45
    cmp-long v0, p4, v8

    if-ltz v0, :cond_e

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-lez v0, :cond_14

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 47
    :cond_14
    :goto_14
    cmp-long v0, p4, v8

    if-lez v0, :cond_24

    .line 48
    iget-object v0, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v1, p3

    move-wide v2, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v6

    .line 49
    .local v6, "bytesWritten":J
    add-long/2addr p1, v6

    .line 50
    sub-long/2addr p4, v6

    .line 51
    goto :goto_14

    .line 52
    .end local v6    # "bytesWritten":J
    :cond_24
    return-void
.end method
