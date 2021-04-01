.class public Lcom/mintegral/msdk/base/b/r;
.super Lcom/mintegral/msdk/base/b/a;
.source "ReportErrorDao.java"


# static fields
.field private static b:Lcom/mintegral/msdk/base/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/r;->b:Lcom/mintegral/msdk/base/b/r;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 22
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/r;
    .registers 3

    .prologue
    .line 25
    sget-object v0, Lcom/mintegral/msdk/base/b/r;->b:Lcom/mintegral/msdk/base/b/r;

    if-nez v0, :cond_13

    .line 26
    const-class v1, Lcom/mintegral/msdk/base/b/r;

    monitor-enter v1

    .line 27
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/r;->b:Lcom/mintegral/msdk/base/b/r;

    if-nez v0, :cond_12

    .line 28
    new-instance v0, Lcom/mintegral/msdk/base/b/r;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/r;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/r;->b:Lcom/mintegral/msdk/base/b/r;

    .line 30
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 32
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/r;->b:Lcom/mintegral/msdk/base/b/r;

    return-object v0

    .line 30
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 71
    monitor-enter p0

    :try_start_2
    const-string v1, "url=?"

    .line 72
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 73
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/r;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_20
    .catchall {:try_start_2 .. :try_end_d} :catchall_1d

    move-result-object v3

    if-nez v3, :cond_12

    .line 79
    :goto_10
    monitor-exit p0

    return v0

    .line 76
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/r;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "reporterror"

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_20
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1d

    move-result v0

    goto :goto_10

    .line 71
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :catch_20
    move-exception v1

    goto :goto_10
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 97
    monitor-enter p0

    :try_start_2
    const-string v1, "url=? and data=?"

    .line 98
    if-nez p1, :cond_8

    .line 99
    const-string p1, ""

    .line 101
    :cond_8
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 102
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/r;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_27
    .catchall {:try_start_2 .. :try_end_14} :catchall_24

    move-result-object v3

    if-nez v3, :cond_19

    .line 108
    :goto_17
    monitor-exit p0

    return v0

    .line 105
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/r;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "reporterror"

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_27
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    move-result v0

    goto :goto_17

    .line 97
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :catch_27
    move-exception v1

    goto :goto_17
.end method

.method public final declared-synchronized c()I
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 36
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, " count(*) "

    aput-object v1, v2, v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_43

    .line 41
    :try_start_b
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "reporterror"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_2f
    .catchall {:try_start_b .. :try_end_19} :catchall_3b

    move-result-object v1

    .line 42
    if-eqz v1, :cond_4c

    .line 43
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 44
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_48
    .catchall {:try_start_1c .. :try_end_26} :catchall_46

    move-result v8

    move v0, v8

    .line 50
    :goto_28
    if-eqz v1, :cond_2d

    .line 51
    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_43

    .line 55
    :cond_2d
    :goto_2d
    monitor-exit p0

    return v0

    .line 48
    :catch_2f
    move-exception v0

    move-object v1, v9

    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_46

    .line 50
    if-eqz v1, :cond_4a

    .line 51
    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_2d

    .line 50
    :catchall_3b
    move-exception v0

    move-object v1, v9

    :goto_3d
    if-eqz v1, :cond_42

    .line 51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v0
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_43

    .line 36
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    .line 50
    :catchall_46
    move-exception v0

    goto :goto_3d

    .line 48
    :catch_48
    move-exception v0

    goto :goto_31

    :cond_4a
    move v0, v8

    goto :goto_2d

    :cond_4c
    move v0, v8

    goto :goto_28
.end method

.method public final declared-synchronized d()I
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 112
    monitor-enter p0

    .line 114
    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, " count(*) "

    aput-object v1, v2, v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_39

    .line 116
    :try_start_b
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "reporterror"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_26
    .catchall {:try_start_b .. :try_end_1a} :catchall_32

    move-result-object v1

    .line 117
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_3f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3c

    move-result v0

    .line 121
    if-eqz v1, :cond_24

    .line 122
    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_39

    .line 125
    :cond_24
    :goto_24
    monitor-exit p0

    return v0

    .line 119
    :catch_26
    move-exception v0

    move-object v1, v10

    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3c

    .line 121
    if-eqz v1, :cond_41

    .line 122
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_24

    .line 121
    :catchall_32
    move-exception v0

    :goto_33
    if-eqz v10, :cond_38

    .line 122
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v0
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_39

    .line 112
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :catchall_3c
    move-exception v0

    move-object v10, v1

    goto :goto_33

    .line 119
    :catch_3f
    move-exception v0

    goto :goto_28

    :cond_41
    move v0, v9

    goto :goto_24
.end method

.method public final declared-synchronized e()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 143
    monitor-enter p0

    .line 146
    :try_start_2
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "reporterror"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "20"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_7e
    .catchall {:try_start_2 .. :try_end_13} :catchall_71

    move-result-object v2

    .line 147
    if-eqz v2, :cond_87

    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_87

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_82
    .catchall {:try_start_16 .. :try_end_21} :catchall_79

    .line 149
    :goto_21
    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 150
    const-string v0, "url"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v3, "data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    const-string v4, "method"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    const-string v5, "unitId"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    new-instance v6, Lcom/mintegral/msdk/base/entity/o;

    invoke-direct {v6, v0, v4, v3, v5}, Lcom/mintegral/msdk/base/entity/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_57} :catch_58
    .catchall {:try_start_21 .. :try_end_57} :catchall_79

    goto :goto_21

    .line 159
    :catch_58
    move-exception v0

    move-object v9, v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_7b

    .line 161
    if-eqz v9, :cond_65

    .line 162
    :try_start_62
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6e

    .line 165
    :cond_65
    :goto_65
    monitor-exit p0

    return-object v0

    :cond_67
    move-object v0, v1

    .line 161
    :goto_68
    if-eqz v2, :cond_65

    .line 162
    :try_start_6a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_65

    .line 143
    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :catchall_71
    move-exception v0

    move-object v2, v9

    :goto_73
    if-eqz v2, :cond_78

    .line 162
    :try_start_75
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_78
    throw v0
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_6e

    .line 161
    :catchall_79
    move-exception v0

    goto :goto_73

    :catchall_7b
    move-exception v0

    move-object v2, v9

    goto :goto_73

    .line 159
    :catch_7e
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    goto :goto_5d

    :catch_82
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    move-object v9, v2

    goto :goto_5d

    :cond_87
    move-object v0, v9

    goto :goto_68
.end method
