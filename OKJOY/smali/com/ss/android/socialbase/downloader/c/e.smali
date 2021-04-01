.class public Lcom/ss/android/socialbase/downloader/c/e;
.super Lcom/ss/android/socialbase/downloader/c/c$a;
.source "SqlDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/s;


# static fields
.field private static volatile b:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field a:Lcom/ss/android/socialbase/downloader/c/b;

.field private c:Lcom/ss/android/socialbase/downloader/c/g;

.field private d:Lcom/ss/android/socialbase/downloader/c/g;

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/c/e;-><init>(Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/c$a;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->a:Lcom/ss/android/socialbase/downloader/c/b;

    .line 56
    if-nez p1, :cond_9

    .line 61
    :goto_8
    return-void

    .line 59
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->e:Z

    .line 60
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/c/e;->a()V

    goto :goto_8
.end method

.method private a(IIIILandroid/database/sqlite/SQLiteStatement;)V
    .registers 13

    .prologue
    .line 648
    :try_start_0
    monitor-enter p5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_35

    .line 649
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 650
    const-string v1, "chunkIndex"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "downloadChunk"

    const-string v3, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 653
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 651
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 654
    monitor-exit p5

    .line 658
    :goto_31
    return-void

    .line 654
    :catchall_32
    move-exception v0

    monitor-exit p5
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    :try_start_34
    throw v0
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_35} :catch_35

    .line 655
    :catch_35
    move-exception v0

    .line 656
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_31
.end method

.method private a(IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .registers 15

    .prologue
    .line 676
    :try_start_0
    monitor-enter p6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_35

    .line 677
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 678
    const-string v1, "curOffset"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 679
    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "downloadChunk"

    const-string v3, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 681
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 679
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 682
    monitor-exit p6

    .line 686
    :goto_31
    return-void

    .line 682
    :catchall_32
    move-exception v0

    monitor-exit p6
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    :try_start_34
    throw v0
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_35} :catch_35

    .line 683
    :catch_35
    move-exception v0

    .line 684
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_31
.end method

.method private a(IIJLandroid/database/sqlite/SQLiteStatement;)V
    .registers 13

    .prologue
    .line 662
    :try_start_0
    monitor-enter p5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_2e

    .line 663
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 664
    const-string v1, "curOffset"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 665
    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "downloadChunk"

    const-string v3, "_id = ? AND chunkIndex = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 667
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 665
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 668
    monitor-exit p5

    .line 672
    :goto_2a
    return-void

    .line 668
    :catchall_2b
    move-exception v0

    monitor-exit p5
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v0
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2e} :catch_2e

    .line 669
    :catch_2e
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2a
.end method

