.class public Lcom/umeng/analytics/pro/ak;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CacheDBHelper.java"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/umeng/analytics/pro/ak; = null

.field private static final d:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS stf(_id INTEGER PRIMARY KEY AUTOINCREMENT, _tp TEXT, _hd TEXT, _bd TEXT, _ts TEXT, _uuid TEXT, _re1 TEXT, _re2 TEXT)"

.field private static final e:Ljava/lang/String; = "DROP TABLE IF EXISTS stf"

.field private static final f:Ljava/lang/String; = "DELETE FROM stf WHERE _id IN( SELECT _id FROM stf ORDER BY _id LIMIT 1)"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/ak;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 61
    iput-object p1, p0, Lcom/umeng/analytics/pro/ak;->a:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public static final a()I
    .registers 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/ak;
    .registers 6

    .line 51
    sget-object v0, Lcom/umeng/analytics/pro/ak;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/ak;->c:Lcom/umeng/analytics/pro/ak;

    if-nez v1, :cond_12

    .line 53
    new-instance v1, Lcom/umeng/analytics/pro/ak;

    const-string v2, "umeng_zero_cache.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/umeng/analytics/pro/ak;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lcom/umeng/analytics/pro/ak;->c:Lcom/umeng/analytics/pro/ak;

    .line 55
    :cond_12
    sget-object p0, Lcom/umeng/analytics/pro/ak;->c:Lcom/umeng/analytics/pro/ak;

    monitor-exit v0

    return-object p0

    .line 56
    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 74
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS stf"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "CREATE TABLE IF NOT EXISTS stf(_id INTEGER PRIMARY KEY AUTOINCREMENT, _tp TEXT, _hd TEXT, _bd TEXT, _ts TEXT, _uuid TEXT, _re1 TEXT, _re2 TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_a} :catch_b

    .line 78
    goto :goto_c

    .line 76
    :catch_b
    move-exception p1

    .line 79
    :goto_c
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 83
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS stf(_id INTEGER PRIMARY KEY AUTOINCREMENT, _tp TEXT, _hd TEXT, _bd TEXT, _ts TEXT, _uuid TEXT, _re1 TEXT, _re2 TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_5} :catch_24
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_28

    .line 87
    :catchall_6
    move-exception p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> [\u6709\u72b6\u6001]\u521b\u5efa\u4e8c\u7ea7\u7f13\u5b58\u6570\u636e\u5e93\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 84
    :catch_24
    move-exception v0

    .line 86
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ak;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    :goto_28
    nop

    .line 90
    :goto_29
    return-void
.end method

