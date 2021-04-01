.class final Lcom/tonyodev/fetch/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final COLUMN_DOWNLOADED_BYTES:Ljava/lang/String; = "_written_bytes"

.field private static final COLUMN_ERROR:Ljava/lang/String; = "_error"

.field private static final COLUMN_FILEPATH:Ljava/lang/String; = "_file_path"

.field private static final COLUMN_FILE_SIZE:Ljava/lang/String; = "_file_size"

.field private static final COLUMN_HEADERS:Ljava/lang/String; = "_headers"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_PRIORITY:Ljava/lang/String; = "_priority"

.field private static final COLUMN_STATUS:Ljava/lang/String; = "_status"

.field private static final COLUMN_URL:Ljava/lang/String; = "_url"

.field private static final DB_NAME:Ljava/lang/String; = "com_tonyodev_fetch.db"

.field static final EMPTY_COLUMN_VALUE:I = -0x1

.field static final INDEX_COLUMN_DOWNLOADED_BYTES:I = 0x5

.field static final INDEX_COLUMN_ERROR:I = 0x7

.field static final INDEX_COLUMN_FILEPATH:I = 0x2

.field static final INDEX_COLUMN_FILE_SIZE:I = 0x6

.field static final INDEX_COLUMN_HEADERS:I = 0x4

.field static final INDEX_COLUMN_ID:I = 0x0

.field static final INDEX_COLUMN_PRIORITY:I = 0x8

.field static final INDEX_COLUMN_STATUS:I = 0x3

.field static final INDEX_COLUMN_URL:I = 0x1

.field private static final TABLE_NAME:Ljava/lang/String; = "requests"

.field private static final VERSION:I = 0x2

.field private static databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private loggingEnabled:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "com_tonyodev_fetch.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    .line 71
    invoke-virtual {p0}, Lcom/tonyodev/fetch/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/DatabaseHelper;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const-class v1, Lcom/tonyodev/fetch/DatabaseHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tonyodev/fetch/DatabaseHelper;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    if-eqz v0, :cond_b

    .line 106
    sget-object v0, Lcom/tonyodev/fetch/DatabaseHelper;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 115
    :goto_9
    monitor-exit v1

    return-object v0

    .line 109
    :cond_b
    if-nez p0, :cond_18

    .line 110
    :try_start_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Context cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    .line 105
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0

    .line 113
    :cond_18
    :try_start_18
    new-instance v0, Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tonyodev/fetch/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tonyodev/fetch/DatabaseHelper;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    .line 115
    sget-object v0, Lcom/tonyodev/fetch/DatabaseHelper;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    goto :goto_9
.end method


# virtual methods
.method declared-synchronized clean()V
    .registers 9

    .prologue
    .line 683
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT _id, _file_path FROM requests WHERE _status = 903"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_19

    move-result-object v0

    .line 687
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_e

    .line 740
    :goto_c
    monitor-exit p0

    return-void

    .line 691
    :cond_e
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v6, 0x1

    if-ge v3, v6, :cond_1c

    .line 692
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_19

    goto :goto_c

    .line 683
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_19
    move-exception v3

    monitor-exit p0

    throw v3

    .line 698
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 700
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 701
    :goto_24
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_73

    .line 703
    const-string v3, "_file_path"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "destinationUri":Ljava/lang/String;
    if-eqz v1, :cond_5e

    .line 707
    invoke-static {v1}, Lcom/tonyodev/fetch/Utils;->fileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 708
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 709
    .local v4, "id":J
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE requests SET _status = 904, _error = -111 WHERE _id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 716
    .end local v4    # "id":J
    :cond_5e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_61} :catch_62
    .catchall {:try_start_1c .. :try_end_61} :catchall_19

    goto :goto_24

    .line 721
    .end local v1    # "destinationUri":Ljava/lang/String;
    :catch_62
    move-exception v2

    .line 723
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_63
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_6a

    .line 724
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_19

    .line 729
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_6a
    :goto_6a
    :try_start_6a
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_6f} :catch_79
    .catchall {:try_start_6a .. :try_end_6f} :catchall_85

    .line 738
    :try_start_6f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_19

    goto :goto_c

    .line 719
    :cond_73
    :try_start_73
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_73 .. :try_end_78} :catch_62
    .catchall {:try_start_73 .. :try_end_78} :catchall_19

    goto :goto_6a

    .line 731
    :catch_79
    move-exception v2

    .line 733
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_7a
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_81

    .line 734
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_85

    .line 738
    :cond_81
    :try_start_81
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_c

    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_85
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_19
.end method

