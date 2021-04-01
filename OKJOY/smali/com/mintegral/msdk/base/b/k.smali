.class public Lcom/mintegral/msdk/base/b/k;
.super Lcom/mintegral/msdk/base/b/a;
.source "DisplayResourceTypeDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/base/entity/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/mintegral/msdk/base/b/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/k;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/k;
    .registers 3

    .prologue
    .line 31
    sget-object v0, Lcom/mintegral/msdk/base/b/k;->c:Lcom/mintegral/msdk/base/b/k;

    if-nez v0, :cond_13

    .line 32
    const-class v1, Lcom/mintegral/msdk/base/b/k;

    monitor-enter v1

    .line 33
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/k;->c:Lcom/mintegral/msdk/base/b/k;

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Lcom/mintegral/msdk/base/b/k;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/k;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/k;->c:Lcom/mintegral/msdk/base/b/k;

    .line 36
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 38
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/k;->c:Lcom/mintegral/msdk/base/b/k;

    return-object v0

    .line 36
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized a(J)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 121
    monitor-enter p0

    .line 122
    const-wide/32 v2, 0x240c8400

    sub-long v2, p1, v2

    .line 123
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "select * from display_resource_type where click_time >= "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/k;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_75

    move-result-object v2

    if-nez v2, :cond_1e

    .line 149
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-object v0

    .line 129
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_78
    .catchall {:try_start_1e .. :try_end_26} :catchall_83

    move-result-object v9

    .line 130
    if-eqz v9, :cond_6f

    :try_start_29
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 131
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_91
    .catchall {:try_start_29 .. :try_end_38} :catchall_8c

    .line 133
    :cond_38
    :try_start_38
    const-string v0, "click_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 134
    const-string v0, "campaign_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 135
    const-string v0, "resource_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 136
    const-string v0, "is_click"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 137
    new-instance v1, Lcom/mintegral/msdk/base/entity/e;

    invoke-direct/range {v1 .. v7}, Lcom/mintegral/msdk/base/entity/e;-><init>(JJII)V

    .line 139
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_6b} :catch_94
    .catchall {:try_start_38 .. :try_end_6b} :catchall_8c

    move-result v0

    if-nez v0, :cond_38

    move-object v0, v8

    .line 145
    :cond_6f
    if-eqz v9, :cond_1c

    .line 146
    :try_start_71
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_1c

    .line 121
    :catchall_75
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :catch_78
    move-exception v1

    move-object v2, v0

    :goto_7a
    :try_start_7a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8e

    .line 145
    if-eqz v2, :cond_1c

    .line 146
    :try_start_7f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    .line 145
    :catchall_83
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_86
    if-eqz v9, :cond_8b

    .line 146
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8b
    throw v0
    :try_end_8c
    .catchall {:try_start_7f .. :try_end_8c} :catchall_75

    .line 145
    :catchall_8c
    move-exception v0

    goto :goto_86

    :catchall_8e
    move-exception v0

    move-object v9, v2

    goto :goto_86

    .line 143
    :catch_91
    move-exception v1

    move-object v2, v9

    goto :goto_7a

    :catch_94
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    move-object v0, v8

    goto :goto_7a
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/e;)V
    .registers 6

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 48
    const-string v1, "campaign_id"

    iget-wide v2, p1, Lcom/mintegral/msdk/base/entity/e;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    const-string v1, "click_time"

    iget-wide v2, p1, Lcom/mintegral/msdk/base/entity/e;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v1, "is_click"

    iget v2, p1, Lcom/mintegral/msdk/base/entity/e;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    const-string v1, "resource_type"

    iget v2, p1, Lcom/mintegral/msdk/base/entity/e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/k;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_45
    .catchall {:try_start_1 .. :try_end_35} :catchall_4a

    move-result-object v1

    if-nez v1, :cond_3a

    .line 59
    :goto_38
    monitor-exit p0

    return-void

    .line 55
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/k;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "display_resource_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_44} :catch_45
    .catchall {:try_start_3a .. :try_end_44} :catchall_4a

    goto :goto_38

    .line 57
    :catch_45
    move-exception v0

    :try_start_46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_38

    .line 47
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .registers 16

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 67
    invoke-direct {p0, v6, v7}, Lcom/mintegral/msdk/base/b/k;->a(J)Ljava/util/List;

    move-result-object v3

    .line 68
    if-nez v3, :cond_d

    .line 69
    const-string v2, ""

    .line 113
    :goto_c
    return-object v2

    .line 72
    :cond_d
    const/4 v2, 0x7

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "1"

    aput-object v4, v8, v2

    const/4 v2, 0x1

    const-string v4, "2"

    aput-object v4, v8, v2

    const/4 v2, 0x2

    const-string v4, "3"

    aput-object v4, v8, v2

    const/4 v2, 0x3

    const-string v4, "4"

    aput-object v4, v8, v2

    const/4 v2, 0x4

    const-string v4, "5"

    aput-object v4, v8, v2

    const/4 v2, 0x5

    const-string v4, "6"

    aput-object v4, v8, v2

    const/4 v2, 0x6

    const-string v4, "7"

    aput-object v4, v8, v2

    .line 73
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 74
    new-instance v10, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    const/4 v2, 0x0

    :goto_3f
    const/4 v4, 0x7

    if-ge v2, v4, :cond_4d

    .line 76
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 77
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 80
    :cond_4d
    :try_start_4d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_51
    :goto_51
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mintegral/msdk/base/entity/e;

    move-object v3, v0

    .line 81
    iget-wide v4, v3, Lcom/mintegral/msdk/base/entity/e;->b:J

    sub-long v4, v6, v4

    const-wide/32 v12, 0x5265c00

    div-long/2addr v4, v12

    long-to-int v2, v4

    .line 82
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 83
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_92

    .line 84
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 85
    iget v5, v3, Lcom/mintegral/msdk/base/entity/e;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v3, v3, Lcom/mintegral/msdk/base/entity/e;->d:I

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_87} :catch_88

    goto :goto_51

    .line 111
    :catch_88
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 113
    :cond_8c
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    .line 88
    :cond_92
    const/4 v4, 0x1

    .line 89
    const/4 v5, 0x0

    :goto_94
    :try_start_94
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_bb

    .line 90
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 91
    iget v13, v3, Lcom/mintegral/msdk/base/entity/e;->c:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 92
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d1

    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_bb

    iget v5, v3, Lcom/mintegral/msdk/base/entity/e;->d:I

    const/4 v14, 0x1

    if-ne v5, v14, :cond_bb

    .line 95
    iget v5, v3, Lcom/mintegral/msdk/base/entity/e;->d:I

    invoke-virtual {v12, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    :cond_bb
    if-eqz v4, :cond_51

    .line 101
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 102
    iget v5, v3, Lcom/mintegral/msdk/base/entity/e;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v3, v3, Lcom/mintegral/msdk/base/entity/e;->d:I

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_51

    .line 89
    :cond_d1
    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 107
    :cond_d4
    const/4 v2, 0x0

    :goto_d5
    const/4 v3, 0x7

    if-ge v2, v3, :cond_8c

    .line 108
    aget-object v3, v8, v2

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_94 .. :try_end_e1} :catch_88

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5
.end method