.method private a(ILandroid/content/ContentValues;)V
    .registers 5

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 1013
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    .line 1029
    :cond_7
    :goto_7
    return-void

    .line 1015
    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1016
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_7

    .line 1019
    new-instance v1, Lcom/ss/android/socialbase/downloader/c/e$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/e$3;-><init>(Lcom/ss/android/socialbase/downloader/c/e;ILandroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 1026
    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/e;->b(ILandroid/content/ContentValues;)V

    goto :goto_7
.end method

.method private a(ILandroid/database/sqlite/SQLiteStatement;)V
    .registers 7

    .prologue
    .line 476
    if-nez p2, :cond_3

    .line 486
    :goto_2
    return-void

    .line 479
    :cond_3
    :try_start_3
    monitor-enter p2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_4} :catch_11

    .line 480
    const/4 v0, 0x1

    int-to-long v2, p1

    :try_start_6
    invoke-virtual {p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 481
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 482
    monitor-exit p2

    goto :goto_2

    :catchall_e
    move-exception v0

    monitor-exit p2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    :try_start_10
    throw v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_11} :catch_11

    .line 483
    :catch_11
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;IIIILandroid/database/sqlite/SQLiteStatement;)V
    .registers 6

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/c/e;->a(IIIILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .registers 7

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/socialbase/downloader/c/e;->a(IIIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;IIJLandroid/database/sqlite/SQLiteStatement;)V
    .registers 7

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/c/e;->a(IIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;ILandroid/content/ContentValues;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/e;->b(ILandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;ILandroid/database/sqlite/SQLiteStatement;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/b;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/b;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/c/e;->d(Lcom/ss/android/socialbase/downloader/g/c;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/c;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/c;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/c/e;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/b;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 4

    .prologue
    .line 539
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 549
    :cond_4
    :goto_4
    return-void

    .line 542
    :cond_5
    :try_start_5
    monitor-enter p2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6} :catch_11

    .line 543
    :try_start_6
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/b;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 544
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 545
    monitor-exit p2

    goto :goto_4

    :catchall_e
    move-exception v0

    monitor-exit p2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    :try_start_10
    throw v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_11} :catch_11

    .line 546
    :catch_11
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 4

    .prologue
    .line 525
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 536
    :cond_4
    :goto_4
    return-void

    .line 528
    :cond_5
    :try_start_5
    monitor-enter p2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6} :catch_11

    .line 529
    :try_start_6
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/c;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 530
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 531
    monitor-exit p2

    goto :goto_4

    :catchall_e
    move-exception v0

    monitor-exit p2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    :try_start_10
    throw v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_11} :catch_11

    .line 532
    :catch_11
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    if-nez p1, :cond_3

    .line 259
    :cond_2
    :goto_2
    return-void

    .line 252
    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 253
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->be()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 254
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->b(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1e} :catch_1f

    goto :goto_7

    .line 257
    :catch_1f
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 270
    if-ltz v4, :cond_a

    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_b

    .line 333
    :cond_a
    :goto_a
    return-void

    .line 272
    :cond_b
    sget-object v5, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v5

    .line 274
    :try_start_e
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->g()V

    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    .line 276
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v1

    const-string v2, "clear_invalid_task_error"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v1

    .line 277
    if-eqz v1, :cond_bb

    .line 278
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 279
    const/4 v1, 0x0

    :goto_2a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3d

    .line 280
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 282
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CAST(_id AS TEXT) IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [C

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([C)V

    const-string v6, "\u0000"

    const-string v7, "?,"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    sget-object v3, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "downloader"

    invoke-virtual {v3, v6, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    sget-object v3, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "downloadChunk"

    invoke-virtual {v3, v6, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 292
    :cond_79
    :goto_79
    const/4 v1, 0x0

    move v3, v1

    :goto_7b
    if-ge v3, v4, :cond_129

    .line 293
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 294
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/g/c;

    .line 295
    sget-object v6, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "downloader"

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    sget-object v6, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "downloader"

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->e()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 298
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_b7

    .line 299
    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/c/e;->c(I)Ljava/util/List;

    move-result-object v6

    .line 300
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_ed

    .line 292
    :cond_b7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7b

    .line 286
    :cond_bb
    const-string v1, ", "

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 287
    sget-object v2, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloader"

    const-string v6, "_id IN (?)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v2, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    sget-object v2, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloadChunk"

    const-string v6, "_id IN (?)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v2, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_df} :catch_e0
    .catchall {:try_start_e .. :try_end_df} :catchall_124

    goto :goto_79

    .line 327
    :catch_e0
    move-exception v1

    .line 328
    :try_start_e1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_124

    .line 330
    :try_start_e4
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->h()V

    .line 332
    :goto_e7
    monitor-exit v5

    goto/16 :goto_a

    :catchall_ea
    move-exception v1

    monitor-exit v5
    :try_end_ec
    .catchall {:try_start_e4 .. :try_end_ec} :catchall_ea

    throw v1

    .line 303
    :cond_ed
    :try_start_ed
    sget-object v7, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "downloadChunk"

    const-string v9, "_id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_104
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/g/b;

    .line 305
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/ss/android/socialbase/downloader/g/b;->b(I)V

    .line 306
    sget-object v7, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "downloadChunk"

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/b;->a()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v7, v8, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_123} :catch_e0
    .catchall {:try_start_ed .. :try_end_123} :catchall_124

    goto :goto_104

    .line 330
    :catchall_124
    move-exception v1

    :try_start_125
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->h()V

    throw v1
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_ea

    .line 311
    :cond_129
    if-eqz p4, :cond_15c

    if-eqz p5, :cond_15c

    .line 312
    :try_start_12d
    monitor-enter p4
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_12e} :catch_e0
    .catchall {:try_start_12d .. :try_end_12e} :catchall_124

    .line 313
    :try_start_12e
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 314
    const/4 v1, 0x0

    move v2, v1

    :goto_134
    if-ge v2, v3, :cond_15b

    .line 315
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    .line 316
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->c(I)Ljava/util/List;

    move-result-object v4

    .line 317
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 319
    if-eqz v4, :cond_157

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_157

    .line 320
    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    :cond_157
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_134

    .line 323
    :cond_15b
    monitor-exit p4
    :try_end_15c
    .catchall {:try_start_12e .. :try_end_15c} :catchall_165

    .line 326
    :cond_15c
    :try_start_15c
    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_161
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_161} :catch_e0
    .catchall {:try_start_15c .. :try_end_161} :catchall_124

    .line 330
    :try_start_161
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->h()V
    :try_end_164
    .catchall {:try_start_161 .. :try_end_164} :catchall_ea

    goto :goto_e7

    .line 323
    :catchall_165
    move-exception v1

    :try_start_166
    monitor-exit p4
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_165

    :try_start_167
    throw v1
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_167 .. :try_end_168} :catch_e0
    .catchall {:try_start_167 .. :try_end_168} :catchall_124
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/e;Z)Z
    .registers 2

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/c/e;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/c/e;)Lcom/ss/android/socialbase/downloader/c/g;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    return-object v0
.end method