.method declared-synchronized delete(J)Z
    .registers 8
    .param p1, "id"    # J

    .prologue
    .line 350
    monitor-enter p0

    const/4 v1, 0x0

    .line 353
    .local v1, "removed":Z
    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 354
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM requests WHERE _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_24} :catch_2c
    .catchall {:try_start_2 .. :try_end_24} :catchall_35

    .line 366
    :cond_24
    :goto_24
    :try_start_24
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_29} :catch_38
    .catchall {:try_start_24 .. :try_end_29} :catchall_35

    .line 367
    const/4 v1, 0x1

    .line 375
    :cond_2a
    :goto_2a
    monitor-exit p0

    return v1

    .line 358
    :catch_2c
    move-exception v0

    .line 360
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2d
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_24

    .line 361
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_24

    .line 350
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2

    .line 368
    :catch_38
    move-exception v0

    .line 370
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_39
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_2a

    .line 371
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_35

    goto :goto_2a
.end method

.method declared-synchronized deleteAll()Z
    .registers 5

    .prologue
    .line 380
    monitor-enter p0

    const/4 v1, 0x0

    .line 383
    .local v1, "removed":Z
    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 384
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM requests"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_13} :catch_1b
    .catchall {:try_start_2 .. :try_end_13} :catchall_24

    .line 395
    :cond_13
    :goto_13
    :try_start_13
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_18} :catch_27
    .catchall {:try_start_13 .. :try_end_18} :catchall_24

    .line 396
    const/4 v1, 0x1

    .line 404
    :cond_19
    :goto_19
    monitor-exit p0

    return v1

    .line 387
    :catch_1b
    move-exception v0

    .line 389
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1c
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_13

    .line 390
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_13

    .line 380
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2

    .line 397
    :catch_27
    move-exception v0

    .line 399
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_28
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_19

    .line 400
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_24

    goto :goto_19
.end method

.method declared-synchronized get()Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 543
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM requests"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_a} :catch_d
    .catchall {:try_start_2 .. :try_end_a} :catchall_16

    move-result-object v1

    .line 549
    :cond_b
    :goto_b
    monitor-exit p0

    return-object v1

    .line 544
    :catch_d
    move-exception v0

    .line 546
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_e
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_b

    .line 547
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_b

    .line 543
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized get(J)Landroid/database/Cursor;
    .registers 8
    .param p1, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 529
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM requests WHERE _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_1e
    .catchall {:try_start_2 .. :try_end_1b} :catchall_27

    move-result-object v1

    .line 536
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-object v1

    .line 531
    :catch_1e
    move-exception v0

    .line 533
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1f
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_1c

    .line 534
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1c

    .line 529
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized get([J)Landroid/database/Cursor;
    .registers 11
    .param p1, "ids"    # [J

    .prologue
    const/4 v4, 0x0

    .line 557
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    array-length v5, p1

    if-lez v5, :cond_2a

    .line 561
    array-length v6, p1

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v6, :cond_21

    aget-wide v2, p1, v5

    .line 562
    .local v2, "id":J
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2c

    .line 563
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 566
    .end local v2    # "id":J
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 569
    :cond_2a
    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    iget-object v5, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM requests WHERE _id IN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 573
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 572
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_4c} :catch_4f
    .catchall {:try_start_2 .. :try_end_4c} :catchall_58

    move-result-object v4

    .line 579
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4d
    :goto_4d
    monitor-exit p0

    return-object v4

    .line 574
    :catch_4f
    move-exception v0

    .line 576
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_50
    iget-boolean v5, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v5, :cond_4d

    .line 577
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_58

    goto :goto_4d

    .line 557
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_58
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized getByStatus(I)Landroid/database/Cursor;
    .registers 7
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x0

    .line 586
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM requests WHERE _status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_1e
    .catchall {:try_start_2 .. :try_end_1b} :catchall_27

    move-result-object v1

    .line 593
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-object v1

    .line 588
    :catch_1e
    move-exception v0

    .line 590
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1f
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_1c

    .line 591
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1c

    .line 586
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getByUrlAndFilePath(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 600
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM requests WHERE _url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 602
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_file_path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 603
    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIMIT 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 600
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_3f} :catch_42
    .catchall {:try_start_2 .. :try_end_3f} :catchall_4b

    move-result-object v1

    .line 609
    :cond_40
    :goto_40
    monitor-exit p0

    return-object v1

    .line 604
    :catch_42
    move-exception v0

    .line 606
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_43
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_40

    .line 607
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_4b

    goto :goto_40

    .line 600
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_4b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getInsertStatementClose()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    const-string v0, ";"

    return-object v0
