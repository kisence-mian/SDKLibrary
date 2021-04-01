.class public Lcom/mintegral/msdk/base/b/j;
.super Lcom/mintegral/msdk/base/b/a;
.source "DailyPlayCapDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/out/Campaign;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/mintegral/msdk/base/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/j;->b:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/j;->c:Lcom/mintegral/msdk/base/b/j;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 19
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/j;
    .registers 3

    .prologue
    .line 22
    sget-object v0, Lcom/mintegral/msdk/base/b/j;->c:Lcom/mintegral/msdk/base/b/j;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/mintegral/msdk/base/b/j;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/j;->c:Lcom/mintegral/msdk/base/b/j;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/mintegral/msdk/base/b/j;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/j;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/j;->c:Lcom/mintegral/msdk/base/b/j;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/j;->c:Lcom/mintegral/msdk/base/b/j;

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

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/j;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_42
    .catchall {:try_start_1 .. :try_end_4} :catchall_4b

    move-result-object v0

    if-nez v0, :cond_9

    .line 97
    :goto_7
    monitor-exit p0

    return-void

    .line 88
    :cond_9
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 89
    const-string v1, "first_insert_timestamp"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v1, "play_time"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unit_id = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/j;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "dailyplaycap"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_41} :catch_42
    .catchall {:try_start_9 .. :try_end_41} :catchall_4b

    goto :goto_7

    .line 94
    :catch_42
    move-exception v0

    :try_start_43
    sget-object v0, Lcom/mintegral/msdk/base/b/j;->b:Ljava/lang/String;

    const-string v1, "resetTimeAndTimestamp error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_4b

    goto :goto_7

    .line 85
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 169
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT play_time FROM dailyplaycap WHERE unit_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 172
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2b} :catch_34
    .catchall {:try_start_2 .. :try_end_2b} :catchall_36

    .line 173
    const/4 v0, 0x1

    .line 181
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v0

    .line 175
    :cond_2e
    if-eqz v1, :cond_2c

    .line 176
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_36

    goto :goto_2c

    .line 181
    :catch_34
    move-exception v1

    goto :goto_2c

    .line 169
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 16

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 105
    monitor-enter p0

    .line 107
    :try_start_6
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/j;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_cc
    .catchall {:try_start_6 .. :try_end_9} :catchall_da

    move-result-object v0

    if-nez v0, :cond_e

    .line 153
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 110
    :cond_e
    :try_start_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 115
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/j;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM dailyplaycap where unit_id =\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_e6

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e6

    .line 119
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    const-string v2, "first_insert_timestamp"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 121
    const-string v2, "play_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 122
    const-wide/32 v10, 0x5265c00

    sub-long v10, v8, v10

    cmp-long v10, v10, v6

    if-lez v10, :cond_68

    .line 123
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/j;->b(Ljava/lang/String;)V

    move-wide v2, v4

    .line 127
    :cond_68
    :goto_68
    cmp-long v4, v6, v4

    if-nez v4, :cond_75

    .line 128
    const-string v4, "first_insert_timestamp"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    :cond_75
    const-string v4, "play_time"

    add-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unit_id = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/j;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "dailyplaycap"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_9e} :catch_cc
    .catchall {:try_start_e .. :try_end_9e} :catchall_da

    .line 144
    :goto_9e
    if-eqz v1, :cond_c

    .line 146
    :try_start_a0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_a5
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_e1

    goto/16 :goto_c

    .line 149
    :catch_a5
    move-exception v0

    goto/16 :goto_c

    .line 135
    :cond_a8
    :try_start_a8
    const-string v2, "first_insert_timestamp"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v2, "play_time"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v2, "unit_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/j;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "dailyplaycap"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_cb} :catch_cc
    .catchall {:try_start_a8 .. :try_end_cb} :catchall_da

    goto :goto_9e

    .line 142
    :catch_cc
    move-exception v0

    :try_start_cd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_da

    .line 144
    if-eqz v1, :cond_c

    .line 146
    :try_start_d2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_d5} :catch_d7
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_e1

    goto/16 :goto_c

    .line 149
    :catch_d7
    move-exception v0

    goto/16 :goto_c

    .line 144
    :catchall_da
    move-exception v0

    if-eqz v1, :cond_e0

    .line 146
    :try_start_dd
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e0} :catch_e4
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e1

    .line 149
    :cond_e0
    :goto_e0
    :try_start_e0
    throw v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e1

    .line 105
    :catchall_e1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_e4
    move-exception v1

    goto :goto_e0

    :cond_e6
    move-wide v2, v4

    move-wide v6, v4

    goto :goto_68
.end method

.method public final a(Ljava/lang/String;I)Z
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 43
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM dailyplaycap where unit_id =\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    monitor-enter p0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_18} :catch_63
    .catchall {:try_start_2 .. :try_end_18} :catchall_89

    .line 45
    :try_start_18
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 46
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_60

    .line 47
    if-eqz v2, :cond_5a

    :try_start_24
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5a

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 48
    const-string v1, "first_insert_timestamp"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 49
    const-string v1, "play_time"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v6, v1

    .line 50
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-eqz v1, :cond_5a

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 52
    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    cmp-long v1, v8, v4

    if-lez v1, :cond_80

    .line 53
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/j;->b(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_5a} :catch_63
    .catchall {:try_start_24 .. :try_end_5a} :catchall_89

    .line 65
    :cond_5a
    :goto_5a
    if-eqz v2, :cond_5f

    .line 67
    :try_start_5c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_90

    .line 74
    :cond_5f
    :goto_5f
    return v0

    .line 46
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw v1
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_63} :catch_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_89

    .line 62
    :catch_63
    move-exception v1

    .line 63
    :try_start_64
    sget-object v3, Lcom/mintegral/msdk/base/b/j;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isOverCap is error"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_89

    .line 65
    if-eqz v2, :cond_5f

    .line 67
    :try_start_7a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_5f

    .line 70
    :catch_7e
    move-exception v1

    goto :goto_5f

    .line 55
    :cond_80
    if-lez p2, :cond_5a

    int-to-long v4, p2

    cmp-long v1, v6, v4

    if-ltz v1, :cond_5a

    .line 56
    const/4 v0, 0x1

    goto :goto_5a

    .line 65
    :catchall_89
    move-exception v0

    if-eqz v2, :cond_8f

    .line 67
    :try_start_8c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_92

    .line 70
    :cond_8f
    :goto_8f
    throw v0

    :catch_90
    move-exception v1

    goto :goto_5f

    :catch_92
    move-exception v1

    goto :goto_8f
.end method
