.class Lcom/tapjoy/internal/gi;
.super Lcom/tapjoy/internal/gh;
.source "SourceFile"


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Lcom/tapjoy/internal/ha;

.field private volatile d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tapjoy/internal/ha;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Lcom/tapjoy/internal/gh;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/tapjoy/internal/gi;->b:Ljava/io/File;

    .line 57
    iput-object p2, p0, Lcom/tapjoy/internal/gi;->c:Lcom/tapjoy/internal/ha;

    .line 58
    return-void
.end method

.method private b()V
    .registers 24

    .line 238
    move-object/from16 v1, p0

    sget-object v0, Lcom/tapjoy/internal/gh;->a:Ljava/util/Set;

    .line 240
    iget-object v2, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 241
    const-string v3, "SELECT ROWID, * FROM UsageStats ORDER BY ROWID ASC"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 243
    :try_start_d
    iget-object v3, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM UsageStatValues ORDER BY stat_id ASC"

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_cf

    .line 258
    :try_start_15
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 259
    :goto_18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 260
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 261
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 262
    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 263
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_35

    .line 264
    move-object v11, v4

    goto :goto_36

    .line 263
    :cond_35
    move-object v11, v9

    .line 266
    :goto_36
    const/4 v9, 0x3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 267
    const/4 v13, 0x4

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 268
    const/4 v4, 0x5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 269
    nop

    .line 271
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_93

    const/4 v4, 0x0

    .line 273
    :goto_4d
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    cmp-long v20, v18, v6

    if-nez v20, :cond_94

    .line 274
    if-nez v4, :cond_5c

    .line 275
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 277
    :cond_5c
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 279
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 280
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_max"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_90

    goto :goto_94

    :cond_90
    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_4d

    .line 271
    :cond_93
    const/4 v4, 0x0

    .line 288
    :cond_94
    :goto_94
    if-eqz v0, :cond_a0

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9d

    goto :goto_a0

    :cond_9d
    const/4 v4, 0x0

    goto/16 :goto_18

    .line 289
    :cond_a0
    :goto_a0
    iget-object v9, v1, Lcom/tapjoy/internal/gi;->c:Lcom/tapjoy/internal/ha;

    move-wide v13, v14

    move-wide/from16 v15, v16

    move-object/from16 v17, v4

    invoke-virtual/range {v9 .. v17}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;IJJLjava/util/Map;)V
    :try_end_aa
    .catchall {:try_start_15 .. :try_end_aa} :catchall_ca

    const/4 v4, 0x0

    goto/16 :goto_18

    .line 293
    :cond_ad
    :try_start_ad
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_cf

    .line 294
    nop

    .line 296
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 297
    nop

    .line 299
    iget-object v0, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM UsageStats"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    iget-object v0, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM UsageStatValues"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/tapjoy/internal/gi;->g:J

    iput-wide v2, v1, Lcom/tapjoy/internal/gi;->f:J

    .line 302
    return-void

    .line 293
    :catchall_ca
    move-exception v0

    :try_start_cb
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 294
    throw v0
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_cf

    .line 296
    :catchall_cf
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 297
    goto :goto_d5

    :goto_d4
    throw v0

    :goto_d5
    goto :goto_d4
.end method


# virtual methods
.method protected a()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    :cond_c
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/gi;->g:J

    iput-wide v0, p0, Lcom/tapjoy/internal/gi;->f:J

    .line 130
    return-void
.end method