.method private b(ILandroid/content/ContentValues;)V
    .registers 9

    .prologue
    .line 1032
    const/16 v0, 0xa

    .line 1034
    :goto_2
    :try_start_2
    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_19

    move-result v1

    if-eqz v1, :cond_1e

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1e

    .line 1036
    const-wide/16 v2, 0x5

    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_2

    .line 1037
    :catch_14
    move-exception v1

    .line 1038
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_2

    .line 1046
    :catch_19
    move-exception v0

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1049
    :goto_1d
    return-void

    .line 1042
    :cond_1e
    :try_start_1e
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_31} :catch_32

    goto :goto_1d

    .line 1043
    :catch_32
    move-exception v0

    .line 1044
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_19

    goto :goto_1d
.end method

.method private b(Lcom/ss/android/socialbase/downloader/g/c;Landroid/database/sqlite/SQLiteStatement;)V
    .registers 7

    .prologue
    .line 689
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 701
    :cond_4
    :goto_4
    return-void

    .line 692
    :cond_5
    :try_start_5
    monitor-enter p2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6} :catch_1f

    .line 693
    :try_start_6
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/c;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 694
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->f()I

    move-result v0

    .line 695
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 696
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 697
    monitor-exit p2

    goto :goto_4

    :catchall_1c
    move-exception v0

    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 698
    :catch_1f
    move-exception v0

    .line 699
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/c/e;)Lcom/ss/android/socialbase/downloader/c/g;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->c:Lcom/ss/android/socialbase/downloader/c/g;

    return-object v0
.end method

