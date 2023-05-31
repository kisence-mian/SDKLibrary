.class public Lcom/mintegral/msdk/base/b/e;
.super Lcom/mintegral/msdk/base/b/a;
.source "CampaignClickTimeDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/base/entity/c;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/mintegral/msdk/base/b/e;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 23
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/e;
    .registers 3

    .prologue
    .line 26
    sget-object v0, Lcom/mintegral/msdk/base/b/e;->b:Lcom/mintegral/msdk/base/b/e;

    if-nez v0, :cond_13

    .line 27
    const-class v1, Lcom/mintegral/msdk/base/b/e;

    monitor-enter v1

    .line 28
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/e;->b:Lcom/mintegral/msdk/base/b/e;

    if-nez v0, :cond_12

    .line 29
    new-instance v0, Lcom/mintegral/msdk/base/b/e;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/e;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/e;->b:Lcom/mintegral/msdk/base/b/e;

    .line 31
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 33
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/e;->b:Lcom/mintegral/msdk/base/b/e;

    return-object v0

    .line 31
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final declared-synchronized c()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    const-string v1, "select * from click_time LIMIT 20"

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/mintegral/msdk/base/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16a

    move-result-object v3

    if-nez v3, :cond_d

    .line 80
    const/4 v1, 0x0

    .line 143
    :goto_b
    monitor-exit p0

    return-object v1

    .line 83
    :cond_d
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/mintegral/msdk/base/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_160
    .catchall {:try_start_d .. :try_end_15} :catchall_16d

    move-result-object v20

    .line 84
    if-eqz v20, :cond_158

    :try_start_18
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_158

    .line 85
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const/4 v1, 0x0

    .line 87
    :goto_24
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 88
    const/16 v2, 0x14

    if-ge v1, v2, :cond_14f

    .line 91
    add-int/lit8 v21, v1, 0x1

    .line 92
    const-string v1, "id"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 93
    const-string v1, "campaignId"

    .line 94
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 93
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    const-string v1, "click_type"

    .line 96
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 95
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 97
    const-string v1, "click_duration"

    .line 98
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 97
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    const-string v1, "last_url"

    .line 100
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 99
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    const-string v1, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 102
    const-string v1, "code"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 103
    const-string v1, "header"

    .line 104
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 103
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    const-string v1, "exception"

    .line 106
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 105
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 107
    const-string v1, "content"

    .line 108
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 107
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 109
    const-string v1, "unit_id"

    .line 110
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 109
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 111
    const-string v1, "rid"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    const-string v1, "landing_type"

    .line 113
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 112
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 114
    const-string v1, "link_type"

    .line 115
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 114
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 116
    const-string v1, "network_type"

    .line 117
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 116
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 118
    const-string v1, "network_str"

    .line 119
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 118
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 120
    const-string v1, "market_result"

    .line 121
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 120
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 122
    const-string v1, "click_time"

    .line 123
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 122
    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 124
    new-instance v1, Lcom/mintegral/msdk/base/entity/c;

    invoke-direct/range {v1 .. v18}, Lcom/mintegral/msdk/base/entity/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    .line 128
    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/mintegral/msdk/base/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "click_time"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_14b} :catch_17c
    .catchall {:try_start_18 .. :try_end_14b} :catchall_176

    move/from16 v1, v21

    .line 131
    goto/16 :goto_24

    .line 138
    :cond_14f
    if-eqz v20, :cond_154

    .line 139
    :try_start_151
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_154
    move-object/from16 v1, v19

    .line 133
    goto/16 :goto_b

    .line 138
    :cond_158
    if-eqz v20, :cond_15d

    .line 139
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_15d
    .catchall {:try_start_151 .. :try_end_15d} :catchall_16a

    .line 143
    :cond_15d
    :goto_15d
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 136
    :catch_160
    move-exception v1

    :goto_161
    :try_start_161
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_164
    .catchall {:try_start_161 .. :try_end_164} :catchall_178

    .line 138
    if-eqz v2, :cond_15d

    .line 139
    :try_start_166
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_169
    .catchall {:try_start_166 .. :try_end_169} :catchall_16a

    goto :goto_15d

    .line 76
    :catchall_16a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 138
    :catchall_16d
    move-exception v1

    move-object/from16 v20, v2

    :goto_170
    if-eqz v20, :cond_175

    .line 139
    :try_start_172
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_175
    throw v1
    :try_end_176
    .catchall {:try_start_172 .. :try_end_176} :catchall_16a

    .line 138
    :catchall_176
    move-exception v1

    goto :goto_170

    :catchall_178
    move-exception v1

    move-object/from16 v20, v2

    goto :goto_170

    .line 136
    :catch_17c
    move-exception v1

    move-object/from16 v2, v20

    goto :goto_161
.end method

.method public final declared-synchronized d()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 177
    monitor-enter p0

    .line 180
    :try_start_3
    const-string v1, "select count(*) from click_time"

    .line 181
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_1b

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 184
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_22
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2f

    move-result v0

    .line 190
    :cond_1b
    if-eqz v2, :cond_20

    .line 191
    :try_start_1d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2c

    .line 195
    :cond_20
    :goto_20
    monitor-exit p0

    return v0

    .line 188
    :catch_22
    move-exception v1

    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2f

    .line 190
    if-eqz v2, :cond_20

    .line 191
    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_20

    .line 177
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 190
    :catchall_2f
    move-exception v0

    if-eqz v2, :cond_35

    .line 191
    :try_start_32
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_2c
.end method