.method private d()V
    .registers 3

    .line 173
    nop

    .line 175
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    if-eqz v1, :cond_1b

    .line 178
    :try_start_d
    const-string v1, "DELETE FROM stf WHERE _id IN( SELECT _id FROM stf ORDER BY _id LIMIT 1)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_15

    .line 182
    if-eqz v0, :cond_1b

    .line 183
    goto :goto_18

    .line 179
    :catchall_15
    move-exception v1

    .line 182
    if-eqz v0, :cond_1b

    .line 183
    :goto_18
    :try_start_18
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    .line 188
    :cond_1b
    goto :goto_1d

    .line 187
    :catchall_1c
    move-exception v0

    .line 189
    :goto_1d
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20

    .line 237
    nop

    .line 238
    nop

    .line 240
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 241
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 242
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    move-object v1, v0

    .line 247
    :cond_20
    goto :goto_22

    .line 245
    :catchall_21
    move-exception v0

    .line 248
    :goto_22
    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/pro/al;
    .registers 20

    .line 192
    move-object/from16 v10, p0

    .line 193
    nop

    .line 195
    const/4 v0, 0x6

    :try_start_4
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_uuid"

    const/4 v12, 0x0

    aput-object v0, v3, v12

    const-string v0, "_tp"

    const/4 v13, 0x1

    aput-object v0, v3, v13

    const-string v0, "_hd"

    const/4 v14, 0x2

    aput-object v0, v3, v14

    const-string v0, "_bd"

    const/4 v15, 0x3

    aput-object v0, v3, v15

    const-string v0, "_re1"

    const/4 v9, 0x4

    aput-object v0, v3, v9

    const-string v0, "_re2"

    const/4 v8, 0x5

    aput-object v0, v3, v8

    .line 197
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const-string v16, "1"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v11, 0x5

    move-object v8, v0

    const/4 v0, 0x4

    move-object/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/umeng/analytics/pro/ak;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_8e

    .line 198
    if-eqz v1, :cond_87

    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 199
    new-instance v2, Lcom/umeng/analytics/pro/al;

    invoke-direct {v2}, Lcom/umeng/analytics/pro/al;-><init>()V
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_84

    .line 201
    :try_start_45
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/umeng/analytics/pro/al;->a:Ljava/lang/String;

    .line 202
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/umeng/analytics/pro/al;->b:Ljava/lang/String;

    .line 203
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    iget-object v5, v10, Lcom/umeng/analytics/pro/ak;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/umeng/analytics/pro/al;->c:Ljava/lang/String;

    .line 206
    iget-object v3, v10, Lcom/umeng/analytics/pro/ak;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/umeng/analytics/pro/al;->d:Ljava/lang/String;

    .line 207
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/umeng/analytics/pro/al;->e:Ljava/lang/String;

    .line 208
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/umeng/analytics/pro/al;->f:Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_45 .. :try_end_7d} :catchall_7f

    move-object v11, v2

    goto :goto_88

    .line 210
    :catchall_7f
    move-exception v0

    move-object v11, v1

    move-object/from16 v17, v2

    goto :goto_92

    :catchall_84
    move-exception v0

    move-object v11, v1

    goto :goto_90

    .line 213
    :cond_87
    const/4 v11, 0x0

    :goto_88
    if-eqz v1, :cond_9c

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 215
    goto :goto_9c

    .line 210
    :catchall_8e
    move-exception v0

    const/4 v11, 0x0

    :goto_90
    const/16 v17, 0x0

    .line 211
    :goto_92
    :try_start_92
    invoke-direct/range {p0 .. p0}, Lcom/umeng/analytics/pro/ak;->d()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_9d

    .line 213
    if-eqz v11, :cond_9a

    .line 214
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_9a
    move-object/from16 v11, v17

    :cond_9c
    :goto_9c
    return-object v11

    .line 213
    :catchall_9d
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_a4

    .line 214
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_a4
    throw v1
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 5

    .line 122
    nop

    .line 124
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2e

    if-eqz v1, :cond_2d

    .line 127
    :try_start_d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 129
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 130
    const-string p1, "MobclickRT"

    const-string p2, "--->>> [\u6709\u72b6\u6001]\u63d2\u5165\u4e8c\u7ea7\u7f13\u5b58\u6570\u636e\u8bb0\u5f55 \u6210\u529f\u3002"

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_24

    .line 134
    if-eqz v0, :cond_2d

    .line 135
    :try_start_20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2a

    .line 131
    :catchall_24
    move-exception p1

    .line 134
    if-eqz v0, :cond_2d

    .line 135
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    :goto_2a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2e

    .line 141
    :cond_2d
    goto :goto_2f

    .line 140
    :catchall_2e
    move-exception p1

    .line 142
    :goto_2f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 228
    const-string p2, "_uuid=?"

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/analytics/pro/ak;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 151
    nop

    .line 153
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_26

    if-eqz v1, :cond_25

    .line 156
    :try_start_d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 157
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1c

    .line 162
    if-eqz v0, :cond_25

    .line 163
    :try_start_18
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_22

    .line 159
    :catchall_1c
    move-exception p1

    .line 162
    if-eqz v0, :cond_25

    .line 163
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    :goto_22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_26

    .line 169
    :cond_25
    goto :goto_27

    .line 168
    :catchall_26
    move-exception p1

    .line 170
    :goto_27
    return-void
.end method

.method public b()V
    .registers 3

    .line 106
    nop

    .line 108
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    .line 113
    :cond_10
    goto :goto_12

    .line 112
    :catchall_11
    move-exception v0

    .line 114
    :goto_12
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 13

    .line 257
    nop

    .line 258
    nop

    .line 260
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_3c

    .line 261
    if-eqz v10, :cond_20

    :try_start_9
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 262
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    move-object v0, p1

    goto :goto_20

    .line 267
    :catchall_1e
    move-exception p1

    goto :goto_3e

    .line 264
    :cond_20
    :goto_20
    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_1e

    if-lez p1, :cond_34

    .line 265
    const/4 p1, 0x1

    .line 270
    if-eqz v0, :cond_2e

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_2e
    if-eqz v10, :cond_33

    .line 274
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_33
    return p1

    .line 270
    :cond_34
    if-eqz v0, :cond_39

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_39
    if-eqz v10, :cond_48

    .line 274
    goto :goto_45

    .line 267
    :catchall_3c
    move-exception p1

    move-object v10, v0

    .line 270
    :goto_3e
    if-eqz v0, :cond_43

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_43
    if-eqz v10, :cond_48

    .line 274
    :goto_45
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 277
    :cond_48
    const/4 p1, 0x0

    return p1
.end method

.method public c()Z
    .registers 2

    .line 285
    const-string v0, "stf"

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ak;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 286
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ak;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 100
    return-void
.end method
