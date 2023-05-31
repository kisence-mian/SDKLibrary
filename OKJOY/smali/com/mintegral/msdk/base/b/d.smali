.class public Lcom/mintegral/msdk/base/b/d;
.super Lcom/mintegral/msdk/base/b/a;
.source "CampaignClickDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/d;


# instance fields
.field private d:Lcom/mintegral/msdk/c/a;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/mintegral/msdk/base/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/d;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lcom/mintegral/msdk/base/b/d;->e:I

    .line 40
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;
    .registers 3

    .prologue
    .line 43
    sget-object v0, Lcom/mintegral/msdk/base/b/d;->c:Lcom/mintegral/msdk/base/b/d;

    if-nez v0, :cond_13

    .line 44
    const-class v1, Lcom/mintegral/msdk/base/b/d;

    monitor-enter v1

    .line 45
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/d;->c:Lcom/mintegral/msdk/base/b/d;

    if-nez v0, :cond_12

    .line 46
    new-instance v0, Lcom/mintegral/msdk/base/b/d;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/d;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/d;->c:Lcom/mintegral/msdk/base/b/d;

    .line 48
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 50
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/d;->c:Lcom/mintegral/msdk/base/b/d;

    return-object v0

    .line 48
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 478
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT id FROM campaignclick WHERE id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND unitid= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_37

    .line 483
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_3e

    .line 484
    const/4 v0, 0x1

    .line 490
    :goto_35
    monitor-exit p0

    return v0

    .line 486
    :cond_37
    if-eqz v0, :cond_3c

    .line 487
    :try_start_39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3e

    .line 490
    :cond_3c
    const/4 v0, 0x0

    goto :goto_35

    .line 478
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)J
    .registers 11

    .prologue
    const-wide/16 v0, -0x1

    .line 164
    monitor-enter p0

    if-nez p1, :cond_9

    .line 165
    const-wide/16 v0, 0x0

    .line 218
    :cond_7
    :goto_7
    monitor-exit p0

    return-wide v0

    .line 168
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getJumpResult()Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/q;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 169
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 170
    const-string v4, "id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "unitid"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "result"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "cpti"

    .line 174
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPreClickInterval()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 173
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v2, "cti"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickInterval()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v2, "package_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 179
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 194
    const-string v4, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    if-eqz v2, :cond_83

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->aT()I

    move-result v4

    if-lez v4, :cond_83

    .line 198
    const-string v4, "cpei"

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->aT()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    :cond_83
    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->aU()I

    move-result v4

    if-lez v4, :cond_9a

    .line 201
    const-string v4, "cpoci"

    .line 202
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->aU()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 201
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    :cond_9a
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/mintegral/msdk/base/b/d;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "id = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND unitid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 211
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "campaignclick"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_7

    .line 214
    :cond_d5
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "campaignclick"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_df} :catch_e5
    .catchall {:try_start_9 .. :try_end_df} :catchall_e2

    move-result-wide v0

    goto/16 :goto_7

    .line 164
    :catchall_e2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :catch_e5
    move-exception v2

    goto/16 :goto_7
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 233
    monitor-enter p0

    :try_start_2
    const-string v1, ""

    .line 234
    iget-object v2, p0, Lcom/mintegral/msdk/base/b/d;->d:Lcom/mintegral/msdk/c/a;

    if-nez v2, :cond_19

    .line 235
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 236
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v2

    iput-object v2, p0, Lcom/mintegral/msdk/base/b/d;->d:Lcom/mintegral/msdk/c/a;

    .line 238
    :cond_19
    iget-object v2, p0, Lcom/mintegral/msdk/base/b/d;->d:Lcom/mintegral/msdk/c/a;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/mintegral/msdk/base/b/d;->d:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->ae()I

    move-result v2

    if-lez v2, :cond_2d

    .line 239
    iget-object v2, p0, Lcom/mintegral/msdk/base/b/d;->d:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->ae()I

    move-result v2

    iput v2, p0, Lcom/mintegral/msdk/base/b/d;->e:I

    .line 242
    :cond_2d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SELECT id FROM campaignclick WHERE (ttc_type = 2 AND ( (cps = 1 AND unitid = \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' AND (cpti + pts) > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") OR  (cps = 0 AND (pts + cpei) > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") OR (unitid <> \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' AND (pts + cpoci) > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND cps = 1 ))  ) OR (ttc_type = 1 AND ( (unitid = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - pts ) <= ttc_ct2 ) OR (unitid <> \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - pts) <= n4 ) ) ) ORDER BY pts DESC  LIMIT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/mintegral/msdk/base/b/d;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b0
    .catchall {:try_start_2 .. :try_end_b0} :catchall_11f

    move-result-object v2

    .line 276
    :try_start_b1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b9} :catch_131
    .catchall {:try_start_b1 .. :try_end_b9} :catchall_122

    move-result-object v2

    .line 277
    if-eqz v2, :cond_e7

    :try_start_bc
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e7

    .line 278
    const/4 v0, 0x0

    .line 279
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_c6
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_e7

    const/16 v4, 0xc8

    if-ge v0, v4, :cond_e7

    .line 281
    const-string v4, "id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 282
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 283
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 288
    :cond_e7
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 289
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 290
    :goto_f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 291
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_103} :catch_104
    .catchall {:try_start_bc .. :try_end_103} :catchall_12b

    goto :goto_f0

    .line 295
    :catch_104
    move-exception v0

    move-object v0, v2

    :goto_106
    :try_start_106
    sget-object v2, Lcom/mintegral/msdk/base/b/d;->b:Ljava/lang/String;

    const-string v3, "AvoidRepetition report fail"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_106 .. :try_end_10d} :catchall_12d

    .line 297
    if-eqz v0, :cond_133

    .line 298
    :try_start_10f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_11f

    move-object v0, v1

    .line 302
    :cond_113
    :goto_113
    monitor-exit p0

    return-object v0

    .line 293
    :cond_115
    :try_start_115
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_118} :catch_104
    .catchall {:try_start_115 .. :try_end_118} :catchall_12b

    move-result-object v0

    .line 297
    if-eqz v2, :cond_113

    .line 298
    :try_start_11b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_11f

    goto :goto_113

    .line 233
    :catchall_11f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 297
    :catchall_122
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_125
    if-eqz v2, :cond_12a

    .line 298
    :try_start_127
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_12a
    throw v0
    :try_end_12b
    .catchall {:try_start_127 .. :try_end_12b} :catchall_11f

    .line 297
    :catchall_12b
    move-exception v0

    goto :goto_125

    :catchall_12d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_125

    .line 295
    :catch_131
    move-exception v2

    goto :goto_106

    :cond_133
    move-object v0, v1

    goto :goto_113
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 426
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT id FROM campaignclick WHERE id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND unitid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND cti + ts > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_40

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_40

    .line 433
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_46
    .catchall {:try_start_2 .. :try_end_3d} :catchall_51

    .line 434
    const/4 v0, 0x1

    .line 444
    :cond_3e
    :goto_3e
    monitor-exit p0

    return v0

    .line 436
    :cond_40
    if-eqz v1, :cond_3e

    .line 437
    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46
    .catchall {:try_start_42 .. :try_end_45} :catchall_51

    goto :goto_3e

    .line 441
    :catch_46
    move-exception v1

    .line 442
    :try_start_47
    sget-object v2, Lcom/mintegral/msdk/base/b/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_51

    goto :goto_3e

    .line 426
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 449
    monitor-enter p0

    .line 451
    :try_start_2
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "campaignclick"

    const/4 v2, 0x0

    const-string v3, "id=? AND unitid=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_4e
    .catchall {:try_start_2 .. :try_end_1b} :catchall_5c

    move-result-object v1

    .line 455
    if-eqz v1, :cond_47

    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_47

    .line 456
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 457
    const-string v0, "result"

    .line 458
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 457
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 461
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/q;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_40} :catch_66
    .catchall {:try_start_1e .. :try_end_40} :catchall_64

    .line 469
    if-eqz v1, :cond_45

    .line 470
    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_59

    .line 474
    :cond_45
    :goto_45
    monitor-exit p0

    return-object v0

    .line 469
    :cond_47
    if-eqz v1, :cond_4c

    .line 470
    :try_start_49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_59

    :cond_4c
    :goto_4c
    move-object v0, v9

    .line 474
    goto :goto_45

    .line 467
    :catch_4e
    move-exception v0

    move-object v1, v9

    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_64

    .line 469
    if-eqz v1, :cond_4c

    .line 470
    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_4c

    .line 449
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    .line 469
    :catchall_5c
    move-exception v0

    move-object v1, v9

    :goto_5e
    if-eqz v1, :cond_63

    .line 470
    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_63
    throw v0
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_59

    .line 469
    :catchall_64
    move-exception v0

    goto :goto_5e

    .line 467
    :catch_66
    move-exception v0

    goto :goto_50
.end method

.method public final declared-synchronized c()V
    .registers 5

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(pts not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (  ( ttc_type = 2 AND (  ( cps = 1 AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - pts) > cpti )  OR  (cps = 0 AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - pts) > cpei )  )  ) OR ( ttc_type = 1 AND  ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - pts )  > ttc_ct2 ) ) ) OR ( pts is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND  ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - ts) > cti)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaignclick"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_64} :catch_66
    .catchall {:try_start_1 .. :try_end_64} :catchall_71

    .line 109
    :goto_64
    monitor-exit p0

    return-void

    .line 106
    :catch_66
    move-exception v0

    .line 107
    :try_start_67
    sget-object v1, Lcom/mintegral/msdk/base/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_71

    goto :goto_64

    .line 73
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method
