.class public Lcom/mintegral/msdk/base/b/n;
.super Lcom/mintegral/msdk/base/b/a;
.source "LoadTimeDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/base/entity/i;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/mintegral/msdk/base/b/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/n;->b:Lcom/mintegral/msdk/base/b/n;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 18
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/n;
    .registers 3

    .prologue
    .line 21
    sget-object v0, Lcom/mintegral/msdk/base/b/n;->b:Lcom/mintegral/msdk/base/b/n;

    if-nez v0, :cond_13

    .line 22
    const-class v1, Lcom/mintegral/msdk/base/b/n;

    monitor-enter v1

    .line 23
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/n;->b:Lcom/mintegral/msdk/base/b/n;

    if-nez v0, :cond_12

    .line 24
    new-instance v0, Lcom/mintegral/msdk/base/b/n;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/n;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/n;->b:Lcom/mintegral/msdk/base/b/n;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/n;->b:Lcom/mintegral/msdk/base/b/n;

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/i;)V
    .registers 6

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/n;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_79

    move-result-object v0

    if-nez v0, :cond_9

    .line 128
    :goto_7
    monitor-exit p0

    return-void

    .line 117
    :cond_9
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 118
    const-string v1, "time"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "ad_source_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/i;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v1, "adNum"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/i;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v1, "unitId"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "fb"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/i;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v1, "hb"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/i;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v1, "timeout"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/i;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v1, "network_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/i;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/n;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "load_stat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_78
    .catchall {:try_start_9 .. :try_end_78} :catchall_79

    goto :goto_7

    .line 114
    :catchall_79
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 40
    monitor-enter p0

    .line 43
    :try_start_3
    const-string v1, "select count(*) from load_stat"

    .line 44
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/n;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_1b

    .line 46
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 47
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_22
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2f

    move-result v0

    .line 53
    :cond_1b
    if-eqz v2, :cond_20

    .line 54
    :try_start_1d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2c

    .line 58
    :cond_20
    :goto_20
    monitor-exit p0

    return v0

    .line 51
    :catch_22
    move-exception v1

    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2f

    .line 53
    if-eqz v2, :cond_20

    .line 54
    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_20

    .line 40
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 53
    :catchall_2f
    move-exception v0

    if-eqz v2, :cond_35

    .line 54
    :try_start_32
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_2c
.end method

.method public final declared-synchronized d()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/i;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    monitor-enter p0

    .line 63
    :try_start_3
    const-string v2, "select * from load_stat LIMIT 20"
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c0

    .line 67
    :try_start_5
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/n;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_b2
    .catchall {:try_start_5 .. :try_end_d} :catchall_c3

    move-result-object v8

    .line 68
    if-eqz v8, :cond_db

    :try_start_10
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_db

    .line 69
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_d0
    .catchall {:try_start_10 .. :try_end_1b} :catchall_cb

    .line 71
    :goto_1b
    :try_start_1b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 73
    const/16 v1, 0x14

    if-ge v0, v1, :cond_aa

    .line 76
    add-int/lit8 v10, v0, 0x1

    .line 77
    const-string v0, "ad_source_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 78
    const-string v0, "time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v0, "adNum"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 80
    const-string v0, "unitId"

    .line 81
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 80
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    const-string v0, "fb"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 83
    const-string v0, "timeout"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 84
    const-string v0, "network_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 85
    const-string v0, "hb"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 86
    new-instance v0, Lcom/mintegral/msdk/base/entity/i;

    invoke-direct/range {v0 .. v7}, Lcom/mintegral/msdk/base/entity/i;-><init>(ILjava/lang/String;ILjava/lang/String;III)V

    .line 87
    invoke-virtual {v0, v11}, Lcom/mintegral/msdk/base/entity/i;->a(I)V

    .line 88
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v0, "id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 90
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/n;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 91
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/n;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "load_stat"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_a7} :catch_d6
    .catchall {:try_start_1b .. :try_end_a7} :catchall_cb

    :cond_a7
    move v0, v10

    .line 94
    goto/16 :goto_1b

    :cond_aa
    move-object v0, v9

    .line 99
    :goto_ab
    if-eqz v8, :cond_b0

    .line 100
    :try_start_ad
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_c0

    .line 103
    :cond_b0
    :goto_b0
    monitor-exit p0

    return-object v0

    .line 97
    :catch_b2
    move-exception v0

    move-object v2, v1

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_b7
    :try_start_b7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_cd

    .line 99
    if-eqz v2, :cond_b0

    .line 100
    :try_start_bc
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_b0

    .line 62
    :catchall_c0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :catchall_c3
    move-exception v0

    move-object v8, v1

    :goto_c5
    if-eqz v8, :cond_ca

    .line 100
    :try_start_c7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_ca
    throw v0
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_c0

    .line 99
    :catchall_cb
    move-exception v0

    goto :goto_c5

    :catchall_cd
    move-exception v0

    move-object v8, v2

    goto :goto_c5

    .line 97
    :catch_d0
    move-exception v0

    move-object v2, v8

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_b7

    :catch_d6
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v9

    goto :goto_b7

    :cond_db
    move-object v0, v1

    goto :goto_ab
.end method