.end method

.method getInsertStatementOpen()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    const-string v0, "INSERT INTO requests ( _id, _url, _file_path, _status, _headers, _written_bytes, _file_size, _error, _priority ) VALUES "

    return-object v0
.end method

.method declared-synchronized getNextPendingRequest()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 615
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM requests WHERE _status = 900 AND _priority = 601 LIMIT 1"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 621
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_23

    move-result v1

    if-lez v1, :cond_14

    .line 629
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_12
    monitor-exit p0

    return-object v0

    .line 625
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_14
    if-eqz v0, :cond_19

    .line 626
    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 629
    :cond_19
    iget-object v1, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM requests WHERE _status = 900 LIMIT 1"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_23

    move-result-object v0

    goto :goto_12

    .line 615
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRowInsertStatement(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJII)Ljava/lang/String;
    .registers 16
    .param p1, "id"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "headers"    # Ljava/lang/String;
    .param p7, "downloadedBytes"    # J
    .param p9, "fileSize"    # J
    .param p11, "priority"    # I
    .param p12, "error"    # I

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-static {p3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-static {p4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-static {p6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p9, p10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method declared-synchronized hasPendingRequests()Z
    .registers 6

    .prologue
    .line 636
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT _id FROM requests WHERE _status = 900 LIMIT 1"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 640
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 642
    .local v1, "hasPending":Z
    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_14

    .line 643
    const/4 v1, 0x1

    .line 646
    :cond_14
    if-eqz v0, :cond_19

    .line 647
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 650
    :cond_19
    monitor-exit p0

    return v1

    .line 636
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "hasPending":Z
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized insert(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJII)Z
    .registers 16
    .param p1, "id"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "headers"    # Ljava/lang/String;
    .param p7, "downloadedBytes"    # J
    .param p9, "fileSize"    # J
    .param p11, "priority"    # I
    .param p12, "error"    # I

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tonyodev/fetch/DatabaseHelper;->getInsertStatementOpen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-virtual/range {p0 .. p12}, Lcom/tonyodev/fetch/DatabaseHelper;->getRowInsertStatement(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Lcom/tonyodev/fetch/DatabaseHelper;->getInsertStatementClose()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "statement":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch/DatabaseHelper;->insert(Ljava/lang/String;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_28

    move-result v1

    monitor-exit p0

    return v1

    .line 122
    .end local v0    # "statement":Ljava/lang/String;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized insert(Ljava/lang/String;)Z
    .registers 8
    .param p1, "insertStatement"    # Ljava/lang/String;

    .prologue
    .line 159
    monitor-enter p0

    const/4 v1, 0x0

    .line 161
    .local v1, "inserted":Z
    if-nez p1, :cond_7

    move v2, v1

    .line 191
    .end local v1    # "inserted":Z
    .local v2, "inserted":I
    :goto_5
    monitor-exit p0

    return v2

    .line 167
    .end local v2    # "inserted":I
    .restart local v1    # "inserted":Z
    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 168
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_3b
    .catchall {:try_start_7 .. :try_end_16} :catchall_55

    .line 179
    :try_start_16
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_1b} :catch_1e
    .catchall {:try_start_16 .. :try_end_1b} :catchall_38

    .line 180
    const/4 v1, 0x1

    move v2, v1

    .line 191
    .restart local v2    # "inserted":I
    goto :goto_5

    .line 181
    .end local v2    # "inserted":I
    :catch_1e
    move-exception v0

    .line 183
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1f
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_26

    .line 184
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 187
    :cond_26
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tonyodev/fetch/ErrorUtils;->getCode(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_38

    .line 159
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_38
    move-exception v3

    monitor-exit p0

    throw v3

    .line 170
    :catch_3b
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3c
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_43

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    :cond_43
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tonyodev/fetch/ErrorUtils;->getCode(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_55

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_55
    move-exception v3

    .line 179
    :try_start_56
    iget-object v4, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_5b} :catch_5d
    .catchall {:try_start_56 .. :try_end_5b} :catchall_38

    .line 180
    const/4 v1, 0x1

    .line 187
    :try_start_5c
    throw v3

    .line 181
    :catch_5d
    move-exception v0

    .line 183
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_65

    .line 184
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 187
    :cond_65
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tonyodev/fetch/ErrorUtils;->getCode(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_77
    .catchall {:try_start_5c .. :try_end_77} :catchall_38
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 77
    const-string v0, "CREATE TABLE requests ( _id INTEGER PRIMARY KEY NOT NULL, _url TEXT NOT NULL, _file_path TEXT NOT NULL, _status INTEGER NOT NULL, _headers TEXT NOT NULL, _written_bytes INTEGER NOT NULL, _file_size INTEGER NOT NULL, _error INTEGER NOT NULL, _priority INTEGER NOT NULL, unique( _file_path ) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_a

    .line 101
    :goto_3
    return-void

    .line 94
    :pswitch_4
    const-string v0, "CREATE UNIQUE INDEX table_unique ON requests ( _file_path)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    .line 92
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method declared-synchronized pause(J)Z
    .registers 10
    .param p1, "id"    # J

    .prologue
    .line 196
    monitor-enter p0

    const/4 v2, 0x0

    .line 200
    .local v2, "paused":Z
    :try_start_2
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 201
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE requests SET _status = 902 WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x387

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x388

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_54} :catch_9c
    .catchall {:try_start_2 .. :try_end_54} :catchall_a5

    .line 214
    :cond_54
    :goto_54
    const/4 v0, 0x0

    .line 217
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_55
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 219
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _id FROM requests WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x386

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_95

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_91} :catch_a8
    .catchall {:try_start_55 .. :try_end_91} :catchall_b6

    move-result v3

    if-lez v3, :cond_95

    .line 224
    const/4 v2, 0x1

    .line 233
    :cond_95
    if-eqz v0, :cond_9a

    .line 234
    :try_start_97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_a5

    .line 238
    :cond_9a
    :goto_9a
    monitor-exit p0

    return v2

    .line 207
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_9c
    move-exception v1

    .line 209
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_9d
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_54

    .line 210
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_a5

    goto :goto_54

    .line 196
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_a5
    move-exception v3

    monitor-exit p0

    throw v3

    .line 227
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catch_a8
    move-exception v1

    .line 229
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_a9
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_b0

    .line 230
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_b6

    .line 233
    :cond_b0
    if-eqz v0, :cond_9a

    .line 234
    :try_start_b2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_9a

    .line 233
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_b6
    move-exception v3

    if-eqz v0, :cond_bc

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_bc
    throw v3
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_a5
.end method

.method declared-synchronized resume(J)Z
    .registers 10
    .param p1, "id"    # J

    .prologue
    .line 243
    monitor-enter p0

    const/4 v2, 0x0

    .line 246
    .local v2, "resumed":Z
    :try_start_2
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 247
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE requests SET _status = 900 WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x387

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x388

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_54} :catch_9c
    .catchall {:try_start_2 .. :try_end_54} :catchall_a5

    .line 260
    :cond_54
    :goto_54
    const/4 v0, 0x0

    .line 262
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_55
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 264
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _id FROM requests WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x384

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_95

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_91} :catch_a8
    .catchall {:try_start_55 .. :try_end_91} :catchall_b6

    move-result v3

    if-lez v3, :cond_95

    .line 269
    const/4 v2, 0x1

    .line 278
    :cond_95
    if-eqz v0, :cond_9a

    .line 279
    :try_start_97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_a5

    .line 283
    :cond_9a
    :goto_9a
    monitor-exit p0

    return v2

    .line 253
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_9c
    move-exception v1

    .line 255
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_9d
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_54

    .line 256
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_a5

    goto :goto_54

    .line 243
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_a5
    move-exception v3

    monitor-exit p0

    throw v3

    .line 272
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catch_a8
    move-exception v1

    .line 274
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_a9
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_b0

    .line 275
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_b6

    .line 278
    :cond_b0
    if-eqz v0, :cond_9a

    .line 279
    :try_start_b2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_9a

    .line 278
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_b6
    move-exception v3

    if-eqz v0, :cond_bc

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_bc
    throw v3
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_a5
.end method

.method declared-synchronized retry(J)Z
    .registers 10
    .param p1, "id"    # J

    .prologue
    .line 440
    monitor-enter p0

    const/4 v2, 0x0

    .line 443
    .local v2, "updated":Z
    :try_start_2
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 444
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE requests SET _status = 900, _error = -1 WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x388

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_3c} :catch_84
    .catchall {:try_start_2 .. :try_end_3c} :catchall_8d

    .line 457
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    .line 459
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_3d
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 461
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _id FROM requests WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x384

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_7d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_79} :catch_90
    .catchall {:try_start_3d .. :try_end_79} :catchall_9e

    move-result v3

    if-lez v3, :cond_7d

    .line 466
    const/4 v2, 0x1

    .line 475
    :cond_7d
    if-eqz v0, :cond_82

    .line 476
    :try_start_7f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_8d

    .line 480
    :cond_82
    :goto_82
    monitor-exit p0

    return v2

    .line 450
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_84
    move-exception v1

    .line 452
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_85
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_3c

    .line 453
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_8d

    goto :goto_3c

    .line 440
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_8d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 469
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catch_90
    move-exception v1

    .line 471
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_91
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_98

    .line 472
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_9e

    .line 475
    :cond_98
    if-eqz v0, :cond_82

    .line 476
    :try_start_9a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_82

    .line 475
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_9e
    move-exception v3

    if-eqz v0, :cond_a4

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a4
    throw v3
    :try_end_a5
    .catchall {:try_start_9a .. :try_end_a5} :catchall_8d
