.class public Lcom/mintegral/msdk/base/b/t;
.super Lcom/mintegral/msdk/base/b/a;
.source "SettingCampaignDao.java"


# static fields
.field private static b:Lcom/mintegral/msdk/base/b/t;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/t;->b:Lcom/mintegral/msdk/base/b/t;

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

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/t;
    .registers 3

    .prologue
    .line 25
    sget-object v0, Lcom/mintegral/msdk/base/b/t;->b:Lcom/mintegral/msdk/base/b/t;

    if-nez v0, :cond_13

    .line 26
    const-class v1, Lcom/mintegral/msdk/base/b/t;

    monitor-enter v1

    .line 27
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/t;->b:Lcom/mintegral/msdk/base/b/t;

    if-nez v0, :cond_12

    .line 28
    new-instance v0, Lcom/mintegral/msdk/base/b/t;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/t;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/t;->b:Lcom/mintegral/msdk/base/b/t;

    .line 30
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 32
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/t;->b:Lcom/mintegral/msdk/base/b/t;

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
    const-string v1, "id=?"

    .line 72
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 73
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->b()Landroid/database/sqlite/SQLiteDatabase;
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
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "settingCampaign"

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

.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/o;)J
    .registers 8

    .prologue
    const-wide/16 v0, -0x1

    .line 140
    monitor-enter p0

    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 141
    const-string v3, "url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v3, "method"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/o;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "data"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/o;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "iex"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_43
    .catchall {:try_start_3 .. :try_end_2f} :catchall_40

    move-result-object v3

    if-nez v3, :cond_34

    .line 151
    :goto_32
    monitor-exit p0

    return-wide v0

    .line 148
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "settingCampaign"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_43
    .catchall {:try_start_34 .. :try_end_3e} :catchall_40

    move-result-wide v0

    goto :goto_32

    .line 140
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :catch_43
    move-exception v2

    goto :goto_32
.end method

.method public final declared-synchronized b(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 84
    monitor-enter p0

    :try_start_2
    const-string v1, "iex=?"

    .line 85
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 86
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_20
    .catchall {:try_start_2 .. :try_end_d} :catchall_1d

    move-result-object v3

    if-nez v3, :cond_12

    .line 92
    :goto_10
    monitor-exit p0

    return v0

    .line 89
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "settingCampaign"

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_20
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1d

    move-result v0

    goto :goto_10

    .line 84
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :catch_20
    move-exception v1

    goto :goto_10
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
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "settingCampaign"

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
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 60
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_1a
    .catchall {:try_start_2 .. :try_end_5} :catchall_17

    move-result-object v1

    if-nez v1, :cond_a

    .line 66
    :goto_8
    monitor-exit p0

    return v0

    .line 63
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "settingCampaign"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_1a
    .catchall {:try_start_a .. :try_end_15} :catchall_17

    move-result v0

    goto :goto_8

    .line 60
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 66
    :catch_1a
    move-exception v1

    goto :goto_8
.end method

.method public final declared-synchronized e()Ljava/util/List;
    .registers 10
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
    const/4 v1, 0x0

    .line 110
    monitor-enter p0

    .line 113
    :try_start_2
    const-string v0, "select * from settingCampaign ORDER BY iex LIMIT 3"

    .line 114
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/t;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_80
    .catchall {:try_start_2 .. :try_end_c} :catchall_73

    move-result-object v7

    .line 115
    if-eqz v7, :cond_8c

    :try_start_f
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8c

    .line 116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_86
    .catchall {:try_start_f .. :try_end_1a} :catchall_7b

    .line 117
    :goto_1a
    :try_start_1a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 118
    const-string v0, "url"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string v0, "data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    const-string v0, "method"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v0, "iex"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 122
    const-string v0, "id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 123
    new-instance v0, Lcom/mintegral/msdk/base/entity/o;

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_5a} :catch_5b
    .catchall {:try_start_1a .. :try_end_5a} :catchall_7b

    goto :goto_1a

    .line 128
    :catch_5b
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v0, v6

    :goto_5f
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_7d

    .line 130
    if-eqz v2, :cond_67

    .line 131
    :try_start_64
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_70

    .line 134
    :cond_67
    :goto_67
    monitor-exit p0

    return-object v0

    :cond_69
    move-object v0, v6

    .line 130
    :goto_6a
    if-eqz v7, :cond_67

    .line 131
    :try_start_6c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_67

    .line 110
    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0

    .line 130
    :catchall_73
    move-exception v0

    move-object v7, v1

    :goto_75
    if-eqz v7, :cond_7a

    .line 131
    :try_start_77
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v0
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_70

    .line 130
    :catchall_7b
    move-exception v0

    goto :goto_75

    :catchall_7d
    move-exception v0

    move-object v7, v2

    goto :goto_75

    .line 128
    :catch_80
    move-exception v0

    move-object v2, v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5f

    :catch_86
    move-exception v0

    move-object v2, v7

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5f

    :cond_8c
    move-object v0, v1

    goto :goto_6a
.end method
