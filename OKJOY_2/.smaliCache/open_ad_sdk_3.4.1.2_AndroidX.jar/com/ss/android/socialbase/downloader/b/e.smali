.class public Lcom/ss/android/socialbase/downloader/b/e;
.super Lcom/ss/android/socialbase/downloader/b/c$a;
.source "SqlDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/r;


# static fields
.field private static volatile b:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field a:Lcom/ss/android/socialbase/downloader/b/b;

.field private c:Lcom/ss/android/socialbase/downloader/b/g;

.field private d:Lcom/ss/android/socialbase/downloader/b/g;

.field private e:Lcom/ss/android/socialbase/downloader/b/g;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/b/e;-><init>(Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 56
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/c$a;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->a:Lcom/ss/android/socialbase/downloader/b/b;

    .line 57
    if-nez p1, :cond_9

    .line 58
    return-void

    .line 60
    :cond_9
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/b/e;->f:Z

    .line 61
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/b/e;->a()V

    .line 62
    return-void
.end method

.method private a(IIIILandroid/database/sqlite/SQLiteStatement;)V
    .registers 11

    .line 583
    :try_start_0
    monitor-enter p5
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_35

    .line 584
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 585
    const-string v1, "chunkIndex"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    sget-object p4, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadChunk"

    const-string v2, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 588
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    .line 586
    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 589
    monitor-exit p5

    .line 592
    goto :goto_39

    .line 589
    :catchall_32
    move-exception p1

    monitor-exit p5
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    :try_start_34
    throw p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 590
    :catchall_35
    move-exception p1

    .line 591
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 593
    :goto_39
    return-void
.end method

.method private a(IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .registers 11

    .line 611
    :try_start_0
    monitor-enter p6
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_35

    .line 612
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 613
    const-string v1, "curOffset"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 614
    sget-object p4, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p5, "downloadChunk"

    const-string v1, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 614
    invoke-virtual {p4, p5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 617
    monitor-exit p6

    .line 620
    goto :goto_39

    .line 617
    :catchall_32
    move-exception p1

    monitor-exit p6
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    :try_start_34
    throw p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 618
    :catchall_35
    move-exception p1

    .line 619
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 621
    :goto_39
    return-void
.end method

.method private a(IIJLandroid/database/sqlite/SQLiteStatement;)V
    .registers 10

    .line 597
    :try_start_0
    monitor-enter p5
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_2e

    .line 598
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 599
    const-string v1, "curOffset"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 600
    sget-object p3, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p4, "downloadChunk"

    const-string v1, "_id = ? AND chunkIndex = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 602
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 600
    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    monitor-exit p5

    .line 606
    goto :goto_32

    .line 603
    :catchall_2b
    move-exception p1

    monitor-exit p5
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 604
    :catchall_2e
    move-exception p1

    .line 605
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 607
    :goto_32
    return-void
.end method

.method private a(ILandroid/content/ContentValues;)V
    .registers 4

    .line 1010
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 1011
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    .line 1012
    return-void

    .line 1014
    :cond_8
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e$3;-><init>(Lcom/ss/android/socialbase/downloader/b/e;ILandroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 1021
    return-void
.end method

.method private a(ILandroid/database/sqlite/SQLiteStatement;)V
    .registers 6

    .line 458
    if-nez p2, :cond_3

    .line 459
    return-void

    .line 461
    :cond_3
    :try_start_3
    monitor-enter p2
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_11

    .line 462
    const/4 v0, 0x1

    int-to-long v1, p1

    :try_start_6
    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 463
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 464
    monitor-exit p2

    .line 467
    goto :goto_15

    .line 464
    :catchall_e
    move-exception p1

    monitor-exit p2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    :try_start_10
    throw p1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    .line 465
    :catchall_11
    move-exception p1

    .line 466
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 468
    :goto_15
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;IIIILandroid/database/sqlite/SQLiteStatement;)V
    .registers 6

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/b/e;->a(IIIILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .registers 7

    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/socialbase/downloader/b/e;->a(IIIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;IIJLandroid/database/sqlite/SQLiteStatement;)V
    .registers 6

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/b/e;->a(IIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;ILandroid/content/ContentValues;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e;->b(ILandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;ILandroid/database/sqlite/SQLiteStatement;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/b;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/b;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/b/e;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 3

    .line 495
    if-eqz p1, :cond_16

    if-nez p2, :cond_5

    goto :goto_16

    .line 498
    :cond_5
    :try_start_5
    monitor-enter p2
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_11

    .line 499
    :try_start_6
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValue(Landroid/database/sqlite/SQLiteStatement;)V

    .line 500
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 501
    monitor-exit p2

    .line 504
    goto :goto_15

    .line 501
    :catchall_e
    move-exception p1

    monitor-exit p2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    :try_start_10
    throw p1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    .line 502
    :catchall_11
    move-exception p1

    .line 503
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 506
    :goto_15
    return-void

    .line 496
    :cond_16
    :goto_16
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/b;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 3

    .line 509
    if-eqz p1, :cond_16

    if-nez p2, :cond_5

    goto :goto_16

    .line 512
    :cond_5
    :try_start_5
    monitor-enter p2
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_11

    .line 513
    :try_start_6
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/b;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 514
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 515
    monitor-exit p2

    .line 518
    goto :goto_15

    .line 515
    :catchall_e
    move-exception p1

    monitor-exit p2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    :try_start_10
    throw p1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    .line 516
    :catchall_11
    move-exception p1

    .line 517
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 519
    :goto_15
    return-void

    .line 510
    :cond_16
    :goto_16
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 254
    if-nez p1, :cond_3

    .line 255
    return-void

    .line 258
    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 259
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 260
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 262
    :cond_1e
    goto :goto_7

    .line 264
    :cond_1f
    goto :goto_21

    .line 263
    :catchall_20
    move-exception p1

    .line 265
    :goto_21
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;)V"
        }
    .end annotation

    .line 275
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 276
    if-ltz v4, :cond_168

    sget-object v5, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_14

    goto/16 :goto_168

    .line 278
    :cond_14
    sget-object v5, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v5

    .line 280
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 281
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_aa

    .line 282
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v6

    const-string v9, "clear_invalid_task_error"

    invoke-virtual {v6, v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v6

    .line 283
    if-eqz v6, :cond_88

    .line 284
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 285
    move v9, v7

    :goto_35
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4a

    .line 286
    move-object/from16 v10, p1

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    .line 285
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    .line 288
    :cond_4a
    move-object/from16 v10, p1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CAST(_id AS TEXT) IN ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    new-array v10, v10, [C

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V

    const-string v10, "\u0000"

    const-string v12, "?,"

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 289
    sget-object v10, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "downloader"

    invoke-virtual {v10, v11, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    sget-object v10, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "downloadChunk"

    invoke-virtual {v10, v11, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    goto :goto_aa

    .line 292
    :cond_88
    const-string v6, ", "

    move-object/from16 v9, p2

    invoke-static {v6, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 293
    sget-object v9, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "downloader"

    const-string v11, "_id IN (?)"

    new-array v12, v8, [Ljava/lang/String;

    aput-object v6, v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    sget-object v9, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "downloadChunk"

    const-string v11, "_id IN (?)"

    new-array v12, v8, [Ljava/lang/String;

    aput-object v6, v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    :cond_aa
    :goto_aa
    move v6, v7

    :goto_ab
    if-ge v6, v4, :cond_11d

    .line 299
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 300
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 301
    sget-object v11, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "downloader"

    const-string v13, "_id = ?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-virtual {v11, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    sget-object v11, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "downloader"

    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->toContentValues()Landroid/content/ContentValues;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 304
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v11

    if-le v11, v8, :cond_11a

    .line 305
    invoke-virtual {v1, v9}, Lcom/ss/android/socialbase/downloader/b/e;->c(I)Ljava/util/List;

    move-result-object v11

    .line 306
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_e5

    .line 307
    goto :goto_11a

    .line 309
    :cond_e5
    sget-object v12, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "downloadChunk"

    const-string v15, "_id = ?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v7

    invoke-virtual {v12, v13, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_fa
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/socialbase/downloader/model/b;

    .line 311
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/ss/android/socialbase/downloader/model/b;->b(I)V

    .line 312
    sget-object v12, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "downloadChunk"

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->a()Landroid/content/ContentValues;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 313
    goto :goto_fa

    .line 298
    :cond_11a
    :goto_11a
    add-int/lit8 v6, v6, 0x1

    goto :goto_ab

    .line 317
    :cond_11d
    if-eqz v2, :cond_14e

    if-eqz v3, :cond_14e

    .line 318
    monitor-enter p4
    :try_end_122
    .catchall {:try_start_17 .. :try_end_122} :catchall_154

    .line 319
    :try_start_122
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 320
    nop

    :goto_127
    if-ge v7, v0, :cond_149

    .line 321
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    .line 322
    invoke-virtual {v1, v4}, Lcom/ss/android/socialbase/downloader/b/e;->c(I)Ljava/util/List;

    move-result-object v6

    .line 323
    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 325
    if-eqz v6, :cond_146

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_146

    .line 326
    invoke-virtual {v3, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    :cond_146
    add-int/lit8 v7, v7, 0x1

    goto :goto_127

    .line 329
    :cond_149
    monitor-exit p4

    goto :goto_14e

    :catchall_14b
    move-exception v0

    monitor-exit p4
    :try_end_14d
    .catchall {:try_start_122 .. :try_end_14d} :catchall_14b

    :try_start_14d
    throw v0

    .line 332
    :cond_14e
    :goto_14e
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_153
    .catchall {:try_start_14d .. :try_end_153} :catchall_154

    goto :goto_158

    .line 333
    :catchall_154
    move-exception v0

    .line 334
    :try_start_155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_158
    .catchall {:try_start_155 .. :try_end_158} :catchall_160

    .line 336
    :goto_158
    :try_start_158
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/b/e;->i()V

    .line 337
    nop

    .line 338
    monitor-exit v5

    .line 339
    return-void

    .line 338
    :catchall_15e
    move-exception v0

    goto :goto_166

    .line 336
    :catchall_160
    move-exception v0

    move-object v2, v0

    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/b/e;->i()V

    throw v2

    .line 338
    :goto_166
    monitor-exit v5
    :try_end_167
    .catchall {:try_start_158 .. :try_end_167} :catchall_15e

    throw v0

    .line 276
    :cond_168
    :goto_168
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/b/e;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/b/e;)Lcom/ss/android/socialbase/downloader/b/g;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    return-object p0
.end method

.method private b(ILandroid/content/ContentValues;)V
    .registers 8

    .line 1024
    const/16 v0, 0xa

    .line 1026
    :goto_2
    :try_start_2
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_32

    if-eqz v1, :cond_19

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    .line 1028
    const-wide/16 v1, 0x5

    :try_start_10
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 1031
    :goto_13
    goto :goto_2

    .line 1029
    :catchall_14
    move-exception v1

    .line 1030
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_32

    goto :goto_13

    .line 1034
    :cond_19
    :try_start_19
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_2d

    .line 1037
    goto :goto_31

    .line 1035
    :catchall_2d
    move-exception p1

    .line 1036
    :try_start_2e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    .line 1040
    :goto_31
    goto :goto_36

    .line 1038
    :catchall_32
    move-exception p1

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1041
    :goto_36
    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 6

    .line 624
    if-eqz p1, :cond_24

    if-nez p2, :cond_5

    goto :goto_24

    .line 627
    :cond_5
    :try_start_5
    monitor-enter p2
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_1f

    .line 628
    :try_start_6
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValue(Landroid/database/sqlite/SQLiteStatement;)V

    .line 629
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBindValueCount()I

    move-result v0

    .line 630
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 631
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 632
    monitor-exit p2

    .line 635
    goto :goto_23

    .line 632
    :catchall_1c
    move-exception p1

    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 633
    :catchall_1f
    move-exception p1

    .line 634
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 636
    :goto_23
    return-void

    .line 625
    :cond_24
    :goto_24
    return-void
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/b/e;)Lcom/ss/android/socialbase/downloader/b/g;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;

    return-object p0
.end method

.method private c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 667
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 668
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_c

    goto :goto_15

    .line 671
    :cond_c
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$9;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$9;-><init>(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 682
    return-void

    .line 669
    :cond_15
    :goto_15
    return-void
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/b/e;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->j()V

    return-void
.end method

.method private declared-synchronized d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    monitor-enter p0

    .line 701
    if-nez p1, :cond_5

    .line 702
    monitor-exit p0

    return-void

    .line 705
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(I)Z

    move-result v0

    .line 706
    if-nez v0, :cond_13

    .line 707
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_25

    .line 709
    :cond_13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_26

    if-nez v0, :cond_19

    .line 710
    monitor-exit p0

    return-void

    .line 712
    :cond_19
    :try_start_19
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    .line 715
    goto :goto_25

    .line 713
    :catchall_21
    move-exception p1

    .line 714
    :try_start_22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    .line 719
    :goto_25
    goto :goto_2a

    .line 717
    :catchall_26
    move-exception p1

    .line 718
    :try_start_27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2c

    .line 720
    :goto_2a
    monitor-exit p0

    return-void

    .line 700
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic f()Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    .line 40
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private g()V
    .registers 7

    .line 70
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4c

    .line 71
    const-class v0, Lcom/ss/android/socialbase/downloader/b/e;

    monitor-enter v0

    .line 72
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_49

    if-nez v1, :cond_47

    .line 76
    :try_start_b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/a;->a()Lcom/ss/android/socialbase/downloader/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    new-instance v1, Lcom/ss/android/socialbase/downloader/b/g;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloader"

    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/c;->a:[Ljava/lang/String;

    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/c;->b:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;

    .line 81
    new-instance v1, Lcom/ss/android/socialbase/downloader/b/g;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloadChunk"

    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/c;->c:[Ljava/lang/String;

    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/c;->d:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    .line 85
    new-instance v1, Lcom/ss/android/socialbase/downloader/b/g;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "segments"

    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/c;->e:[Ljava/lang/String;

    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/c;->f:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e;->e:Lcom/ss/android/socialbase/downloader/b/g;
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    .line 90
    goto :goto_47

    .line 88
    :catchall_43
    move-exception v1

    .line 89
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    :cond_47
    :goto_47
    monitor-exit v0

    goto :goto_4c

    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_49

    throw v1

    .line 94
    :cond_4c
    :goto_4c
    return-void
.end method

.method private h()V
    .registers 2

    .line 271
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 272
    return-void
.end method

.method private i()V
    .registers 2

    .line 724
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 725
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 728
    :cond_11
    goto :goto_16

    .line 726
    :catchall_12
    move-exception v0

    .line 727
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 729
    :goto_16
    return-void
.end method

.method private declared-synchronized j()V
    .registers 4

    monitor-enter p0

    .line 775
    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 776
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 777
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadChunk"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 778
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_1d

    .line 779
    :catchall_19
    move-exception v0

    .line 780
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_25

    .line 782
    :goto_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->i()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_23

    .line 783
    nop

    .line 784
    monitor-exit p0

    return-void

    .line 774
    :catchall_23
    move-exception v0

    goto :goto_2a

    .line 782
    :catchall_25
    move-exception v0

    :try_start_26
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->i()V

    throw v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_23

    .line 774
    :goto_2a
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 9

    .line 641
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 642
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 643
    return-object v1

    .line 645
    :cond_9
    const/16 v0, 0xa

    .line 647
    :goto_b
    :try_start_b
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_44

    if-eqz v2, :cond_22

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_22

    .line 649
    const-wide/16 v2, 0x5

    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 652
    :goto_1c
    goto :goto_b

    .line 650
    :catchall_1d
    move-exception v2

    .line 651
    :try_start_1e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c

    .line 654
    :cond_22
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 655
    const-string v2, "chunkCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    sget-object p2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "downloader"

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 657
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    .line 656
    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_44

    .line 660
    goto :goto_48

    .line 658
    :catchall_44
    move-exception p1

    .line 659
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 663
    :goto_48
    return-object v1
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7

    .line 800
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 801
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 803
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    .line 804
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 9

    .line 788
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 789
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "totalBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 791
    const-string p2, "eTag"

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_28

    .line 793
    const-string p2, "name"

    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_28
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    .line 795
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_55

    .line 380
    const/4 v1, 0x0

    .line 382
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_f
    sget-object v4, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM %s WHERE %s = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "downloader"

    aput-object v7, v6, v2

    const-string v7, "url"

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 385
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 386
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_40

    .line 391
    :cond_38
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    goto :goto_4b

    .line 388
    :catchall_40
    move-exception p1

    .line 389
    :try_start_41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4c

    .line 391
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 393
    :goto_4b
    goto :goto_55

    .line 391
    :catchall_4c
    move-exception p1

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw p1

    .line 395
    :cond_55
    :goto_55
    return-object v0
.end method

.method public a()V
    .registers 2

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V

    .line 99
    return-void
.end method

.method public a(IIII)V
    .registers 12

    .line 563
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 564
    if-eqz p1, :cond_23

    if-ltz p3, :cond_23

    if-eq p4, p2, :cond_23

    if-ltz p4, :cond_23

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_14

    goto :goto_23

    .line 567
    :cond_14
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$8;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/b/e$8;-><init>(Lcom/ss/android/socialbase/downloader/b/e;IIII)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 579
    return-void

    .line 565
    :cond_23
    :goto_23
    return-void
.end method

.method public a(IIIJ)V
    .registers 14

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 544
    if-eqz p1, :cond_27

    if-ltz p2, :cond_27

    if-ltz p3, :cond_27

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_27

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_18

    goto :goto_27

    .line 547
    :cond_18
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$7;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/b/e$7;-><init>(Lcom/ss/android/socialbase/downloader/b/e;IIIJ)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 559
    return-void

    .line 545
    :cond_27
    :goto_27
    return-void
.end method

.method public a(IIJ)V
    .registers 12

    .line 523
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 524
    if-eqz p1, :cond_24

    if-ltz p2, :cond_24

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_24

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_16

    goto :goto_24

    .line 527
    :cond_16
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$6;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/b/e$6;-><init>(Lcom/ss/android/socialbase/downloader/b/e;IIJ)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 539
    return-void

    .line 525
    :cond_24
    :goto_24
    return-void
.end method

.method public a(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 890
    return-void
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;)V"
        }
    .end annotation

    .line 1049
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Landroid/util/SparseArray;)Ljava/util/HashMap;

    move-result-object p1

    .line 1050
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Landroid/util/SparseArray;)Ljava/util/HashMap;

    move-result-object p2

    .line 1051
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->a:Lcom/ss/android/socialbase/downloader/b/b;

    if-eqz v0, :cond_f

    .line 1052
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/b;->a(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 1055
    :cond_f
    goto :goto_11

    .line 1054
    :catchall_10
    move-exception p1

    .line 1056
    :goto_11
    return-void
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;",
            "Lcom/ss/android/socialbase/downloader/b/d;",
            ")V"
        }
    .end annotation

    .line 104
    :try_start_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/e$1;-><init>(Lcom/ss/android/socialbase/downloader/b/e;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V

    .line 240
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->r()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 241
    if-eqz p1, :cond_e

    .line 242
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    .line 247
    :cond_e
    goto :goto_13

    .line 245
    :catchall_f
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    :goto_13
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/b;)V
    .registers 2

    .line 1044
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e;->a:Lcom/ss/android/socialbase/downloader/b/b;

    .line 1045
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 3

    .line 472
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 473
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_c

    goto :goto_15

    .line 476
    :cond_c
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$5;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$5;-><init>(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/b;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 487
    return-void

    .line 474
    :cond_15
    :goto_15
    return-void
.end method

.method public a(I)Z
    .registers 3

    .line 345
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    .line 346
    :catchall_9
    move-exception p1

    .line 347
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 349
    return v0
.end method

.method public a(ILjava/util/Map;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)Z"
        }
    .end annotation

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 959
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 960
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 961
    return v3

    .line 963
    :cond_d
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 965
    :try_start_12
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 966
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/socialbase/downloader/f/i;

    .line 967
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/f/i;->k()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_3d

    .line 968
    goto :goto_1a

    .line 971
    :cond_3c
    goto :goto_41

    .line 969
    :catchall_3d
    move-exception p2

    .line 970
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 972
    :goto_41
    const-string p2, "SqlDownloadCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/b/e;->e:Lcom/ss/android/socialbase/downloader/b/g;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/b/g;->d()Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    .line 986
    monitor-enter p2

    .line 987
    :try_start_60
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 988
    const/4 v4, 0x1

    int-to-long v5, p1

    invoke-virtual {p2, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 989
    const/4 p1, 0x2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 990
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 991
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_60 .. :try_end_74} :catchall_91

    .line 992
    const-string p1, "SqlDownloadCache"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSegments cost="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->c(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    return v3

    .line 991
    :catchall_91
    move-exception p1

    :try_start_92
    monitor-exit p2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 686
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 687
    if-eqz p1, :cond_14

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_a

    goto :goto_14

    .line 690
    :cond_a
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$10;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$10;-><init>(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 697
    const/4 p1, 0x1

    return p1

    .line 688
    :cond_14
    :goto_14
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 9

    .line 354
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 355
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 356
    nop

    .line 358
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_b
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT * FROM %s WHERE %s = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "downloader"

    aput-object v6, v5, v0

    const-string v6, "_id"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    .line 358
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_47

    .line 361
    :try_start_2a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 362
    new-instance v3, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {v3, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;-><init>(Landroid/database/Cursor;)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_45

    .line 367
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 362
    return-object v3

    .line 367
    :cond_3d
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    goto :goto_53

    .line 364
    :catchall_45
    move-exception v3

    goto :goto_49

    :catchall_47
    move-exception v3

    move-object p1, v1

    .line 365
    :goto_49
    :try_start_49
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_54

    .line 367
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 369
    :goto_53
    goto :goto_5d

    .line 367
    :catchall_54
    move-exception v1

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v1

    .line 372
    :cond_5d
    :goto_5d
    return-object v1
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7

    .line 809
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 810
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 811
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "curBytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 812
    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_28

    .line 813
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isFirstDownload"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 814
    :cond_28
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    .line 815
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 400
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .registers 2

    .line 761
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 762
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    .line 763
    return-void

    .line 764
    :cond_8
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$2;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/b/e$2;-><init>(Lcom/ss/android/socialbase/downloader/b/e;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 771
    return-void
.end method

.method public b(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 895
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->d(I)V

    .line 897
    if-eqz p2, :cond_3a

    .line 898
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/b;

    .line 899
    if-nez p2, :cond_18

    .line 900
    goto :goto_9

    .line 901
    :cond_18
    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 902
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 903
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 904
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_3b

    .line 905
    goto :goto_29

    .line 907
    :cond_39
    goto :goto_9

    .line 911
    :cond_3a
    goto :goto_3f

    .line 909
    :catchall_3b
    move-exception p1

    .line 910
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 912
    :goto_3f
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 2

    .line 885
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 2

    .line 491
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 492
    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7

    .line 829
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 830
    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 832
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isFirstDownload"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    const-string p3, "isFirstSuccess"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 834
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    .line 835
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 418
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5a

    .line 419
    const/4 v1, 0x0

    .line 421
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_f
    sget-object v4, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM %s WHERE %s = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "downloadChunk"

    aput-object v7, v6, v2

    const-string v7, "_id"

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/String;

    .line 422
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    .line 421
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 424
    :goto_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 425
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/b;

    invoke-direct {p1, v1}, Lcom/ss/android/socialbase/downloader/model/b;-><init>(Landroid/database/Cursor;)V

    .line 426
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_45

    .line 427
    goto :goto_2e

    .line 431
    :cond_3d
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    goto :goto_50

    .line 428
    :catchall_45
    move-exception p1

    .line 429
    :try_start_46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_51

    .line 431
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 432
    :goto_50
    goto :goto_5a

    .line 431
    :catchall_51
    move-exception p1

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw p1

    .line 435
    :cond_5a
    :goto_5a
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 405
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .registers 2

    .line 874
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->f:Z

    return v0
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7

    .line 840
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 841
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 843
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    .line 844
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 410
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .registers 3

    .line 440
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 441
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_c

    goto :goto_15

    .line 444
    :cond_c
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$4;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$4;-><init>(Lcom/ss/android/socialbase/downloader/b/e;I)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 455
    return-void

    .line 442
    :cond_15
    :goto_15
    return-void
.end method

.method public d()Z
    .registers 2

    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method public e(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7

    .line 849
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 850
    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 852
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    .line 853
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(I)Z
    .registers 4

    .line 733
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 734
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_d

    goto :goto_1c

    .line 737
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_17

    .line 741
    nop

    .line 743
    const/4 p1, 0x1

    return p1

    .line 738
    :catchall_17
    move-exception p1

    .line 739
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 740
    return v1

    .line 735
    :cond_1c
    :goto_1c
    return v1
.end method

.method public f(I)Z
    .registers 3

    .line 748
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$11;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$11;-><init>(Lcom/ss/android/socialbase/downloader/b/e;I)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;)V

    .line 756
    const/4 p1, 0x1

    return p1
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 2

    .line 66
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 820
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 821
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isFirstDownload"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    .line 824
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 858
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 859
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    .line 861
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 866
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 867
    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    .line 869
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 916
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->l(I)Ljava/util/Map;

    move-result-object p1

    .line 917
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 920
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 918
    :cond_17
    :goto_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(I)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 925
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 926
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_90

    .line 927
    nop

    .line 929
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_b
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT * FROM %s WHERE %s = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "segments"

    aput-object v6, v5, v0

    const-string v6, "_id"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    .line 930
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    .line 929
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_7a

    .line 931
    :try_start_2a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 932
    const-string v3, "info"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 933
    nop

    .line 934
    if-ltz v3, :cond_3e

    .line 935
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    .line 934
    :cond_3e
    move-object v3, v1

    .line 938
    :goto_3f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 939
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 940
    move v3, v0

    :goto_4a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_67

    .line 941
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 942
    new-instance v7, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-direct {v7, v6}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(Lorg/json/JSONObject;)V

    .line 943
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_2a .. :try_end_64} :catchall_78

    .line 940
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 945
    :cond_67
    nop

    .line 950
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 945
    return-object v4

    .line 950
    :cond_70
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    goto :goto_86

    .line 947
    :catchall_78
    move-exception v3

    goto :goto_7c

    :catchall_7a
    move-exception v3

    move-object p1, v1

    .line 948
    :goto_7c
    :try_start_7c
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_87

    .line 950
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 951
    :goto_86
    goto :goto_90

    .line 950
    :catchall_87
    move-exception v1

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v1

    .line 953
    :cond_90
    :goto_90
    return-object v1
.end method

.method public m(I)V
    .registers 3

    .line 998
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->g()V

    .line 999
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    .line 1000
    return-void

    .line 1002
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->e:Lcom/ss/android/socialbase/downloader/b/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    .line 1005
    goto :goto_16

    .line 1003
    :catchall_12
    move-exception p1

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1007
    :goto_16
    return-void
.end method

.method public synthetic n(I)Ljava/util/List;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->k(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
