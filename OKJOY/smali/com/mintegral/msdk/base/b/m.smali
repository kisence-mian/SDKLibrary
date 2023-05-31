.class public Lcom/mintegral/msdk/base/b/m;
.super Lcom/mintegral/msdk/base/b/a;
.source "FrequenceDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/base/entity/g;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/mintegral/msdk/base/b/m;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 16
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;
    .registers 3

    .prologue
    .line 19
    sget-object v0, Lcom/mintegral/msdk/base/b/m;->b:Lcom/mintegral/msdk/base/b/m;

    if-nez v0, :cond_13

    .line 20
    const-class v1, Lcom/mintegral/msdk/base/b/m;

    monitor-enter v1

    .line 21
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/m;->b:Lcom/mintegral/msdk/base/b/m;

    if-nez v0, :cond_12

    .line 22
    new-instance v0, Lcom/mintegral/msdk/base/b/m;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/m;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/m;->b:Lcom/mintegral/msdk/base/b/m;

    .line 24
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 26
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/m;->b:Lcom/mintegral/msdk/base/b/m;

    return-object v0

    .line 24
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized b(Lcom/mintegral/msdk/base/entity/g;)J
    .registers 8

    .prologue
    const-wide/16 v0, -0x1

    .line 117
    monitor-enter p0

    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 118
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "fc_a"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/g;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v3, "fc_b"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/g;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v3, "ts"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/g;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string v3, "impression_count"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/g;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v3, "click_count"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/g;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v3, "ts"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/g;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/m;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_62} :catch_76
    .catchall {:try_start_3 .. :try_end_62} :catchall_73

    move-result-object v3

    if-nez v3, :cond_67

    .line 131
    :goto_65
    monitor-exit p0

    return-wide v0

    .line 128
    :cond_67
    :try_start_67
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/m;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "frequence"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_71} :catch_76
    .catchall {:try_start_67 .. :try_end_71} :catchall_73

    move-result-wide v0

    goto :goto_65

    .line 117
    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :catch_76
    move-exception v2

    goto :goto_65
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/g;)V
    .registers 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/b/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 143
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/m;->b(Lcom/mintegral/msdk/base/entity/g;)J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 145
    :cond_e
    monitor-exit p0

    return-void

    .line 142
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 70
    monitor-enter p0

    .line 73
    :try_start_3
    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4} :catch_40
    .catchall {:try_start_3 .. :try_end_4} :catchall_47

    .line 74
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT id FROM frequence WHERE id=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/m;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_33

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_33

    .line 79
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_3d

    .line 88
    if-eqz v2, :cond_30

    .line 89
    :try_start_2d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3a

    .line 79
    :cond_30
    const/4 v0, 0x1

    .line 86
    :cond_31
    :goto_31
    monitor-exit p0

    return v0

    .line 81
    :cond_33
    :try_start_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_3d

    .line 88
    if-eqz v2, :cond_31

    .line 89
    :try_start_36
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_31

    .line 70
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_40} :catch_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_47

    :catch_40
    move-exception v1

    .line 88
    if-eqz v2, :cond_31

    .line 89
    :try_start_43
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .line 88
    :catchall_47
    move-exception v0

    if-eqz v2, :cond_4d

    .line 89
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_3a
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/b/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE frequence Set impression_count=impression_count+1 WHERE id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/m;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 100
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/m;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 105
    :cond_23
    monitor-exit p0

    return-void

    .line 96
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()[J
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 31
    monitor-enter p0

    :try_start_2
    const-string v0, "SELECT id FROM frequence WHERE fc_a<impression_count"
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_47

    .line 34
    :try_start_4
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/m;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_3f
    .catchall {:try_start_4 .. :try_end_c} :catchall_4a

    move-result-object v2

    .line 36
    if-eqz v2, :cond_38

    :try_start_f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_38

    .line 37
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [J

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_1c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 40
    const-string v4, "id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v0, v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_54
    .catchall {:try_start_f .. :try_end_2e} :catchall_52

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 48
    :cond_31
    if-eqz v2, :cond_36

    .line 49
    :try_start_33
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_47

    .line 52
    :cond_36
    :goto_36
    monitor-exit p0

    return-object v0

    .line 48
    :cond_38
    if-eqz v2, :cond_3d

    .line 49
    :try_start_3a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3d
    :goto_3d
    move-object v0, v1

    .line 52
    goto :goto_36

    .line 48
    :catch_3f
    move-exception v0

    move-object v0, v1

    :goto_41
    if-eqz v0, :cond_3d

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_47

    goto :goto_3d

    .line 31
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    .line 48
    :catchall_4a
    move-exception v0

    move-object v2, v1

    :goto_4c
    if-eqz v2, :cond_51

    .line 49
    :try_start_4e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_47

    .line 48
    :catchall_52
    move-exception v0

    goto :goto_4c

    :catch_54
    move-exception v0

    move-object v0, v2

    goto :goto_41
.end method

.method public final declared-synchronized d()V
    .registers 5

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ts<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/m;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 61
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/m;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "frequence"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2d
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 66
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    .line 58
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 66
    :catch_2d
    move-exception v0

    goto :goto_28
.end method
