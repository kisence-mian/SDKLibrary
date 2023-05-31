.class public Lcom/mintegral/msdk/base/b/l;
.super Lcom/mintegral/msdk/base/b/a;
.source "ExcludeInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/base/entity/f;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/mintegral/msdk/base/b/l;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 17
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/l;
    .registers 3

    .prologue
    .line 20
    sget-object v0, Lcom/mintegral/msdk/base/b/l;->b:Lcom/mintegral/msdk/base/b/l;

    if-nez v0, :cond_13

    .line 21
    const-class v1, Lcom/mintegral/msdk/base/b/l;

    monitor-enter v1

    .line 22
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/l;->b:Lcom/mintegral/msdk/base/b/l;

    if-nez v0, :cond_12

    .line 23
    new-instance v0, Lcom/mintegral/msdk/base/b/l;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/l;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/l;->b:Lcom/mintegral/msdk/base/b/l;

    .line 25
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 27
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/l;->b:Lcom/mintegral/msdk/base/b/l;

    return-object v0

    .line 25
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 59
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select id from exclude_info where unitId=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/l;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_38

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_3e
    .catchall {:try_start_2 .. :try_end_35} :catchall_43

    .line 64
    const/4 v0, 0x1

    .line 74
    :cond_36
    :goto_36
    monitor-exit p0

    return v0

    .line 66
    :cond_38
    if-eqz v1, :cond_36

    .line 67
    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_43

    goto :goto_36

    .line 72
    :catch_3e
    move-exception v1

    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_36

    .line 59
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    monitor-enter p0

    .line 84
    :try_start_2
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/l;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5d
    .catchall {:try_start_2 .. :try_end_5} :catchall_52

    move-result-object v1

    if-nez v1, :cond_a

    .line 105
    :cond_8
    :goto_8
    monitor-exit p0

    return-object v0

    .line 88
    :cond_a
    :try_start_a
    const-string v1, "select id from exclude_info where unitId=?"

    .line 89
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 90
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/l;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_5d
    .catchall {:try_start_a .. :try_end_19} :catchall_52

    move-result-object v2

    .line 91
    if-eqz v2, :cond_4c

    :try_start_1c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4c

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_60
    .catchall {:try_start_1c .. :try_end_27} :catchall_5b

    .line 93
    :goto_27
    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 94
    const-string v0, "id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3a} :catch_3b
    .catchall {:try_start_27 .. :try_end_3a} :catchall_5b

    goto :goto_27

    .line 99
    :catch_3b
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5b

    .line 101
    if-eqz v2, :cond_8

    .line 102
    :try_start_44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_8

    .line 81
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4b
    move-object v0, v1

    .line 101
    :cond_4c
    if-eqz v2, :cond_8

    .line 102
    :try_start_4e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 101
    :catchall_52
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_55
    if-eqz v2, :cond_5a

    .line 102
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_48

    .line 101
    :catchall_5b
    move-exception v0

    goto :goto_55

    .line 99
    :catch_5d
    move-exception v1

    move-object v2, v0

    goto :goto_3f

    :catch_60
    move-exception v1

    goto :goto_3f
.end method

.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/f;)V
    .registers 7

    .prologue
    .line 35
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/l;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_74
    .catchall {:try_start_1 .. :try_end_4} :catchall_79

    move-result-object v0

    if-nez v0, :cond_9

    .line 55
    :goto_7
    monitor-exit p0

    return-void

    .line 39
    :cond_9
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "time"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/f;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 42
    const-string v1, "unitId"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/f;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mintegral/msdk/base/b/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND unitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "exclude_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_73} :catch_74
    .catchall {:try_start_9 .. :try_end_73} :catchall_79

    goto :goto_7

    .line 53
    :catch_74
    move-exception v0

    :try_start_75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7

    .line 35
    :catchall_79
    move-exception v0

    monitor-exit p0

    throw v0

    .line 48
    :cond_7c
    :try_start_7c
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "exclude_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_86} :catch_74
    .catchall {:try_start_7c .. :try_end_86} :catchall_79

    goto :goto_7
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and unitId=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 118
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 119
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "exclude_info"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_38
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 124
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 115
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :catch_38
    move-exception v0

    goto :goto_33
.end method
