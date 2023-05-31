.class Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .registers 4
    .param p1, "this$0"    # Lokhttp3/internal/cache2/Relay;

    .prologue
    .line 224
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    .line 228
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v1, :cond_6

    .line 359
    :cond_5
    :goto_5
    return-void

    .line 345
    :cond_6
    iput-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "fileToClose":Ljava/io/RandomAccessFile;
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 349
    :try_start_c
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v3, v1, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 350
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v1, v1, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v1, :cond_23

    .line 351
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 352
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v3, 0x0

    iput-object v3, v1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 354
    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2a

    .line 356
    if-eqz v0, :cond_5

    .line 357
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    .line 354
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 32
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v4, :cond_e

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v10

    .line 260
    :goto_13
    :try_start_13
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v0, v6, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    move-wide/from16 v26, v0

    .local v26, "upstreamPos":J
    cmp-long v4, v4, v26

    if-nez v4, :cond_7f

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-boolean v4, v4, Lokhttp3/internal/cache2/Relay;->complete:Z

    if-eqz v4, :cond_2f

    const-wide/16 v8, -0x1

    monitor-exit v10

    .line 330
    :goto_2e
    return-wide v8

    .line 265
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v4, :cond_46

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4, v5}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_13

    .line 289
    .end local v26    # "upstreamPos":J
    :catchall_43
    move-exception v4

    monitor-exit v10
    :try_end_45
    .catchall {:try_start_13 .. :try_end_45} :catchall_43

    throw v4

    .line 271
    .restart local v26    # "upstreamPos":J
    :cond_46
    :try_start_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v4, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 272
    const/16 v24, 0x1

    .line 273
    .local v24, "source":I
    monitor-exit v10
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_43

    .line 292
    :goto_53
    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_c0

    .line 293
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v4, v26, v4

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 294
    .local v8, "bytesToRead":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    const-wide/16 v6, 0x20

    move-object/from16 v0, p0

    iget-wide v10, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v5, v6, v10

    move-object/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 295
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    goto :goto_2e

    .line 276
    .end local v8    # "bytesToRead":J
    .end local v24    # "source":I
    :cond_7f
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    sub-long v22, v26, v4

    .line 279
    .local v22, "bufferPos":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v4, v4, v22

    if-gez v4, :cond_97

    .line 280
    const/16 v24, 0x2

    .line 281
    .restart local v24    # "source":I
    monitor-exit v10

    goto :goto_53

    .line 285
    .end local v24    # "source":I
    :cond_97
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v4, v26, v4

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 286
    .restart local v8    # "bytesToRead":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v6, v6, v22

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 287
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 288
    monitor-exit v10
    :try_end_be
    .catchall {:try_start_7f .. :try_end_be} :catchall_43

    goto/16 :goto_2e

    .line 302
    .end local v8    # "bytesToRead":J
    .end local v22    # "bufferPos":J
    .restart local v24    # "source":I
    :cond_c0
    :try_start_c0
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v6, v6, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v20

    .line 305
    .local v20, "upstreamBytesRead":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_100

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_e5
    .catchall {:try_start_c0 .. :try_end_e5} :catchall_19e

    .line 307
    const-wide/16 v8, -0x1

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5

    .line 333
    :try_start_ec
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v6, 0x0

    iput-object v6, v4, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v5

    goto/16 :goto_2e

    :catchall_fd
    move-exception v4

    monitor-exit v5
    :try_end_ff
    .catchall {:try_start_ec .. :try_end_ff} :catchall_fd

    throw v4

    .line 311
    :cond_100
    :try_start_100
    move-wide/from16 v0, v20

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 312
    .local v14, "bytesRead":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v10, v4, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    const-wide/16 v12, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 313
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    move-object/from16 v16, v0

    const-wide/16 v4, 0x20

    add-long v17, v4, v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    .line 317
    invoke-virtual {v4}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v19

    .line 316
    invoke-virtual/range {v16 .. v21}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 319
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5
    :try_end_13a
    .catchall {:try_start_100 .. :try_end_13a} :catchall_19e

    .line 321
    :try_start_13a
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v6, v6, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v6, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v10, v4, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v4, v6, v10

    if-lez v4, :cond_179

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v6, v6, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v10, v10, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 327
    :cond_179
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v6, v4, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    add-long v6, v6, v20

    iput-wide v6, v4, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 328
    monitor-exit v5
    :try_end_184
    .catchall {:try_start_13a .. :try_end_184} :catchall_19b

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5

    .line 333
    :try_start_189
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v6, 0x0

    iput-object v6, v4, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v5
    :try_end_198
    .catchall {:try_start_189 .. :try_end_198} :catchall_1b4

    move-wide v8, v14

    .line 330
    goto/16 :goto_2e

    .line 328
    :catchall_19b
    move-exception v4

    :try_start_19c
    monitor-exit v5
    :try_end_19d
    .catchall {:try_start_19c .. :try_end_19d} :catchall_19b

    :try_start_19d
    throw v4
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_19e

    .line 332
    .end local v14    # "bytesRead":J
    .end local v20    # "upstreamBytesRead":J
    :catchall_19e
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5

    .line 333
    :try_start_1a4
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v7, 0x0

    iput-object v7, v6, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    move-object/from16 v0, p0

    iget-object v6, v0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v5
    :try_end_1b3
    .catchall {:try_start_1a4 .. :try_end_1b3} :catchall_1b7

    throw v4

    .restart local v14    # "bytesRead":J
    .restart local v20    # "upstreamBytesRead":J
    :catchall_1b4
    move-exception v4

    :try_start_1b5
    monitor-exit v5
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1b4

    throw v4

    .end local v14    # "bytesRead":J
    .end local v20    # "upstreamBytesRead":J
    :catchall_1b7
    move-exception v4

    :try_start_1b8
    monitor-exit v5
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    throw v4
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    return-object v0
.end method