.end method

.method declared-synchronized setLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 743
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 744
    monitor-exit p0

    return-void

    .line 743
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setPriority(JI)Z
    .registers 9
    .param p1, "id"    # J
    .param p3, "priority"    # I

    .prologue
    .line 409
    monitor-enter p0

    const/4 v1, 0x0

    .line 413
    .local v1, "updated":Z
    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 414
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE requests SET _priority = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_3a} :catch_42
    .catchall {:try_start_2 .. :try_end_3a} :catchall_4b

    .line 426
    :cond_3a
    :goto_3a
    :try_start_3a
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a .. :try_end_3f} :catch_4e
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4b

    .line 427
    const/4 v1, 0x1

    .line 435
    :cond_40
    :goto_40
    monitor-exit p0

    return v1

    .line 418
    :catch_42
    move-exception v0

    .line 420
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_43
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_3a

    .line 421
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_4b

    goto :goto_3a

    .line 409
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_4b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 428
    :catch_4e
    move-exception v0

    .line 430
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4f
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_40

    .line 431
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4b

    goto :goto_40
.end method

.method declared-synchronized updateFileBytes(JJJ)Z
    .registers 12
    .param p1, "id"    # J
    .param p3, "downloadedBytes"    # J
    .param p5, "fileSize"    # J

    .prologue
    .line 319
    monitor-enter p0

    const/4 v1, 0x0

    .line 322
    .local v1, "updated":Z
    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 323
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE requests SET _file_size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_written_bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_50} :catch_58
    .catchall {:try_start_2 .. :try_end_50} :catchall_61

    .line 336
    :cond_50
    :goto_50
    :try_start_50
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_55} :catch_64
    .catchall {:try_start_50 .. :try_end_55} :catchall_61

    .line 337
    const/4 v1, 0x1

    .line 345
    :cond_56
    :goto_56
    monitor-exit p0

    return v1

    .line 328
    :catch_58
    move-exception v0

    .line 330
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_59
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_50

    .line 331
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_61

    goto :goto_50

    .line 319
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_61
    move-exception v2

    monitor-exit p0

    throw v2

    .line 338
    :catch_64
    move-exception v0

    .line 340
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_65
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_56

    .line 341
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_61

    goto :goto_56
