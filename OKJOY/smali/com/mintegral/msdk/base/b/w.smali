.class public Lcom/mintegral/msdk/base/b/w;
.super Lcom/mintegral/msdk/base/b/a;
.source "VideoReportDataDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/base/entity/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/w;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/mintegral/msdk/base/b/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/w;->b:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/w;->c:Lcom/mintegral/msdk/base/b/w;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 29
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;
    .registers 3

    .prologue
    .line 34
    sget-object v0, Lcom/mintegral/msdk/base/b/w;->c:Lcom/mintegral/msdk/base/b/w;

    if-nez v0, :cond_13

    .line 35
    const-class v1, Lcom/mintegral/msdk/base/b/w;

    monitor-enter v1

    .line 36
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/w;->c:Lcom/mintegral/msdk/base/b/w;

    if-nez v0, :cond_12

    .line 37
    new-instance v0, Lcom/mintegral/msdk/base/b/w;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/w;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/w;->c:Lcom/mintegral/msdk/base/b/w;

    .line 39
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 41
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/w;->c:Lcom/mintegral/msdk/base/b/w;

    return-object v0

    .line 39
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/q;)J
    .registers 6

    .prologue
    .line 264
    monitor-enter p0

    if-eqz p1, :cond_1b0

    .line 265
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    const-string v1, "key"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "networkType"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string v1, "network_str"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "isCompleteView"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v1, "watchedMillis"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v1, "videoLength"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 273
    const-string v1, "offerUrl"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_67
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 276
    const-string v1, "reason"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_80
    const-string v1, "result"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->w()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v1, "duration"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "videoSize"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->f()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c1

    .line 284
    const-string v2, "endcard_url"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_c1
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->e()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d6

    .line 288
    const-string v2, "video_url"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_d6
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->j()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_eb

    .line 292
    const-string v2, "rid"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_eb
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->i()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_100

    .line 296
    const-string v2, "template_url"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_100
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->d()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_115

    .line 301
    const-string v2, "image_url"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_115
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->h()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12a

    .line 305
    const-string v2, "ad_type"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_12a
    const-string v1, "unitId"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "campaignId"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "2000039"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_157

    .line 310
    invoke-static {p1}, Lcom/mintegral/msdk/base/entity/q;->g(Lcom/mintegral/msdk/base/entity/q;)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 312
    const-string v2, "h5_click_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_157
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->a()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16c

    .line 318
    const-string v2, "resource_type"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_16c
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->b()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_181

    .line 323
    const-string v2, "device_id"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_181
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/q;->c()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_196

    .line 328
    const-string v2, "creative"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_196
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/w;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "reward_report"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a0} :catch_1a3
    .catchall {:try_start_3 .. :try_end_1a0} :catchall_1b3

    move-result-wide v0

    .line 337
    :goto_1a1
    monitor-exit p0

    return-wide v0

    .line 333
    :catch_1a3
    move-exception v0

    .line 334
    :try_start_1a4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    sget-object v1, Lcom/mintegral/msdk/base/b/w;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b0
    .catchall {:try_start_1a4 .. :try_end_1b0} :catchall_1b3

    .line 337
    :cond_1b0
    const-wide/16 v0, -0x1

    goto :goto_1a1

    .line 264
    :catchall_1b3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_204

    move-result v1

    if-nez v1, :cond_19d

    .line 50
    const/4 v9, 0x0

    .line 53
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/mintegral/msdk/base/b/w;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "reward_report"

    const/4 v3, 0x0

    const-string v4, "key=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_349
    .catchall {:try_start_8 .. :try_end_1d} :catchall_33f

    move-result-object v20

    .line 55
    if-eqz v20, :cond_338

    :try_start_20
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_338

    .line 56
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 57
    :goto_2b
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_32f

    .line 58
    const-string v1, "key"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    const-string v1, "networkType"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 60
    const-string v1, "network_str"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 61
    const-string v1, "isCompleteView"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 62
    const-string v1, "watchedMillis"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 63
    const-string v1, "videoLength"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 64
    const-string v1, "offerUrl"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    const-string v1, "reason"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    const-string v1, "result"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 67
    const-string v1, "duration"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 68
    const-string v1, "videoSize"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 70
    const-string v1, "campaignId"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 72
    const-string v1, "video_url"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 74
    const-string v1, "unitId"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 75
    const-string v1, "rid"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 76
    const-string v1, "ad_type"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 77
    const-string v1, "resource_type"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    const-string v1, "device_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 79
    const-string v1, "creative"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 81
    const/4 v1, 0x0

    .line 82
    const-string v11, "2000021"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a0

    .line 83
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct/range {v1 .. v6}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->e(Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 157
    :cond_15d
    :goto_15d
    if-eqz v1, :cond_164

    .line 158
    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_164
    const-string v1, "id"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/mintegral/msdk/base/b/w;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "reward_report"

    const-string v4, "id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_187} :catch_189
    .catchall {:try_start_20 .. :try_end_187} :catchall_1fd

    goto/16 :goto_2b

    .line 166
    :catch_189
    move-exception v1

    move-object/from16 v2, v20

    .line 167
    :goto_18c
    :try_start_18c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    sget-object v3, Lcom/mintegral/msdk/base/b/w;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_198
    .catchall {:try_start_18c .. :try_end_198} :catchall_344

    .line 170
    if-eqz v2, :cond_19d

    .line 171
    :try_start_19a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_19d
    .catchall {:try_start_19a .. :try_end_19d} :catchall_204

    .line 176
    :cond_19d
    :goto_19d
    const/4 v1, 0x0

    :goto_19e
    monitor-exit p0

    return-object v1

    .line 89
    :cond_1a0
    :try_start_1a0
    const-string v11, "2000022"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d6

    .line 90
    new-instance v7, Lcom/mintegral/msdk/base/entity/q;

    move-object v8, v2

    move v9, v3

    move-object v11, v4

    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 93
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/base/entity/q;->e(Ljava/lang/String;)V

    .line 95
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v7, v5}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    move-object v1, v7

    goto :goto_15d

    .line 100
    :cond_1d6
    const-string v11, "2000025"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ec

    .line 101
    new-instance v7, Lcom/mintegral/msdk/base/entity/q;

    move-object v8, v2

    move v9, v3

    move-object v11, v4

    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    move-object v1, v7

    goto/16 :goto_15d

    .line 103
    :cond_1ec
    const-string v10, "2000024"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_207

    .line 104
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct/range {v1 .. v6}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1fb} :catch_189
    .catchall {:try_start_1a0 .. :try_end_1fb} :catchall_1fd

    goto/16 :goto_15d

    .line 170
    :catchall_1fd
    move-exception v1

    :goto_1fe
    if-eqz v20, :cond_203

    .line 171
    :try_start_200
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_203
    throw v1
    :try_end_204
    .catchall {:try_start_200 .. :try_end_204} :catchall_204

    .line 49
    :catchall_204
    move-exception v1

    monitor-exit p0

    throw v1

    .line 105
    :cond_207
    :try_start_207
    const-string v2, "2000039"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_226

    .line 106
    const-string v1, "h5_click_data"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1, v2}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 108
    :cond_226
    const-string v2, "2000043"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_278

    .line 109
    const-string v1, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 110
    const-string v1, "endcard_url"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 112
    new-instance v10, Lcom/mintegral/msdk/base/entity/q;

    move-object/from16 v11, p1

    move-object/from16 v15, v21

    move-object/from16 v17, v5

    invoke-direct/range {v10 .. v18}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 114
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_267

    .line 115
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 117
    :cond_267
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v10, v7}, Lcom/mintegral/msdk/base/entity/q;->a(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v10, v8}, Lcom/mintegral/msdk/base/entity/q;->b(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v10, v9}, Lcom/mintegral/msdk/base/entity/q;->c(Ljava/lang/String;)V

    move-object v1, v10

    .line 122
    goto/16 :goto_15d

    :cond_278
    const-string v2, "2000045"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    .line 123
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 124
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 126
    invoke-virtual {v1, v12}, Lcom/mintegral/msdk/base/entity/q;->c(I)V

    .line 127
    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 128
    const-string v2, "template_url"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->i(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, v5}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 133
    :cond_2b7
    const-string v2, "2000044"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f3

    .line 134
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 135
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 137
    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 138
    const-string v2, "image_url"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->d(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v5}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 143
    :cond_2f3
    const-string v2, "2000054"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 144
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 145
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v7}, Lcom/mintegral/msdk/base/entity/q;->a(Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v8}, Lcom/mintegral/msdk/base/entity/q;->b(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v12}, Lcom/mintegral/msdk/base/entity/q;->c(I)V

    .line 153
    invoke-virtual {v1, v5}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 155
    invoke-virtual {v1, v9}, Lcom/mintegral/msdk/base/entity/q;->c(Ljava/lang/String;)V
    :try_end_32d
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_32d} :catch_189
    .catchall {:try_start_207 .. :try_end_32d} :catchall_1fd

    goto/16 :goto_15d

    .line 170
    :cond_32f
    if-eqz v20, :cond_334

    .line 171
    :try_start_331
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_334
    move-object/from16 v1, v19

    .line 164
    goto/16 :goto_19e

    .line 170
    :cond_338
    if-eqz v20, :cond_19d

    .line 171
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_33d
    .catchall {:try_start_331 .. :try_end_33d} :catchall_204

    goto/16 :goto_19d

    .line 170
    :catchall_33f
    move-exception v1

    move-object/from16 v20, v9

    goto/16 :goto_1fe

    :catchall_344
    move-exception v1

    move-object/from16 v20, v2

    goto/16 :goto_1fe

    .line 166
    :catch_349
    move-exception v1

    move-object v2, v9

    goto/16 :goto_18c
.end method

.method public final declared-synchronized c()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 186
    monitor-enter p0

    .line 189
    :try_start_3
    const-string v1, "select count(*) from reward_report"

    .line 190
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/w;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_1b

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 193
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_22
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2f

    move-result v0

    .line 199
    :cond_1b
    if-eqz v2, :cond_20

    .line 200
    :try_start_1d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2c

    .line 204
    :cond_20
    :goto_20
    monitor-exit p0

    return v0

    .line 197
    :catch_22
    move-exception v1

    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2f

    .line 199
    if-eqz v2, :cond_20

    .line 200
    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_20

    .line 186
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :catchall_2f
    move-exception v0

    if-eqz v2, :cond_35

    .line 200
    :try_start_32
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_2c
.end method