.method private c(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 733
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->c:Lcom/ss/android/socialbase/downloader/c/g;

    if-nez v0, :cond_c

    .line 758
    :cond_b
    :goto_b
    return-void

    .line 735
    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 736
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_b

    .line 740
    new-instance v1, Lcom/ss/android/socialbase/downloader/c/e$9;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/c/e$9;-><init>(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 752
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->c:Lcom/ss/android/socialbase/downloader/c/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/c;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_b

    .line 753
    :catch_2b
    move-exception v0

    .line 754
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/c/e;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->i()V

    return-void
.end method

.method private declared-synchronized d(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 784
    monitor-enter p0

    if-nez p1, :cond_5

    .line 803
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 788
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(I)Z

    move-result v0

    .line 789
    if-nez v0, :cond_1b

    .line 790
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/c/e;->c(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_13
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    goto :goto_3

    .line 800
    :catch_13
    move-exception v0

    .line 801
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_3

    .line 784
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 792
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->c:Lcom/ss/android/socialbase/downloader/c/g;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1d} :catch_13
    .catchall {:try_start_1b .. :try_end_1d} :catchall_18

    if-eqz v0, :cond_3

    .line 795
    :try_start_1f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->c:Lcom/ss/android/socialbase/downloader/c/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->b(Lcom/ss/android/socialbase/downloader/g/c;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_28} :catch_29
    .catchall {:try_start_1f .. :try_end_28} :catchall_18

    goto :goto_3

    .line 796
    :catch_29
    move-exception v0

    .line 797
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_13
    .catchall {:try_start_2a .. :try_end_2d} :catchall_18

    goto :goto_3
.end method

.method static synthetic e()Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private f()V
    .registers 7

    .prologue
    .line 69
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_34

    .line 70
    const-class v1, Lcom/ss/android/socialbase/downloader/c/e;

    monitor-enter v1

    .line 71
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_3a

    if-nez v0, :cond_33

    .line 75
    :try_start_b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Lcom/ss/android/socialbase/downloader/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/g;

    sget-object v2, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloader"

    sget-object v4, Lcom/ss/android/socialbase/downloader/b/c;->a:[Ljava/lang/String;

    sget-object v5, Lcom/ss/android/socialbase/downloader/b/c;->b:[Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/c/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->c:Lcom/ss/android/socialbase/downloader/c/g;

    .line 80
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/g;

    sget-object v2, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloadChunk"

    sget-object v4, Lcom/ss/android/socialbase/downloader/b/c;->c:[Ljava/lang/String;

    sget-object v5, Lcom/ss/android/socialbase/downloader/b/c;->d:[Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/c/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_33} :catch_35
    .catchall {:try_start_b .. :try_end_33} :catchall_3a

    .line 87
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v1

    .line 89
    :cond_34
    return-void

    .line 83
    :catch_35
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_33

    .line 87
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method private g()V
    .registers 2

    .prologue
    .line 265
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 266
    return-void
.end method

.method private h()V
    .registers 2

    .prologue
    .line 807
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 808
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 812
    :cond_11
    :goto_11
    return-void

    .line 809
    :catch_12
    move-exception v0

    .line 810
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11
.end method

.method private declared-synchronized i()V
    .registers 5

    .prologue
    .line 872
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->g()V

    .line 873
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 874
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadChunk"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 875
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_20
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2b

    .line 879
    :try_start_1b
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->h()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_28

    .line 881
    :goto_1e
    monitor-exit p0

    return-void

    .line 876
    :catch_20
    move-exception v0

    .line 877
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2b

    .line 879
    :try_start_24
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->h()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_1e

    .line 872
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 879
    :catchall_2b
    move-exception v0

    :try_start_2c
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->h()V

    throw v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_28
.end method


# virtual methods
.method public a(II)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 706
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 707
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_9

    .line 728
    :goto_8
    return-object v7

    .line 710
    :cond_9
    const/16 v0, 0xa

    .line 712
    :goto_b
    :try_start_b
    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_22

    move-result v1

    if-eqz v1, :cond_27

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_27

    .line 714
    const-wide/16 v2, 0x5

    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_b

    .line 715
    :catch_1d
    move-exception v1

    .line 716
    :try_start_1e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_b

    .line 723
    :catch_22
    move-exception v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 719
    :cond_27
    :try_start_27
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 720
    const-string v1, "chunkCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "downloader"

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 722
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 721
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_48} :catch_22

    goto :goto_8
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    .line 897
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 898
    const-string v1, "status"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    const-string v1, "curBytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 900
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V

    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 10

    .prologue
    .line 885
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 886
    const-string v1, "status"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 887
    const-string v1, "totalBytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 888
    const-string v1, "eTag"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 890
    const-string v1, "name"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_28
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V

    .line 892
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 377
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3f

    .line 378
    const/4 v1, 0x0

    .line 380
    :try_start_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM %s WHERE %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "downloader"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "url"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 383
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 384
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/c;

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_3a} :catch_45
    .catchall {:try_start_d .. :try_end_3a} :catchall_54

    .line 390
    :cond_3a
    if-eqz v1, :cond_3f

    :try_start_3c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_40

    .line 397
    :cond_3f
    :goto_3f
    return-object v2

    .line 391
    :catch_40
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3f

    .line 386
    :catch_45
    move-exception v0

    .line 387
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_54

    .line 390
    if-eqz v1, :cond_3f

    :try_start_4b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_3f

    .line 391
    :catch_4f
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3f

    .line 389
    :catchall_54
    move-exception v0

    .line 390
    if-eqz v1, :cond_5a

    :try_start_57
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 393
    :cond_5a
    :goto_5a
    throw v0

    .line 391
    :catch_5b
    move-exception v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a
.end method

.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, v0, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V

    .line 94
    return-void
.end method

.method public a(IIII)V
    .registers 12

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 618
    if-eqz p1, :cond_13

    if-ltz p3, :cond_13

    if-eq p4, p2, :cond_13

    if-ltz p4, :cond_13

    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    if-nez v0, :cond_14

    .line 644
    :cond_13
    :goto_13
    return-void

    .line 620
    :cond_14
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 621
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 622
    if-eqz v6, :cond_13

    .line 624
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/e$8;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/e$8;-><init>(Lcom/ss/android/socialbase/downloader/c/e;IIII)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 637
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 638
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/e;->a(IIIILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3c} :catch_3d

    goto :goto_13

    .line 639
    :catch_3d
    move-exception v0

    .line 640
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13
.end method

.method public a(IIIJ)V
    .registers 14

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 586
    if-eqz p1, :cond_17

    if-ltz p2, :cond_17

    if-ltz p3, :cond_17

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_17

    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    if-nez v0, :cond_18

    .line 613
    :cond_17
    :goto_17
    return-void

    .line 589
    :cond_18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 590
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_17

    .line 593
    new-instance v1, Lcom/ss/android/socialbase/downloader/c/e$7;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/c/e$7;-><init>(Lcom/ss/android/socialbase/downloader/c/e;IIIJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    .line 606
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 607
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/c/e;->a(IIIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_40} :catch_41

    goto :goto_17

    .line 608
    :catch_41
    move-exception v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17
.end method

.method public a(IIJ)V
    .registers 12

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 554
    if-eqz p1, :cond_15

    if-ltz p2, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_15

    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    if-nez v0, :cond_16

    .line 581
    :cond_15
    :goto_15
    return-void

    .line 557
    :cond_16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 558
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 559
    if-eqz v6, :cond_15

    .line 561
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/e$6;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/e$6;-><init>(Lcom/ss/android/socialbase/downloader/c/e;IIJ)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15

    .line 574
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 575
    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/c/e;->a(IIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3c} :catch_3d

    goto :goto_15

    .line 576
    :catch_3d
    move-exception v0

    .line 577
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method

.method public a(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 987
    return-void
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1057
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/util/SparseArray;)Ljava/util/HashMap;

    move-result-object v0

    .line 1058
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/util/SparseArray;)Ljava/util/HashMap;

    move-result-object v1

    .line 1059
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/c/e;->a:Lcom/ss/android/socialbase/downloader/c/b;

    if-eqz v2, :cond_11

    .line 1060
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/c/e;->a:Lcom/ss/android/socialbase/downloader/c/b;

    invoke-interface {v2, v0, v1}, Lcom/ss/android/socialbase/downloader/c/b;->a(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 1064
    :cond_11
    :goto_11
    return-void

    .line 1062
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;>;",
            "Lcom/ss/android/socialbase/downloader/c/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/e$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/c/e$1;-><init>(Lcom/ss/android/socialbase/downloader/c/e;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V

    .line 234
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_e

    .line 236
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 242
    :cond_e
    :goto_e
    return-void

    .line 239
    :catch_f
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method

.method public a(Lcom/ss/android/socialbase/downloader/c/b;)V
    .registers 2

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/e;->a:Lcom/ss/android/socialbase/downloader/c/b;

    .line 1053
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 4

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 491
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    if-nez v0, :cond_c

    .line 517
    :cond_b
    :goto_b
    return-void

    .line 494
    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 495
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_b

    .line 498
    new-instance v1, Lcom/ss/android/socialbase/downloader/c/e$5;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/c/e$5;-><init>(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 511
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 512
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/b;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_b

    .line 513
    :catch_2b
    move-exception v0

    .line 514
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b
.end method

.method public a(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 339
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/c/e;->b(I)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_9

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    .line 343
    :cond_8
    :goto_8
    return v0

    .line 340
    :catch_9
    move-exception v1

    .line 341
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 762
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 763
    if-eqz p1, :cond_a

    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_b

    .line 780
    :cond_a
    :goto_a
    return v0

    .line 766
    :cond_b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 767
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 768
    if-eqz v1, :cond_a

    .line 770
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/e$10;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/e$10;-><init>(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 780
    :goto_1f
    const/4 v0, 0x1

    goto :goto_a

    .line 777
    :cond_21
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/c/e;->d(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_1f
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 349
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_46

    .line 352
    :try_start_8
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM %s WHERE %s = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "downloader"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 352
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2a} :catch_4d
    .catchall {:try_start_8 .. :try_end_2a} :catchall_5d

    move-result-object v2

    .line 355
    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 356
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/c;

    invoke-direct {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;-><init>(Landroid/database/Cursor;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_36} :catch_6c
    .catchall {:try_start_2b .. :try_end_36} :catchall_69

    .line 362
    if-eqz v2, :cond_3b

    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 370
    :cond_3b
    :goto_3b
    return-object v0

    .line 363
    :catch_3c
    move-exception v1

    .line 364
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 362
    :cond_41
    if-eqz v2, :cond_46

    :try_start_43
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_48

    :cond_46
    :goto_46
    move-object v0, v1

    .line 370
    goto :goto_3b

    .line 363
    :catch_48
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_46

    .line 358
    :catch_4d
    move-exception v0

    move-object v2, v1

    .line 359
    :goto_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_69

    .line 362
    if-eqz v2, :cond_46

    :try_start_54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_46

    .line 363
    :catch_58
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_46

    .line 361
    :catchall_5d
    move-exception v0

    .line 362
    :goto_5e
    if-eqz v1, :cond_63

    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_64

    .line 365
    :cond_63
    :goto_63
    throw v0

    .line 363
    :catch_64
    move-exception v1

    .line 364
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_63

    .line 361
    :catchall_69
    move-exception v0

    move-object v1, v2

    goto :goto_5e

    .line 358
    :catch_6c
    move-exception v0

    goto :goto_4f
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    .line 906
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 907
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    const-string v1, "curBytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 909
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_28

    .line 910
    const-string v1, "isFirstDownload"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    :cond_28
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V

    .line 912
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 852
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    .line 868
    :cond_7
    :goto_7
    return-void

    .line 854
    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 855
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_7

    .line 858
    new-instance v1, Lcom/ss/android/socialbase/downloader/c/e$2;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/c/e$2;-><init>(Lcom/ss/android/socialbase/downloader/c/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 865
    :cond_1d
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->i()V

    goto :goto_7
.end method

.method public b(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 992
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/c/e;->d(I)V

    .line 994
    if-eqz p2, :cond_3c

    .line 995
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 996
    if-eqz v0, :cond_9

    .line 998
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 999
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1000
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 1001
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/b;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_28

    .line 1006
    :catch_38
    move-exception v0

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1009
    :cond_3c
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 2

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 522
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 2

    .prologue
    .line 982
    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 926
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 927
    const-string v1, "status"

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    const-string v1, "curBytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 929
    const-string v1, "isFirstDownload"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    const-string v1, "isFirstSuccess"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 931
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V

    .line 932
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 420
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_48

    .line 421
    const/4 v1, 0x0

    .line 423
    :try_start_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM %s WHERE %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "downloadChunk"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 423
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 426
    :goto_30
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 427
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/b;

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/g/b;-><init>(Landroid/database/Cursor;)V

    .line 428
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_3e} :catch_3f
    .catchall {:try_start_d .. :try_end_3e} :catchall_59

    goto :goto_30

    .line 430
    :catch_3f
    move-exception v0

    .line 431
    :try_start_40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_59

    .line 434
    if-eqz v1, :cond_48

    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_54

    .line 441
    :cond_48
    :goto_48
    return-object v2

    .line 434
    :cond_49
    if-eqz v1, :cond_48

    :try_start_4b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_48

    .line 435
    :catch_4f
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_48

    .line 435
    :catch_54
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_48

    .line 433
    :catchall_59
    move-exception v0

    .line 434
    if-eqz v1, :cond_5f

    :try_start_5c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_60

    .line 437
    :cond_5f
    :goto_5f
    throw v0

    .line 435
    :catch_60
    move-exception v1

    .line 436
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5f
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->e:Z

    return v0
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    .line 937
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 938
    const-string v1, "status"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    const-string v1, "curBytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 940
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V

    .line 941
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .registers 4

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 447
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    if-nez v0, :cond_c

    .line 473
    :cond_b
    :goto_b
    return-void

    .line 450
    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 451
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_b

    .line 454
    new-instance v1, Lcom/ss/android/socialbase/downloader/c/e$4;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/c/e$4;-><init>(Lcom/ss/android/socialbase/downloader/c/e;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 467
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e;->d:Lcom/ss/android/socialbase/downloader/c/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 468
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_b

    .line 469
    :catch_2b
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public e(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    .line 946
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 947
    const-string v1, "status"

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 948
    const-string v1, "curBytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 949
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V

    .line 950
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 816
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/e;->f()V

    .line 817
    sget-object v1, Lcom/ss/android/socialbase/downloader/c/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e;->c:Lcom/ss/android/socialbase/downloader/c/g;

    if-nez v1, :cond_d

    .line 826
    :cond_c
    :goto_c
    return v0

    .line 820
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e;->c:Lcom/ss/android/socialbase/downloader/c/g;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/c/g;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_18

    .line 826
    const/4 v0, 0x1

    goto :goto_c

    .line 821
    :catch_18
    move-exception v1

    .line 822
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method public f(I)Z
    .registers 4

    .prologue
    .line 831
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 832
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 833
    if-nez v0, :cond_e

    .line 834
    const/4 v0, 0x0

    .line 846
    :goto_d
    return v0

    .line 835
    :cond_e
    new-instance v1, Lcom/ss/android/socialbase/downloader/c/e$11;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/c/e$11;-><init>(Lcom/ss/android/socialbase/downloader/c/e;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 846
    :goto_16
    const/4 v0, 0x1

    goto :goto_d

    .line 843
    :cond_18
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/c/e;->e(I)Z

    .line 844
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/c/e;->d(I)V

    goto :goto_16
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 5

    .prologue
    .line 917
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 918
    const-string v1, "status"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    const-string v1, "isFirstDownload"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 920
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V

    .line 921
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 5

    .prologue
    .line 955
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 956
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V

    .line 958
    const/4 v0, 0x0

    return-object v0
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 5

    .prologue
    .line 963
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 964
    const-string v1, "status"

    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 965
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(ILandroid/content/ContentValues;)V

    .line 966
    const/4 v0, 0x0

    return-object v0
.end method