.end method

.method declared-synchronized updateStatus(JII)Z
    .registers 10
    .param p1, "id"    # J
    .param p3, "status"    # I
    .param p4, "error"    # I

    .prologue
    .line 288
    monitor-enter p0

    const/4 v1, 0x0

    .line 291
    .local v1, "updated":Z
    :try_start_2
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 292
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE requests SET _status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_50} :catch_58
    .catchall {:try_start_2 .. :try_end_50} :catchall_61

    .line 305
    :cond_50
    :goto_50
    :try_start_50
    iget-object v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_55} :catch_64
    .catchall {:try_start_50 .. :try_end_55} :catchall_61

    .line 306
    const/4 v1, 0x1

    .line 314
    :cond_56
    :goto_56
    monitor-exit p0

    return v1

    .line 297
    :catch_58
    move-exception v0

    .line 299
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_59
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_50

    .line 300
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_61

    goto :goto_50

    .line 288
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_61
    move-exception v2

    monitor-exit p0

    throw v2

    .line 307
    :catch_64
    move-exception v0

    .line 309
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_65
    iget-boolean v2, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v2, :cond_56

    .line 310
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_61

    goto :goto_56
.end method

.method declared-synchronized updateUrl(JLjava/lang/String;)Z
    .registers 11
    .param p1, "id"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 485
    monitor-enter p0

    const/4 v2, 0x0

    .line 488
    .local v2, "updated":Z
    :try_start_2
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 489
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE requests SET _url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 490
    invoke-static {p3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 492
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_3e} :catch_88
    .catchall {:try_start_2 .. :try_end_3e} :catchall_91

    .line 500
    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    .line 502
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_3f
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 504
    iget-object v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _id FROM requests WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 506
    invoke-static {p3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 504
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_81

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_7d} :catch_94
    .catchall {:try_start_3f .. :try_end_7d} :catchall_a2

    move-result v3

    if-lez v3, :cond_81

    .line 509
    const/4 v2, 0x1

    .line 518
    :cond_81
    if-eqz v0, :cond_86

    .line 519
    :try_start_83
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_91

    .line 523
    :cond_86
    :goto_86
    monitor-exit p0

    return v2

    .line 493
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_88
    move-exception v1

    .line 495
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_89
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_3e

    .line 496
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_91

    goto :goto_3e

    .line 485
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_91
    move-exception v3

    monitor-exit p0

    throw v3

    .line 512
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catch_94
    move-exception v1

    .line 514
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_95
    iget-boolean v3, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v3, :cond_9c

    .line 515
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_a2

    .line 518
    :cond_9c
    if-eqz v0, :cond_86

    .line 519
    :try_start_9e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_86

    .line 518
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_a2
    move-exception v3

    if-eqz v0, :cond_a8

    .line 519
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a8
    throw v3
    :try_end_a9
    .catchall {:try_start_9e .. :try_end_a9} :catchall_91
.end method

.method declared-synchronized verifyOK()V
    .registers 4

    .prologue
    .line 657
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 658
    iget-object v1, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE requests SET _status = 900 WHERE _status = 901"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_12} :catch_19
    .catchall {:try_start_1 .. :try_end_12} :catchall_22

    .line 672
    :cond_12
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/tonyodev/fetch/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_17} :catch_25
    .catchall {:try_start_12 .. :try_end_17} :catchall_22

    .line 679
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 664
    :catch_19
    move-exception v0

    .line 666
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1a
    iget-boolean v1, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v1, :cond_12

    .line 667
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_12

    .line 657
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1

    .line 673
    :catch_25
    move-exception v0

    .line 675
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_26
    iget-boolean v1, p0, Lcom/tonyodev/fetch/DatabaseHelper;->loggingEnabled:Z

    if-eqz v1, :cond_17

    .line 676
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_22

    goto :goto_17
.end method