.method protected a(J)V
    .registers 8

    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    .line 73
    return-void

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->b:Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 77
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_8c

    .line 103
    new-instance p1, Landroid/database/SQLException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unknown database version: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :pswitch_28
    goto :goto_4c

    .line 79
    :pswitch_29
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 81
    :try_start_2e
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE IF NOT EXISTS UsageStats(name TEXT,dimensions TEXT,count INTEGER,first_time INTEGER,last_time INTEGER,PRIMARY KEY(name, dimensions))"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE IF NOT EXISTS UsageStatValues(stat_id LONG,name TEXT,count INTEGER,avg REAL,max INTEGER,PRIMARY KEY(stat_id, name))"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 96
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_84

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    nop

    .line 106
    :goto_4c
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT MIN(first_time), MAX(last_time) FROM UsageStats"

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    :try_start_54
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 110
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tapjoy/internal/gi;->f:J

    .line 111
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tapjoy/internal/gi;->g:J
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_7f

    .line 114
    :cond_67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 115
    nop

    .line 117
    iget-wide v0, p0, Lcom/tapjoy/internal/gi;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7e

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gtz v2, :cond_7e

    .line 118
    invoke-direct {p0}, Lcom/tapjoy/internal/gi;->b()V

    .line 120
    :cond_7e
    return-void

    .line 114
    :catchall_7f
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 115
    throw p1

    .line 98
    :catchall_84
    move-exception p1

    iget-object p2, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    throw p1

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method protected a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 31
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 135
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    iget-object v4, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_b

    .line 136
    return-void

    .line 139
    :cond_b
    iget-wide v4, v1, Lcom/tapjoy/internal/gi;->e:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_18

    .line 141
    iput-wide v2, v1, Lcom/tapjoy/internal/gi;->g:J

    iput-wide v2, v1, Lcom/tapjoy/internal/gi;->e:J

    goto :goto_43

    .line 142
    :cond_18
    const-wide/32 v6, 0x5265c00

    cmp-long v8, v2, v4

    if-ltz v8, :cond_2e

    add-long v8, v4, v6

    cmp-long v10, v2, v8

    if-gez v10, :cond_2e

    .line 144
    iget-wide v4, v1, Lcom/tapjoy/internal/gi;->g:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_43

    .line 145
    iput-wide v2, v1, Lcom/tapjoy/internal/gi;->g:J

    goto :goto_43

    .line 147
    :cond_2e
    cmp-long v8, v2, v4

    if-gez v8, :cond_3c

    iget-wide v4, v1, Lcom/tapjoy/internal/gi;->g:J

    sub-long/2addr v4, v2

    cmp-long v8, v4, v6

    if-gez v8, :cond_3c

    .line 149
    iput-wide v2, v1, Lcom/tapjoy/internal/gi;->e:J

    goto :goto_43

    .line 151
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/gi;->b()V

    .line 154
    iput-wide v2, v1, Lcom/tapjoy/internal/gi;->g:J

    iput-wide v2, v1, Lcom/tapjoy/internal/gi;->e:J

    .line 157
    :cond_43
    :goto_43
    if-nez p4, :cond_48

    .line 158
    const-string v4, ""

    goto :goto_4a

    .line 157
    :cond_48
    move-object/from16 v4, p4

    .line 161
    :goto_4a
    iget-object v5, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v4, v7, v9

    const-string v10, "SELECT ROWID,count,first_time,last_time FROM UsageStats WHERE name = ? AND dimensions = ?"

    invoke-virtual {v5, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 165
    :try_start_5b
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 168
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_1c2

    const-string v11, "ROWID = "

    const-string v12, "UsageStats"

    const-string v13, "last_time"

    const-string v14, "first_time"

    const-string v15, "name"

    const-string v6, "count"

    if-eqz v10, :cond_b1

    .line 169
    :try_start_72
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 170
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 171
    const/4 v4, 0x2

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 172
    const/4 v4, 0x3

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 174
    add-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    cmp-long v0, v2, v18

    if-gez v0, :cond_97

    .line 176
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    :cond_97
    cmp-long v0, v2, v20

    if-lez v0, :cond_a2

    .line 179
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    :cond_a2
    iget-object v0, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v7, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    goto :goto_d5

    .line 183
    :cond_b1
    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "dimensions"

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    iget-object v0, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 191
    :goto_d5
    if-eqz p5, :cond_1be

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1be

    .line 192
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b7

    .line 196
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 198
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    aput-object v3, v4, v9

    .line 199
    iget-object v10, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "SELECT ROWID, * FROM UsageStatValues WHERE stat_id = ? AND name = ?"

    .line 200
    invoke-virtual {v10, v14, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_11a
    .catchall {:try_start_72 .. :try_end_11a} :catchall_1c2

    .line 203
    :try_start_11a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_11e
    .catchall {:try_start_11a .. :try_end_11e} :catchall_1b0

    const-string v14, "UsageStatValues"

    const-string v2, "max"

    const-string v9, "avg"

    if-eqz v10, :cond_178

    .line 204
    :try_start_126
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 207
    const/4 v10, 0x3

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 208
    const/4 v8, 0x4

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v21

    .line 209
    const/4 v8, 0x5

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 211
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 212
    const/4 v8, 0x1

    add-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_145
    .catchall {:try_start_126 .. :try_end_145} :catchall_1b0

    .line 213
    move-object v8, v11

    long-to-double v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v10, v21

    move-object/from16 p2, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v3

    add-double v21, v21, v10

    :try_start_155
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v7, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 214
    cmp-long v3, v12, v23

    if-lez v3, :cond_167

    .line 215
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    :cond_167
    iget-object v2, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v7, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_1a6

    .line 219
    :cond_178
    move-object/from16 p2, v4

    move-object v8, v11

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 220
    const-string v4, "stat_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    invoke-virtual {v7, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    iget-object v2, v1, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1a6
    .catchall {:try_start_155 .. :try_end_1a6} :catchall_1ae

    .line 228
    :goto_1a6
    :try_start_1a6
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 229
    move-object v11, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_e5

    .line 228
    :catchall_1ae
    move-exception v0

    goto :goto_1b3

    :catchall_1b0
    move-exception v0

    move-object/from16 p2, v4

    :goto_1b3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 229
    throw v0
    :try_end_1b7
    .catchall {:try_start_1a6 .. :try_end_1b7} :catchall_1c2

    .line 193
    :cond_1b7
    move-object v8, v11

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_e5

    .line 233
    :cond_1be
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 234
    return-void

    .line 233
    :catchall_1c2
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 234
    goto :goto_1c8

    :goto_1c7
    throw v0

    :goto_1c8
    goto :goto_1c7
.end method

.method protected finalize()V
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 63
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/gi;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    return-void
.end method
