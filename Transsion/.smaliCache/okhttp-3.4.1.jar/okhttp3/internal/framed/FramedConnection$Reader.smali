.class Lokhttp3/internal/framed/FramedConnection$Reader;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field final frameReader:Lokhttp3/internal/framed/FrameReader;

.field final synthetic this$0:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V
    .registers 6
    .param p1, "this$0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p2, "frameReader"    # Lokhttp3/internal/framed/FrameReader;

    .line 577
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    .line 578
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s"

    invoke-direct {p0, v1, v0}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iput-object p2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    .line 580
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V
    .registers 4
    .param p1, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p2, "x1"    # Lokhttp3/internal/framed/FrameReader;
    .param p3, "x2"    # Lokhttp3/internal/framed/FramedConnection$1;

    .line 574
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V

    return-void
.end method

.method private applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V
    .registers 7
    .param p1, "peerSettings"    # Lokhttp3/internal/framed/Settings;

    .line 732
    # getter for: Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/framed/FramedConnection$Reader$3;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;
    invoke-static {v3}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "OkHttp %s ACK Settings"

    invoke-direct {v1, p0, v3, v2, p1}, Lokhttp3/internal/framed/FramedConnection$Reader$3;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 740
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .registers 1

    .line 744
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .line 807
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .registers 8
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 608
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushDataLater(ILokio/BufferedSource;IZ)V
    invoke-static {v0, p2, p3, p4, p1}, Lokhttp3/internal/framed/FramedConnection;->access$1400(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V

    .line 609
    return-void

    .line 611
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->getStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 612
    .local v0, "dataStream":Lokhttp3/internal/framed/FramedStream;
    if-nez v0, :cond_22

    .line 613
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    .line 614
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lokio/BufferedSource;->skip(J)V

    .line 615
    return-void

    .line 617
    :cond_22
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/framed/FramedStream;->receiveData(Lokio/BufferedSource;I)V

    .line 618
    if-eqz p1, :cond_2a

    .line 619
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->receiveFin()V

    .line 621
    :cond_2a
    return-void
.end method

.method protected execute()V
    .registers 5

    .line 583
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 584
    .local v0, "connectionErrorCode":Lokhttp3/internal/framed/ErrorCode;
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    .line 586
    .local v1, "streamErrorCode":Lokhttp3/internal/framed/ErrorCode;
    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v2, v2, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-nez v2, :cond_f

    .line 587
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v2}, Lokhttp3/internal/framed/FrameReader;->readConnectionPreface()V

    .line 589
    :cond_f
    :goto_f
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lokhttp3/internal/framed/FrameReader;->nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_f

    .line 591
    :cond_18
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    move-object v0, v2

    .line 592
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1d} :catch_28
    .catchall {:try_start_4 .. :try_end_1d} :catchall_26

    move-object v1, v2

    .line 598
    :try_start_1e
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    invoke-static {v2, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_34

    .line 599
    :catch_24
    move-exception v2

    goto :goto_36

    .line 597
    :catchall_26
    move-exception v2

    goto :goto_3d

    .line 593
    :catch_28
    move-exception v2

    .line 594
    .local v2, "e":Ljava/io/IOException;
    :try_start_29
    sget-object v3, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    move-object v0, v3

    .line 595
    sget-object v3, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    move-object v1, v3

    .line 598
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_2f
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    invoke-static {v2, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_35

    .line 600
    :goto_34
    goto :goto_36

    .line 599
    :catch_35
    move-exception v2

    .line 601
    :goto_36
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 602
    nop

    .line 603
    return-void

    .line 598
    :goto_3d
    :try_start_3d
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    invoke-static {v3, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    .line 600
    goto :goto_44

    .line 599
    :catch_43
    move-exception v3

    .line 601
    :goto_44
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->frameReader:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4b

    :goto_4a
    throw v2

    :goto_4b
    goto :goto_4a
.end method

.method public goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .line 759
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 764
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v0

    .line 765
    :try_start_6
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/internal/framed/FramedStream;

    .line 766
    .local v1, "streamsCopy":[Lokhttp3/internal/framed/FramedStream;
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    const/4 v3, 0x1

    # setter for: Lokhttp3/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v2, v3}, Lokhttp3/internal/framed/FramedConnection;->access$1602(Lokhttp3/internal/framed/FramedConnection;Z)Z

    .line 767
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_4d

    .line 770
    array-length v0, v1

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v0, :cond_4c

    aget-object v3, v1, v2

    .line 771
    .local v3, "framedStream":Lokhttp3/internal/framed/FramedStream;
    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->getId()I

    move-result v4

    if-le v4, p1, :cond_49

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 772
    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/FramedStream;->receiveRstStream(Lokhttp3/internal/framed/ErrorCode;)V

    .line 773
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    .line 770
    .end local v3    # "framedStream":Lokhttp3/internal/framed/FramedStream;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 776
    :cond_4c
    return-void

    .line 767
    .end local v1    # "streamsCopy":[Lokhttp3/internal/framed/FramedStream;
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    goto :goto_51

    :goto_50
    throw v1

    :goto_51
    goto :goto_50
.end method

.method public headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .registers 21
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lokhttp3/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 625
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    move-object v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p5

    iget-object v0, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, v9}, Lokhttp3/internal/framed/FramedConnection;->access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 626
    iget-object v0, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V
    invoke-static {v0, v9, v10, v8}, Lokhttp3/internal/framed/FramedConnection;->access$1500(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V

    .line 627
    return-void

    .line 630
    :cond_15
    iget-object v11, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v11

    .line 632
    :try_start_18
    iget-object v0, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->access$1600(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v0

    if-eqz v0, :cond_22

    monitor-exit v11

    return-void

    .line 634
    :cond_22
    iget-object v0, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, v9}, Lokhttp3/internal/framed/FramedConnection;->getStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 636
    .local v0, "stream":Lokhttp3/internal/framed/FramedStream;
    if-nez v0, :cond_95

    .line 638
    invoke-virtual/range {p6 .. p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 639
    iget-object v2, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    sget-object v3, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v2, v9, v3}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    .line 640
    monitor-exit v11

    return-void

    .line 644
    :cond_39
    iget-object v2, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->access$1700(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v2

    if-gt v9, v2, :cond_43

    monitor-exit v11

    return-void

    .line 647
    :cond_43
    rem-int/lit8 v2, v9, 0x2

    iget-object v3, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I
    invoke-static {v3}, Lokhttp3/internal/framed/FramedConnection;->access$1800(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v3

    const/4 v12, 0x2

    rem-int/2addr v3, v12

    if-ne v2, v3, :cond_51

    monitor-exit v11

    return-void

    .line 651
    :cond_51
    new-instance v13, Lokhttp3/internal/framed/FramedStream;

    iget-object v4, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    move-object v2, v13

    move/from16 v3, p3

    move v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    move-object v2, v13

    .line 653
    .local v2, "newStream":Lokhttp3/internal/framed/FramedStream;
    iget-object v3, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # setter for: Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {v3, v9}, Lokhttp3/internal/framed/FramedConnection;->access$1702(Lokhttp3/internal/framed/FramedConnection;I)I

    .line 654
    iget-object v3, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v3}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    # getter for: Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lokhttp3/internal/framed/FramedConnection$Reader$1;

    const-string v5, "OkHttp %s stream %d"

    new-array v6, v12, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v12, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;
    invoke-static {v12}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v7

    invoke-direct {v4, p0, v5, v6, v2}, Lokhttp3/internal/framed/FramedConnection$Reader$1;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/FramedStream;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 668
    monitor-exit v11

    return-void

    .line 670
    .end local v2    # "newStream":Lokhttp3/internal/framed/FramedStream;
    :cond_95
    monitor-exit v11
    :try_end_96
    .catchall {:try_start_18 .. :try_end_96} :catchall_b2

    .line 673
    invoke-virtual/range {p6 .. p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 674
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v2}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    .line 675
    iget-object v2, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v2, v9}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    .line 676
    return-void

    .line 680
    :cond_a7
    move-object/from16 v2, p6

    invoke-virtual {v0, v10, v2}, Lokhttp3/internal/framed/FramedStream;->receiveHeaders(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 681
    if-eqz v8, :cond_b1

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->receiveFin()V

    .line 682
    :cond_b1
    return-void

    .line 670
    .end local v0    # "stream":Lokhttp3/internal/framed/FramedStream;
    :catchall_b2
    move-exception v0

    move-object/from16 v2, p6

    :goto_b5
    :try_start_b5
    monitor-exit v11
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b7

    throw v0

    :catchall_b7
    move-exception v0

    goto :goto_b5
.end method

.method public ping(ZII)V
    .registers 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 747
    if-eqz p1, :cond_e

    .line 748
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->removePing(I)Lokhttp3/internal/framed/Ping;
    invoke-static {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->access$2400(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;

    move-result-object v0

    .line 749
    .local v0, "ping":Lokhttp3/internal/framed/Ping;
    if-eqz v0, :cond_d

    .line 750
    invoke-virtual {v0}, Lokhttp3/internal/framed/Ping;->receive()V

    .line 752
    .end local v0    # "ping":Lokhttp3/internal/framed/Ping;
    :cond_d
    goto :goto_15

    .line 754
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lokhttp3/internal/framed/FramedConnection;->writePingLater(ZIILokhttp3/internal/framed/Ping;)V
    invoke-static {v0, v1, p2, p3, v2}, Lokhttp3/internal/framed/FramedConnection;->access$2500(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V

    .line 756
    :goto_15
    return-void
.end method

.method public priority(IIIZ)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 797
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 801
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V
    invoke-static {v0, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->access$2600(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V

    .line 802
    return-void
.end method

.method public rstStream(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .line 685
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 686
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # invokes: Lokhttp3/internal/framed/FramedConnection;->pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    invoke-static {v0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->access$2200(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V

    .line 687
    return-void

    .line 689
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 690
    .local v0, "rstStream":Lokhttp3/internal/framed/FramedStream;
    if-eqz v0, :cond_19

    .line 691
    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/FramedStream;->receiveRstStream(Lokhttp3/internal/framed/ErrorCode;)V

    .line 693
    :cond_19
    return-void
.end method

.method public settings(ZLokhttp3/internal/framed/Settings;)V
    .registers 15
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lokhttp3/internal/framed/Settings;

    .line 696
    const-wide/16 v0, 0x0

    .line 697
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 698
    .local v2, "streamsToNotify":[Lokhttp3/internal/framed/FramedStream;
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v3

    .line 699
    :try_start_6
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v4, v4, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v4

    .line 700
    .local v4, "priorWriteWindowSize":I
    if-eqz p1, :cond_19

    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v6, v6, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v6}, Lokhttp3/internal/framed/Settings;->clear()V

    .line 701
    :cond_19
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v6, v6, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v6, p2}, Lokhttp3/internal/framed/Settings;->merge(Lokhttp3/internal/framed/Settings;)V

    .line 702
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v6}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v6

    sget-object v7, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v6, v7, :cond_2d

    .line 703
    invoke-direct {p0, p2}, Lokhttp3/internal/framed/FramedConnection$Reader;->applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V

    .line 705
    :cond_2d
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v6, v6, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v6, v5}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v5

    .line 706
    .local v5, "peerInitialWindowSize":I
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_79

    if-eq v5, v4, :cond_79

    .line 707
    sub-int v6, v5, v4

    int-to-long v0, v6

    .line 708
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v6}, Lokhttp3/internal/framed/FramedConnection;->access$2300(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 709
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v6, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->addBytesToWriteWindow(J)V

    .line 710
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # setter for: Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v6, v7}, Lokhttp3/internal/framed/FramedConnection;->access$2302(Lokhttp3/internal/framed/FramedConnection;Z)Z

    .line 712
    :cond_50
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v6}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_79

    .line 713
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v6}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v8}, Lokhttp3/internal/framed/FramedConnection;->access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lokhttp3/internal/framed/FramedStream;

    move-object v2, v6

    .line 716
    :cond_79
    # getter for: Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v8, Lokhttp3/internal/framed/FramedConnection$Reader$2;

    const-string v9, "OkHttp %s settings"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;
    invoke-static {v10}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    invoke-direct {v8, p0, v9, v7}, Lokhttp3/internal/framed/FramedConnection$Reader$2;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 721
    .end local v4    # "priorWriteWindowSize":I
    .end local v5    # "peerInitialWindowSize":I
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_6 .. :try_end_93} :catchall_ac

    .line 722
    if-eqz v2, :cond_ab

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_ab

    .line 723
    array-length v3, v2

    :goto_9c
    if-ge v11, v3, :cond_ab

    aget-object v4, v2, v11

    .line 724
    .local v4, "stream":Lokhttp3/internal/framed/FramedStream;
    monitor-enter v4

    .line 725
    :try_start_a1
    invoke-virtual {v4, v0, v1}, Lokhttp3/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 726
    monitor-exit v4

    .line 723
    .end local v4    # "stream":Lokhttp3/internal/framed/FramedStream;
    add-int/lit8 v11, v11, 0x1

    goto :goto_9c

    .line 726
    .restart local v4    # "stream":Lokhttp3/internal/framed/FramedStream;
    :catchall_a8
    move-exception v3

    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_a8

    throw v3

    .line 729
    .end local v4    # "stream":Lokhttp3/internal/framed/FramedStream;
    :cond_ab
    return-void

    .line 721
    :catchall_ac
    move-exception v4

    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    goto :goto_b0

    :goto_af
    throw v4

    :goto_b0
    goto :goto_af
.end method

.method public windowUpdate(IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .line 779
    if-nez p1, :cond_16

    .line 780
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v0

    .line 781
    :try_start_5
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-wide v2, v1, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 782
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 783
    monitor-exit v0

    goto :goto_27

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1

    .line 785
    :cond_16
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->getStream(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 786
    .local v0, "stream":Lokhttp3/internal/framed/FramedStream;
    if-eqz v0, :cond_27

    .line 787
    monitor-enter v0

    .line 788
    :try_start_1f
    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 789
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v1

    .line 792
    .end local v0    # "stream":Lokhttp3/internal/framed/FramedStream;
    :cond_27
    :goto_27
    return-void
.end method
