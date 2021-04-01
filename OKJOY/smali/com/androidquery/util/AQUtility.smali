.class public Lcom/androidquery/util/AQUtility;
.super Ljava/lang/Object;
.source "AQUtility.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x1000

.field public static TEST_IO_EXCEPTION:Z

.field private static cacheDir:Ljava/io/File;

.field private static context:Landroid/content/Context;

.field private static debug:Z

.field private static eh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static handler:Landroid/os/Handler;

.field private static final map1:[C

.field private static final map2:[B

.field private static pcacheDir:Ljava/io/File;

.field private static storeExe:Ljava/util/concurrent/ScheduledExecutorService;

.field private static times:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static wait:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x40

    const/4 v4, 0x0

    .line 61
    sput-boolean v4, Lcom/androidquery/util/AQUtility;->debug:Z

    .line 149
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    .line 392
    sput-boolean v4, Lcom/androidquery/util/AQUtility;->TEST_IO_EXCEPTION:Z

    .line 719
    new-array v3, v6, [C

    sput-object v3, Lcom/androidquery/util/AQUtility;->map1:[C

    .line 721
    const/4 v1, 0x0

    .line 722
    .local v1, "i":I
    const/16 v0, 0x41

    .local v0, "c":C
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_16
    const/16 v3, 0x5a

    if-le v0, v3, :cond_46

    .line 723
    const/16 v0, 0x61

    :goto_1c
    const/16 v3, 0x7a

    if-le v0, v3, :cond_51

    .line 724
    const/16 v0, 0x30

    :goto_22
    const/16 v3, 0x39

    if-le v0, v3, :cond_5c

    .line 725
    sget-object v3, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/16 v4, 0x2b

    aput-char v4, v3, v2

    sget-object v3, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const/16 v4, 0x2f

    aput-char v4, v3, v1

    .line 728
    const/16 v3, 0x80

    new-array v3, v3, [B

    sput-object v3, Lcom/androidquery/util/AQUtility;->map2:[B

    .line 730
    const/4 v1, 0x0

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_3d
    sget-object v3, Lcom/androidquery/util/AQUtility;->map2:[B

    array-length v3, v3

    if-lt v1, v3, :cond_67

    .line 731
    const/4 v1, 0x0

    :goto_43
    if-lt v1, v6, :cond_6f

    return-void

    .line 722
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_46
    sget-object v3, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_16

    .line 723
    :cond_51
    sget-object v3, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1c

    .line 724
    :cond_5c
    sget-object v3, Lcom/androidquery/util/AQUtility;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_22

    .line 730
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_67
    sget-object v3, Lcom/androidquery/util/AQUtility;->map2:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 731
    :cond_6f
    sget-object v3, Lcom/androidquery/util/AQUtility;->map2:[B

    sget-object v4, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v4, v4, v1

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_43
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 7
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    const/4 v4, 0x0

    .line 353
    sget v0, Lcom/androidquery/AQuery;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_11

    .line 354
    const-string v1, "apply"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :goto_10
    return-void

    .line 356
    :cond_11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_10
.end method

.method public static cleanCache(Ljava/io/File;JJ)V
    .registers 12
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "triggerSize"    # J
    .param p3, "targetSize"    # J

    .prologue
    .line 622
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 624
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_7

    .line 639
    .end local v1    # "files":[Ljava/io/File;
    :cond_6
    :goto_6
    return-void

    .line 626
    .restart local v1    # "files":[Ljava/io/File;
    :cond_7
    new-instance v3, Lcom/androidquery/util/Common;

    invoke-direct {v3}, Lcom/androidquery/util/Common;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 628
    invoke-static {v1, p1, p2}, Lcom/androidquery/util/AQUtility;->testCleanNeeded([Ljava/io/File;J)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 629
    invoke-static {v1, p3, p4}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V

    .line 632
    :cond_18
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v2

    .line 633
    .local v2, "temp":Ljava/io/File;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 634
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_6

    .line 636
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "temp":Ljava/io/File;
    :catch_2e
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static cleanCache([Ljava/io/File;J)V
    .registers 12
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "maxSize"    # J

    .prologue
    .line 667
    const-wide/16 v4, 0x0

    .line 668
    .local v4, "total":J
    const/4 v0, 0x0

    .line 670
    .local v0, "deletes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    array-length v3, p0

    if-lt v2, v3, :cond_11

    .line 689
    const-string v3, "deleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    return-void

    .line 672
    :cond_11
    aget-object v1, p0, v2

    .line 674
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 676
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 678
    cmp-long v3, v4, p1

    if-ltz v3, :cond_27

    .line 681
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 682
    add-int/lit8 v0, v0, 0x1

    .line 670
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public static cleanCacheAsync(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 597
    const-wide/32 v2, 0x2dc6c0

    .line 598
    .local v2, "triggerSize":J
    const-wide/32 v0, 0x1e8480

    .line 599
    .local v0, "targetSize":J
    invoke-static {p0, v2, v3, v0, v1}, Lcom/androidquery/util/AQUtility;->cleanCacheAsync(Landroid/content/Context;JJ)V

    .line 600
    return-void
.end method

.method public static cleanCacheAsync(Landroid/content/Context;JJ)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "triggerSize"    # J
    .param p3, "targetSize"    # J

    .prologue
    .line 605
    :try_start_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 607
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v4, Lcom/androidquery/util/Common;

    invoke-direct {v4}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/androidquery/util/Common;->method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;

    move-result-object v3

    .line 609
    .local v3, "task":Lcom/androidquery/util/Common;
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 611
    .local v2, "exe":Ljava/util/concurrent/ScheduledExecutorService;
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 616
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "exe":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v3    # "task":Lcom/androidquery/util/Common;
    :goto_2d
    return-void

    .line 613
    :catch_2e
    move-exception v1

    .line 614
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public static close(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 469
    if-eqz p0, :cond_5

    .line 470
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 474
    :cond_5
    :goto_5
    return-void

    .line 472
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V

    .line 390
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "max"    # I
    .param p3, "progress"    # Lcom/androidquery/util/Progress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    if-eqz p3, :cond_8

    .line 397
    invoke-virtual {p3}, Lcom/androidquery/util/Progress;->reset()V

    .line 398
    invoke-virtual {p3, p2}, Lcom/androidquery/util/Progress;->setBytes(I)V

    .line 401
    :cond_8
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 403
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 405
    .local v1, "count":I
    :cond_d
    :goto_d
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 420
    if-eqz p3, :cond_19

    .line 421
    invoke-virtual {p3}, Lcom/androidquery/util/Progress;->done()V

    .line 424
    :cond_19
    return-void

    .line 406
    :cond_1a
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 408
    add-int/lit8 v1, v1, 0x1

    .line 410
    sget-boolean v3, Lcom/androidquery/util/AQUtility;->TEST_IO_EXCEPTION:Z

    if-eqz v3, :cond_32

    const/4 v3, 0x2

    if-le v1, v3, :cond_32

    .line 411
    const-string v3, "simulating internet error"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 412
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 415
    :cond_32
    if-eqz p3, :cond_d

    .line 416
    invoke-virtual {p3, v2}, Lcom/androidquery/util/Progress;->increment(I)V

    goto :goto_d
.end method

.method public static debug(Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 103
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_16

    .line 104
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_16
    return-void
.end method

.method public static debug(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "msg2"    # Ljava/lang/Object;

    .prologue
    .line 113
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_20

    .line 114
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_20
    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    sget-boolean v1, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v1, :cond_d

    .line 120
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "trace":Ljava/lang/String;
    const-string v1, "AQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v0    # "trace":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public static debugNotify()V
    .registers 2

    .prologue
    .line 93
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    if-nez v0, :cond_9

    .line 99
    :cond_8
    :goto_8
    return-void

    .line 95
    :cond_9
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_c
    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 95
    monitor-exit v1

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method

.method public static debugWait(J)V
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 74
    sget-boolean v1, Lcom/androidquery/util/AQUtility;->debug:Z

    if-nez v1, :cond_5

    .line 87
    :goto_4
    return-void

    .line 76
    :cond_5
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    .line 78
    :cond_10
    sget-object v2, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    :try_start_13
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_1d
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    .line 78
    :goto_18
    :try_start_18
    monitor-exit v2

    goto :goto_4

    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v1

    .line 82
    :catch_1d
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1a

    goto :goto_18
.end method

.method public static dip2pixel(Landroid/content/Context;F)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # F

    .prologue
    .line 693
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 694
    .local v0, "value":I
    return v0
.end method

.method public static encode64([BII)[C
    .registers 20
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I

    .prologue
    .line 736
    mul-int/lit8 v15, p2, 0x4

    add-int/lit8 v15, v15, 0x2

    div-int/lit8 v10, v15, 0x3

    .line 737
    .local v10, "oDataLen":I
    add-int/lit8 v15, p2, 0x2

    div-int/lit8 v15, v15, 0x3

    mul-int/lit8 v11, v15, 0x4

    .line 738
    .local v11, "oLen":I
    new-array v14, v11, [C

    .line 739
    .local v14, "out":[C
    move/from16 v4, p1

    .line 740
    .local v4, "ip":I
    add-int v3, p1, p2

    .line 741
    .local v3, "iEnd":I
    const/4 v12, 0x0

    .local v12, "op":I
    move v13, v12

    .end local v12    # "op":I
    .local v13, "op":I
    move v5, v4

    .line 742
    .end local v4    # "ip":I
    .local v5, "ip":I
    :goto_15
    if-lt v5, v3, :cond_18

    .line 754
    return-object v14

    .line 743
    :cond_18
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ip":I
    .restart local v4    # "ip":I
    aget-byte v15, p0, v5

    and-int/lit16 v0, v15, 0xff

    .line 744
    .local v0, "i0":I
    if-ge v4, v3, :cond_69

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ip":I
    .restart local v5    # "ip":I
    aget-byte v15, p0, v4

    and-int/lit16 v1, v15, 0xff

    .line 745
    .local v1, "i1":I
    :goto_26
    if-ge v5, v3, :cond_6c

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ip":I
    .restart local v4    # "ip":I
    aget-byte v15, p0, v5

    and-int/lit16 v2, v15, 0xff

    .line 746
    .local v2, "i2":I
    :goto_2e
    ushr-int/lit8 v6, v0, 0x2

    .line 747
    .local v6, "o0":I
    and-int/lit8 v15, v0, 0x3

    shl-int/lit8 v15, v15, 0x4

    ushr-int/lit8 v16, v1, 0x4

    or-int v7, v15, v16

    .line 748
    .local v7, "o1":I
    and-int/lit8 v15, v1, 0xf

    shl-int/lit8 v15, v15, 0x2

    ushr-int/lit8 v16, v2, 0x6

    or-int v8, v15, v16

    .line 749
    .local v8, "o2":I
    and-int/lit8 v9, v2, 0x3f

    .line 750
    .local v9, "o3":I
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "op":I
    .restart local v12    # "op":I
    sget-object v15, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v13

    .line 751
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "op":I
    .restart local v13    # "op":I
    sget-object v15, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v15, v15, v7

    aput-char v15, v14, v12

    .line 752
    if-ge v13, v10, :cond_6f

    sget-object v15, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v15, v15, v8

    :goto_58
    aput-char v15, v14, v13

    add-int/lit8 v12, v13, 0x1

    .line 753
    .end local v13    # "op":I
    .restart local v12    # "op":I
    if-ge v12, v10, :cond_72

    sget-object v15, Lcom/androidquery/util/AQUtility;->map1:[C

    aget-char v15, v15, v9

    :goto_62
    aput-char v15, v14, v12

    add-int/lit8 v12, v12, 0x1

    move v13, v12

    .end local v12    # "op":I
    .restart local v13    # "op":I
    move v5, v4

    .end local v4    # "ip":I
    .restart local v5    # "ip":I
    goto :goto_15

    .line 744
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    .end local v5    # "ip":I
    .end local v6    # "o0":I
    .end local v7    # "o1":I
    .end local v8    # "o2":I
    .end local v9    # "o3":I
    .restart local v4    # "ip":I
    :cond_69
    const/4 v1, 0x0

    move v5, v4

    .end local v4    # "ip":I
    .restart local v5    # "ip":I
    goto :goto_26

    .line 745
    .restart local v1    # "i1":I
    :cond_6c
    const/4 v2, 0x0

    move v4, v5

    .end local v5    # "ip":I
    .restart local v4    # "ip":I
    goto :goto_2e

    .line 752
    .restart local v2    # "i2":I
    .restart local v6    # "o0":I
    .restart local v7    # "o1":I
    .restart local v8    # "o2":I
    .restart local v9    # "o3":I
    :cond_6f
    const/16 v15, 0x3d

    goto :goto_58

    .line 753
    .end local v13    # "op":I
    .restart local v12    # "op":I
    :cond_72
    const/16 v15, 0x3d

    goto :goto_62
.end method

.method public static ensureUIThread()V
    .registers 2

    .prologue
    .line 256
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_10

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 260
    :cond_10
    return-void
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 519
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_16

    .line 520
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aquery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    .line 521
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 524
    :cond_16
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static getCacheDir(Landroid/content/Context;I)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # I

    .prologue
    .line 502
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    .line 504
    sget-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    .line 512
    :goto_9
    return-object v1

    .line 506
    :cond_a
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 507
    .local v0, "cd":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "persistent"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    .line 508
    sget-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 510
    sget-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    goto :goto_9

    .line 512
    .end local v0    # "cd":Ljava/io/File;
    :cond_1f
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    goto :goto_9
.end method

.method public static getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 549
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 556
    :goto_3
    return-object v0

    .line 550
    :cond_4
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 551
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 554
    :cond_12
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/androidquery/util/AQUtility;->makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 556
    .local v0, "file":Ljava/io/File;
    goto :goto_3
.end method

.method private static getCacheFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 544
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getMD5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "hash":Ljava/lang/String;
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 711
    sget-object v0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 712
    const-string v0, "warn"

    const-string v1, "getContext with null"

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 713
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 715
    :cond_13
    sget-object v0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 562
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_17

    .line 563
    :cond_16
    const/4 v0, 0x0

    .line 565
    .end local v0    # "file":Ljava/io/File;
    :cond_17
    return-object v0
.end method

.method public static getExistedCacheByUrlSetAccess(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 569
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 570
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_9

    .line 571
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->lastAccess(Ljava/io/File;)V

    .line 573
    :cond_9
    return-object v0
.end method

.method private static getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .prologue
    .line 480
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_a

    .line 481
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    .line 484
    :cond_a
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 275
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 276
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    .line 278
    :cond_f
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getMD5([B)[B
    .registers 5
    .param p0, "data"    # [B

    .prologue
    .line 375
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 376
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 377
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    .line 383
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_d
    return-object v2

    .line 379
    :catch_e
    move-exception v1

    .line 380
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 383
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private static getMD5Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->getMD5([B)[B

    move-result-object v1

    .line 364
    .local v1, "data":[B
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 366
    .local v0, "bi":Ljava/math/BigInteger;
    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public static getTempDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 643
    .local v0, "ext":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "aquery/temp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 644
    .local v1, "tempDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 645
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 646
    :cond_1a
    const/4 v1, 0x0

    .line 648
    .end local v1    # "tempDir":Ljava/io/File;
    :cond_1b
    return-object v1
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "fallback"    # Z
    .param p3, "report"    # Z
    .param p4, "cls"    # [Ljava/lang/Class;
    .param p5, "cls2"    # [Ljava/lang/Class;
    .param p6, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    :try_start_6
    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    .line 190
    :goto_a
    return-object v0

    .line 184
    :catch_b
    move-exception v6

    .line 185
    .local v6, "e":Ljava/lang/Exception;
    if-eqz p3, :cond_13

    .line 186
    invoke-static {v6}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 190
    :goto_11
    const/4 v0, 0x0

    goto :goto_a

    .line 188
    :cond_13
    invoke-static {v6}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "fallback"    # Z
    .param p3, "report"    # Z
    .param p4, "cls"    # [Ljava/lang/Class;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 177
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "fallback"    # Z
    .param p3, "cls"    # [Ljava/lang/Class;
    .param p4, "cls2"    # [Ljava/lang/Class;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 199
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 227
    :cond_5
    :goto_5
    return-object v1

    .line 201
    :cond_6
    const/4 v0, 0x0

    .line 204
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez p3, :cond_c

    const/4 v2, 0x0

    :try_start_a
    new-array p3, v2, [Ljava/lang/Class;

    .line 205
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_5

    .line 207
    :catch_19
    move-exception v2

    .line 213
    if-eqz p2, :cond_5

    .line 215
    if-nez p4, :cond_31

    .line 216
    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 217
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 219
    :cond_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_3c} :catch_3e

    move-result-object v1

    goto :goto_5

    .line 224
    :catch_3e
    move-exception v2

    goto :goto_5
.end method

.method public static isDebug()Z
    .registers 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    return v0
.end method

.method public static isUIThread()Z
    .registers 5

    .prologue
    .line 264
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 265
    .local v2, "uiId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 267
    .local v0, "cId":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_1a

    const/4 v4, 0x1

    :goto_19
    return v4

    :cond_1a
    const/4 v4, 0x0

    goto :goto_19
.end method

.method private static lastAccess(Ljava/io/File;)V
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 578
    .local v0, "now":J
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 579
    return-void
.end method

.method private static makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 539
    .local v0, "result":Ljava/io/File;
    return-object v0
.end method

.method public static pixel2dip(Landroid/content/Context;F)F
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # F

    .prologue
    .line 698
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 699
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 700
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    div-float v0, p1, v3

    .line 701
    .local v0, "dp":F
    return v0
.end method

.method public static post(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 286
    new-array v0, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public static varargs post(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sig"    # [Ljava/lang/Class;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lcom/androidquery/util/AQUtility$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androidquery/util/AQUtility$1;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 282
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method public static postAsync(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 327
    new-array v0, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/androidquery/util/AQUtility;->postAsync(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method public static varargs postAsync(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sig"    # [Ljava/lang/Class;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/androidquery/util/AQUtility$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androidquery/util/AQUtility$3;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->postAsync(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method public static postAsync(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 304
    new-instance v0, Lcom/androidquery/util/AQUtility$2;

    invoke-direct {v0, p0}, Lcom/androidquery/util/AQUtility$2;-><init>(Ljava/lang/Runnable;)V

    .line 321
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .registers 4
    .param p0, "run"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 348
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    return-void
.end method

.method public static removePost(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 344
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public static report(Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    if-nez p0, :cond_3

    .line 142
    :cond_2
    :goto_2
    return-void

    .line 132
    :cond_3
    :try_start_3
    const-string v1, "reporting"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    sget-object v1, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_2

    .line 135
    sget-object v1, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_2

    .line 138
    :catch_1a
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static setAlpha(Landroid/view/View;F)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alphaValue"    # F

    .prologue
    .line 243
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_a

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 252
    :goto_9
    return-void

    .line 246
    :cond_a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 247
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 249
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_9
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 529
    sput-object p0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    .line 530
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 531
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 533
    :cond_b
    return-void
.end method

.method public static setContext(Landroid/app/Application;)V
    .registers 2
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    .line 708
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1
    .param p0, "debug"    # Z

    .prologue
    .line 65
    sput-boolean p0, Lcom/androidquery/util/AQUtility;->debug:Z

    .line 66
    return-void
.end method

.method public static setExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 146
    sput-object p0, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 147
    return-void
.end method

.method public static store(Ljava/io/File;[B)V
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    .line 585
    if-eqz p0, :cond_5

    .line 586
    :try_start_2
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->write(Ljava/io/File;[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 593
    :cond_5
    :goto_5
    return-void

    .line 588
    :catch_6
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public static storeAsync(Ljava/io/File;[BJ)V
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "delay"    # J

    .prologue
    const/4 v5, 0x1

    .line 490
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 492
    .local v0, "exe":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v2, Lcom/androidquery/util/Common;

    invoke-direct {v2}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {v2, v5, v3}, Lcom/androidquery/util/Common;->method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;

    move-result-object v1

    .line 493
    .local v1, "task":Lcom/androidquery/util/Common;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 495
    return-void
.end method

.method private static testCleanNeeded([Ljava/io/File;J)Z
    .registers 12
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "triggerSize"    # J

    .prologue
    const/4 v1, 0x0

    .line 653
    const-wide/16 v2, 0x0

    .line 655
    .local v2, "total":J
    array-length v5, p0

    move v4, v1

    :goto_5
    if-lt v4, v5, :cond_8

    .line 662
    :goto_7
    return v1

    .line 655
    :cond_8
    aget-object v0, p0, v4

    .line 656
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 657
    cmp-long v6, v2, p1

    if-lez v6, :cond_15

    .line 658
    const/4 v1, 0x1

    goto :goto_7

    .line 655
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method public static time(Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v0, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public static timeEnd(Ljava/lang/String;J)J
    .registers 14
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "threshold"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 159
    sget-object v5, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 160
    .local v4, "old":Ljava/lang/Long;
    if-nez v4, :cond_e

    move-wide v0, v6

    .line 170
    :cond_d
    :goto_d
    return-wide v0

    .line 162
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 164
    .local v2, "now":J
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v2, v8

    .line 166
    .local v0, "diff":J
    cmp-long v5, p1, v6

    if-eqz v5, :cond_20

    cmp-long v5, v0, p1

    if-lez v5, :cond_d

    .line 167
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static toBytes(Ljava/io/InputStream;)[B
    .registers 4
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 430
    .local v2, "result":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    invoke-static {p0, v0}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 434
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_11

    move-result-object v2

    .line 439
    :goto_d
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 442
    return-object v2

    .line 435
    :catch_11
    move-exception v1

    .line 436
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static transparent(Landroid/view/View;Z)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "transparent"    # Z

    .prologue
    .line 233
    const/high16 v0, 0x3f800000    # 1.0f

    .line 234
    .local v0, "alpha":F
    if-eqz p1, :cond_6

    const/high16 v0, 0x3f000000    # 0.5f

    .line 236
    :cond_6
    invoke-static {p0, v0}, Lcom/androidquery/util/AQUtility;->setAlpha(Landroid/view/View;F)V

    .line 238
    return-void
.end method

.method public static warn(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "msg2"    # Ljava/lang/Object;

    .prologue
    .line 109
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public static write(Ljava/io/File;[B)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    .line 449
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1f

    move-result v2

    if-nez v2, :cond_9

    .line 451
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_15

    .line 458
    :cond_9
    :goto_9
    :try_start_9
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 459
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 460
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 465
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_14
    return-void

    .line 452
    :catch_15
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "file create fail"

    invoke-static {v2, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 454
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_9

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v0

    .line 462
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_14
.end method
