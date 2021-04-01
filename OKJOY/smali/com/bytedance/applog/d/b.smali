.class public Lcom/bytedance/applog/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/d/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/applog/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private final g:Lcom/bytedance/applog/b/h;

.field private final h:Lcom/bytedance/applog/b/i;

.field private final i:Lcom/bytedance/applog/d/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    sput v2, Lcom/bytedance/applog/d/b;->b:I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/applog/d/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =?  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "monitor_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/d/b;->c:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/applog/d/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "monitor_num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =? WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "monitor_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/d/b;->d:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/applog/d/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<? ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/d/b;->e:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/applog/d/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <= ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/d/b;->f:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    .line 113
    new-instance v0, Lcom/bytedance/applog/d/h;

    invoke-direct {v0}, Lcom/bytedance/applog/d/h;-><init>()V

    invoke-static {v0}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;)V

    .line 114
    new-instance v0, Lcom/bytedance/applog/d/c;

    invoke-direct {v0}, Lcom/bytedance/applog/d/c;-><init>()V

    invoke-static {v0}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;)V

    .line 115
    new-instance v0, Lcom/bytedance/applog/d/e;

    invoke-direct {v0, v3, v2, v3}, Lcom/bytedance/applog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;)V

    .line 116
    new-instance v0, Lcom/bytedance/applog/d/f;

    invoke-direct {v0}, Lcom/bytedance/applog/d/f;-><init>()V

    invoke-static {v0}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;)V

    .line 117
    new-instance v0, Lcom/bytedance/applog/d/j;

    invoke-direct {v0}, Lcom/bytedance/applog/d/j;-><init>()V

    invoke-static {v0}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;)V

    .line 118
    new-instance v0, Lcom/bytedance/applog/d/g;

    invoke-direct {v0}, Lcom/bytedance/applog/d/g;-><init>()V

    invoke-static {v0}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;)V

    .line 119
    new-instance v0, Lcom/bytedance/applog/d/d;

    const-string v1, ""

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/bytedance/applog/d/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;)V

    .line 120
    new-instance v0, Lcom/bytedance/applog/d/i;

    invoke-direct {v0}, Lcom/bytedance/applog/d/i;-><init>()V

    invoke-static {v0}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/b/h;)V
    .registers 8

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/bytedance/applog/d/b$a;

    const-string v1, "bd_tea_agent.db"

    const/4 v2, 0x0

    const/16 v3, 0x1d

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/bytedance/applog/d/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/bytedance/applog/d/b;->i:Lcom/bytedance/applog/d/b$a;

    .line 101
    iput-object p2, p0, Lcom/bytedance/applog/d/b;->h:Lcom/bytedance/applog/b/i;

    .line 102
    iput-object p3, p0, Lcom/bytedance/applog/d/b;->g:Lcom/bytedance/applog/b/h;

    .line 103
    return-void
.end method

.method private a([Lcom/bytedance/applog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I
    .registers 9

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 375
    :goto_1
    if-ge v1, p2, :cond_a

    .line 376
    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    aput-object v2, p5, v1

    move v1, v0

    goto :goto_1

    .line 379
    :cond_a
    const/16 v0, 0xc8

    .line 380
    :cond_c
    :goto_c
    if-lez v0, :cond_25

    array-length v2, p1

    if-ge v1, v2, :cond_25

    .line 381
    aget-object v2, p1, v1

    invoke-direct {p0, p3, v2, p4, v0}, Lcom/bytedance/applog/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/applog/d/a;Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v2

    aput-object v2, p5, v1

    .line 383
    aget-object v2, p5, v1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v0, v2

    .line 384
    if-lez v0, :cond_c

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 388
    :cond_25
    return v1
.end method

.method private a(Lorg/json/JSONObject;Lcom/bytedance/applog/d/g;)J
    .registers 17

    .prologue
    .line 324
    sget-object v0, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/bytedance/applog/d/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/i;

    .line 325
    const/4 v1, 0x0

    .line 326
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 327
    new-instance v2, Lcom/bytedance/applog/d/e;

    const-string v3, "bav2b_monitor"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/applog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 328
    const/16 v3, 0xc8

    .line 329
    const-wide/16 v12, 0x0

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :try_start_27
    iget-object v5, p0, Lcom/bytedance/applog/d/b;->i:Lcom/bytedance/applog/d/b$a;

    invoke-virtual {v5}, Lcom/bytedance/applog/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_f1
    .catchall {:try_start_27 .. :try_end_2c} :catchall_df

    move-result-object v11

    .line 334
    :try_start_2d
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 335
    invoke-static {}, Lcom/bytedance/applog/util/h;->a()J

    move-result-wide v6

    .line 336
    sget-object v1, Lcom/bytedance/applog/d/b;->e:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v11, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 337
    :goto_4b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 338
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/d/i;->a(Landroid/database/Cursor;)Lcom/bytedance/applog/d/a;

    .line 339
    invoke-virtual {v0}, Lcom/bytedance/applog/d/i;->f()Lorg/json/JSONObject;

    move-result-object v3

    .line 340
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    .line 341
    invoke-static {}, Lcom/bytedance/applog/a/e;->d()Lcom/bytedance/applog/a/l;

    move-result-object v5

    if-eqz v5, :cond_6b

    .line 342
    invoke-static {}, Lcom/bytedance/applog/a/e;->d()Lcom/bytedance/applog/a/l;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/bytedance/applog/a/l;->b(Lcom/bytedance/applog/d/a;)V

    .line 344
    :cond_6b
    iget-wide v6, v0, Lcom/bytedance/applog/d/i;->a:J

    cmp-long v5, v6, v12

    if-lez v5, :cond_73

    .line 345
    iget-wide v12, v0, Lcom/bytedance/applog/d/i;->a:J

    .line 347
    :cond_73
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v2}, Lcom/bytedance/applog/d/e;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_87} :catch_88
    .catchall {:try_start_2d .. :try_end_87} :catchall_ec

    goto :goto_4b

    .line 358
    :catch_88
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-wide v0, v12

    .line 359
    :goto_8c
    :try_start_8c
    invoke-static {v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_ee

    .line 363
    if-eqz v3, :cond_94

    .line 364
    :try_start_91
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_da

    .line 360
    :cond_94
    :goto_94
    return-wide v0

    .line 350
    :cond_95
    :try_start_95
    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 352
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_bc

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p succ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    :cond_bc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/applog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 356
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_ce} :catch_88
    .catchall {:try_start_95 .. :try_end_ce} :catchall_ec

    .line 363
    if-eqz v11, :cond_d3

    .line 364
    :try_start_d0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d5

    :cond_d3
    :goto_d3
    move-wide v0, v12

    .line 357
    goto :goto_94

    .line 366
    :catch_d5
    move-exception v0

    .line 367
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_d3

    .line 366
    :catch_da
    move-exception v2

    .line 367
    invoke-static {v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_94

    .line 362
    :catchall_df
    move-exception v0

    move-object v11, v1

    .line 363
    :goto_e1
    if-eqz v11, :cond_e6

    .line 364
    :try_start_e3
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e7

    .line 368
    :cond_e6
    :goto_e6
    throw v0

    .line 366
    :catch_e7
    move-exception v1

    .line 367
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_e6

    .line 362
    :catchall_ec
    move-exception v0

    goto :goto_e1

    :catchall_ee
    move-exception v0

    move-object v11, v3

    goto :goto_e1

    .line 358
    :catch_f1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-wide v0, v12

    goto :goto_8c
.end method

.method private a(JI)Ljava/lang/String;
    .registers 7

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE pack SET _fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bytedance/applog/d/a;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/applog/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bytedance/applog/d/a;Ljava/lang/String;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/applog/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/applog/d/a;Ljava/lang/String;I)Lorg/json/JSONArray;
    .registers 16

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 392
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 396
    :try_start_8
    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_10} :catch_8f
    .catchall {:try_start_8 .. :try_end_10} :catchall_9d

    move-result-object v4

    move-wide v0, v2

    .line 397
    :cond_12
    :goto_12
    :try_start_12
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 398
    invoke-virtual {p2, v4}, Lcom/bytedance/applog/d/a;->a(Landroid/database/Cursor;)Lcom/bytedance/applog/d/a;

    .line 399
    sget-boolean v7, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v7, :cond_40

    .line 400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryEvnetInner, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    :cond_40
    invoke-virtual {p2}, Lcom/bytedance/applog/d/a;->f()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 404
    iget-wide v8, p2, Lcom/bytedance/applog/d/a;->a:J

    cmp-long v7, v8, v0

    if-lez v7, :cond_12

    .line 405
    iget-wide v0, p2, Lcom/bytedance/applog/d/a;->a:J

    goto :goto_12

    .line 409
    :cond_50
    cmp-long v2, v0, v2

    if-lez v2, :cond_5b

    .line 410
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/a;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_5b} :catch_aa
    .catchall {:try_start_12 .. :try_end_5b} :catchall_a5

    .line 415
    :cond_5b
    if-eqz v4, :cond_60

    .line 416
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 420
    :cond_60
    :goto_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryEvent, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    return-object v6

    .line 412
    :catch_8f
    move-exception v0

    move-object v10, v0

    move-wide v0, v2

    move-object v2, v10

    move-object v3, v5

    .line 413
    :goto_94
    :try_start_94
    invoke-static {v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_a7

    .line 415
    if-eqz v3, :cond_60

    .line 416
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_60

    .line 415
    :catchall_9d
    move-exception v0

    move-object v4, v5

    :goto_9f
    if-eqz v4, :cond_a4

    .line 416
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a4
    throw v0

    .line 415
    :catchall_a5
    move-exception v0

    goto :goto_9f

    :catchall_a7
    move-exception v0

    move-object v4, v3

    goto :goto_9f

    .line 412
    :catch_aa
    move-exception v2

    move-object v3, v4

    goto :goto_94
.end method

.method private a(Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lcom/bytedance/applog/d/h;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;
    .registers 13

    .prologue
    .line 427
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    aput-object v1, v6, v0

    .line 428
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 429
    const-wide/16 v4, 0x0

    .line 430
    const/4 v1, 0x0

    .line 432
    :try_start_10
    const-string v0, "SELECT * FROM page WHERE session_id=? LIMIT 500"

    invoke-virtual {p4, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_be
    .catchall {:try_start_10 .. :try_end_15} :catchall_cb

    move-result-object v3

    .line 433
    const/4 v0, 0x0

    move v2, v0

    move-wide v0, v4

    .line 434
    :goto_19
    :try_start_19
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 435
    invoke-virtual {p3, v3}, Lcom/bytedance/applog/d/h;->a(Landroid/database/Cursor;)Lcom/bytedance/applog/d/a;

    .line 436
    sget-boolean v2, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v2, :cond_47

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryPageInner, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    :cond_47
    invoke-virtual {p3}, Lcom/bytedance/applog/d/h;->i()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 441
    invoke-virtual {p3}, Lcom/bytedance/applog/d/h;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 445
    :goto_54
    const/4 v2, 0x1

    goto :goto_19

    .line 443
    :cond_56
    iget-wide v4, p3, Lcom/bytedance/applog/d/h;->h:J

    add-long/2addr v0, v4

    goto :goto_54

    .line 448
    :cond_5a
    if-eqz v2, :cond_61

    .line 449
    const-string v2, "DELETE FROM page WHERE session_id=?"

    invoke-virtual {p4, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_61} :catch_d8
    .catchall {:try_start_19 .. :try_end_61} :catchall_d6

    .line 454
    :cond_61
    if-eqz v3, :cond_66

    .line 455
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_66
    :goto_66
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_94

    .line 461
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_d3

    .line 462
    :goto_72
    iput-wide v0, p2, Lcom/bytedance/applog/d/j;->h:J

    .line 463
    iget-object v2, p1, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    iput-object v2, p2, Lcom/bytedance/applog/d/j;->c:Ljava/lang/String;

    .line 464
    iget-wide v2, p1, Lcom/bytedance/applog/d/f;->a:J

    iput-wide v2, p2, Lcom/bytedance/applog/d/j;->a:J

    .line 465
    iget-wide v2, p1, Lcom/bytedance/applog/d/f;->a:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p2, Lcom/bytedance/applog/d/j;->i:J

    .line 466
    iget-object v0, p0, Lcom/bytedance/applog/d/b;->g:Lcom/bytedance/applog/b/h;

    invoke-static {v0}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/b/h;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/bytedance/applog/d/j;->b:J

    .line 467
    iget-object v0, p1, Lcom/bytedance/applog/d/f;->e:Ljava/lang/String;

    iput-object v0, p2, Lcom/bytedance/applog/d/j;->e:Ljava/lang/String;

    .line 468
    iget-object v0, p1, Lcom/bytedance/applog/d/f;->f:Ljava/lang/String;

    iput-object v0, p2, Lcom/bytedance/applog/d/j;->f:Ljava/lang/String;

    .line 470
    :cond_94
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_bd

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryPage, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    :cond_bd
    return-object v7

    .line 451
    :catch_be
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-wide v0, v4

    .line 452
    :goto_c2
    :try_start_c2
    invoke-static {v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_d6

    .line 454
    if-eqz v3, :cond_66

    .line 455
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_66

    .line 454
    :catchall_cb
    move-exception v0

    move-object v3, v1

    :goto_cd
    if-eqz v3, :cond_d2

    .line 455
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d2
    throw v0

    .line 461
    :cond_d3
    const-wide/16 v0, 0x3e8

    goto :goto_72

    .line 454
    :catchall_d6
    move-exception v0

    goto :goto_cd

    .line 451
    :catch_d8
    move-exception v2

    goto :goto_c2
.end method

.method private a(J)V
    .registers 8

    .prologue
    .line 310
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_32

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "d succ:maxTs ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    iget-object v0, p0, Lcom/bytedance/applog/d/b;->i:Lcom/bytedance/applog/d/b$a;

    invoke-virtual {v0}, Lcom/bytedance/applog/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/bytedance/applog/d/b;->f:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    :cond_32
    return-void
.end method

.method private static a(Lcom/bytedance/applog/d/a;)V
    .registers 3

    .prologue
    .line 108
    sget-object v0, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/bytedance/applog/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method private a(Lcom/bytedance/applog/d/g;Ljava/util/HashMap;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/applog/d/g;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 587
    invoke-virtual {p1}, Lcom/bytedance/applog/d/g;->j()Ljava/lang/String;

    move-result-object v0

    .line 589
    :try_start_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 590
    const-string v0, "launch"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 591
    const-string v3, "terminate"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 592
    if-nez v0, :cond_57

    if-nez v3, :cond_57

    if-eqz p3, :cond_57

    .line 594
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 595
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSuccRate()I

    move-result v6

    if-le v5, v6, :cond_57

    .line 597
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_56

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop event,succ rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSuccRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",random num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    :cond_56
    :goto_56
    return-void

    .line 603
    :cond_57
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_6c

    .line 604
    const-string v5, "launch"

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_6c
    if-eqz v3, :cond_81

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_81

    .line 607
    const-string v0, "terminate"

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_81
    const-string v0, "log_data"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_9c

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_9c

    .line 611
    const-string v3, "log_data"

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_9c
    const-string v0, "event"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 614
    if-eqz v5, :cond_f3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_f3

    move v3, v2

    .line 615
    :goto_ab
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_f3

    .line 616
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 617
    const-string v6, "tag"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 618
    const-string v7, "label"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 620
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 621
    if-nez v0, :cond_ec

    move v0, v1

    :goto_e1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ab

    .line 621
    :cond_ec
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e1

    .line 624
    :cond_f3
    const-string v0, "event_v3"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 625
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_56

    .line 626
    :goto_101
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_56

    .line 627
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 628
    const-string v4, "event"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 629
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 630
    if-nez v0, :cond_125

    move v0, v1

    :goto_11a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_101

    .line 630
    :cond_125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_128
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_128} :catch_12c

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11a

    .line 633
    :catch_12c
    move-exception v0

    .line 634
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_56
.end method

.method private a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 645
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/bytedance/applog/util/h;->c()Z

    move-result v0

    if-nez v0, :cond_f

    .line 667
    :cond_e
    return-void

    .line 648
    :cond_f
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 649
    const/4 v2, 0x0

    .line 650
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    sget-object v1, Lcom/bytedance/applog/d/b;->c:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {p2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 652
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 653
    sget-boolean v5, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v5, :cond_76

    .line 654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i succ:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " r:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " date:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/applog/util/h;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 656
    :cond_76
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 658
    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 659
    sget-object v6, Lcom/bytedance/applog/d/b;->d:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v0, v7, v1

    const/4 v0, 0x2

    aput-object p3, v7, v0

    invoke-virtual {p2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 665
    :goto_9d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v2, v0

    .line 666
    goto/16 :goto_18

    .line 662
    :cond_a3
    new-instance v5, Lcom/bytedance/applog/d/i;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v5, v0, p3, v1}, Lcom/bytedance/applog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 663
    invoke-virtual {v5}, Lcom/bytedance/applog/d/i;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v5, v2}, Lcom/bytedance/applog/d/i;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p2, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_9d
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/applog/d/g;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 318
    iget-object v2, p0, Lcom/bytedance/applog/d/b;->h:Lcom/bytedance/applog/b/i;

    invoke-virtual {v2}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/bytedance/applog/c/b;->b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 319
    new-array v3, v0, [Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-virtual {p2}, Lcom/bytedance/applog/d/g;->i()[B

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/applog/d/b;->g:Lcom/bytedance/applog/b/h;

    invoke-static {v3, v2, v4}, Lcom/bytedance/applog/c/a;->a([Ljava/lang/String;[BLcom/bytedance/applog/b/h;)I

    move-result v2

    .line 320
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e
.end method

.method private a(Lcom/bytedance/applog/d/f;Z)Z
    .registers 4

    .prologue
    .line 176
    iget-boolean v0, p1, Lcom/bytedance/applog/d/f;->k:Z

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/applog/d/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    sget-object v0, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v1, "pack"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/g;

    .line 483
    :try_start_10
    iget-object v1, p0, Lcom/bytedance/applog/d/b;->i:Lcom/bytedance/applog/d/b$a;

    invoke-virtual {v1}, Lcom/bytedance/applog/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 484
    const-string v4, "SELECT * FROM pack ORDER BY local_time_ms DESC,_full DESC LIMIT 2"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1c} :catch_6e
    .catchall {:try_start_10 .. :try_end_1c} :catchall_64

    move-result-object v1

    .line 485
    :goto_1d
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 486
    invoke-virtual {v0}, Lcom/bytedance/applog/d/g;->g()Lcom/bytedance/applog/d/a;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/g;

    .line 487
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/d/g;->a(Landroid/database/Cursor;)Lcom/bytedance/applog/d/a;

    .line 488
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2f} :catch_30
    .catchall {:try_start_1d .. :try_end_2f} :catchall_6c

    goto :goto_1d

    .line 490
    :catch_30
    move-exception v0

    .line 491
    :goto_31
    :try_start_31
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_6c

    .line 493
    if-eqz v1, :cond_39

    .line 494
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_39
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryPack, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    return-object v3

    .line 493
    :cond_5e
    if-eqz v1, :cond_39

    .line 494
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 493
    :catchall_64
    move-exception v0

    move-object v1, v2

    :goto_66
    if-eqz v1, :cond_6b

    .line 494
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6b
    throw v0

    .line 493
    :catchall_6c
    move-exception v0

    goto :goto_66

    .line 490
    :catch_6e
    move-exception v0

    move-object v1, v2

    goto :goto_31
.end method

.method public a(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 292
    sget v0, Lcom/bytedance/applog/d/b;->b:I

    if-lez v0, :cond_5b

    .line 293
    new-instance v1, Lcom/bytedance/applog/d/g;

    invoke-direct {v1}, Lcom/bytedance/applog/d/g;-><init>()V

    .line 294
    sget v0, Lcom/bytedance/applog/d/b;->b:I

    .line 295
    new-instance v2, Lcom/bytedance/applog/d/i;

    const-string v3, "db_monitor"

    const-string v4, "db_fail"

    invoke-direct {v2, v3, v4, v0}, Lcom/bytedance/applog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    new-instance v3, Lcom/bytedance/applog/d/e;

    const-string v4, "bav2b_monitor"

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/bytedance/applog/d/i;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v6, v2}, Lcom/bytedance/applog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/bytedance/applog/a/e;->d()Lcom/bytedance/applog/a/l;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 298
    invoke-static {}, Lcom/bytedance/applog/a/e;->d()Lcom/bytedance/applog/a/l;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bytedance/applog/a/l;->b(Lcom/bytedance/applog/d/a;)V

    .line 300
    :cond_32
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 301
    invoke-virtual {v3}, Lcom/bytedance/applog/d/e;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/applog/d/b;->h:Lcom/bytedance/applog/b/i;

    invoke-virtual {v4}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v10, v5

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/applog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 303
    invoke-direct {p0, p1, v1}, Lcom/bytedance/applog/d/b;->a(Landroid/content/Context;Lcom/bytedance/applog/d/g;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 304
    sget v1, Lcom/bytedance/applog/d/b;->b:I

    sub-int v0, v1, v0

    sput v0, Lcom/bytedance/applog/d/b;->b:I

    .line 307
    :cond_5b
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    .line 270
    invoke-static {}, Lcom/bytedance/applog/util/h;->d()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 271
    sget-object v0, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v1, "pack"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/g;

    .line 272
    invoke-direct {p0, p2, v0}, Lcom/bytedance/applog/d/b;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/d/g;)J

    move-result-wide v2

    .line 273
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_32

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/bytedance/applog/d/b;->a(Landroid/content/Context;Lcom/bytedance/applog/d/g;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 275
    invoke-direct {p0, v2, v3}, Lcom/bytedance/applog/d/b;->a(J)V

    .line 286
    :cond_23
    :goto_23
    return-void

    .line 277
    :cond_24
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_2e

    .line 278
    const-string v0, "s succ:fail"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    :cond_2e
    invoke-static {}, Lcom/bytedance/applog/util/h;->b()V

    goto :goto_23

    .line 283
    :cond_32
    invoke-static {}, Lcom/bytedance/applog/util/h;->e()V

    goto :goto_23
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 8
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/applog/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 673
    :try_start_1b
    iget-object v0, p0, Lcom/bytedance/applog/d/b;->i:Lcom/bytedance/applog/d/b$a;

    invoke-virtual {v0}, Lcom/bytedance/applog/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_76
    .catchall {:try_start_1b .. :try_end_20} :catchall_67

    move-result-object v1

    .line 674
    :try_start_21
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 676
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/a;

    .line 677
    invoke-virtual {v0}, Lcom/bytedance/applog/d/a;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/applog/d/a;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_40} :catch_41
    .catchall {:try_start_21 .. :try_end_40} :catchall_74

    goto :goto_28

    .line 680
    :catch_41
    move-exception v0

    .line 681
    :goto_42
    :try_start_42
    sget v2, Lcom/bytedance/applog/d/b;->b:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lcom/bytedance/applog/d/b;->b:I

    .line 682
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_74

    .line 685
    if-eqz v1, :cond_53

    .line 686
    :try_start_50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_62

    .line 692
    :cond_53
    :goto_53
    return-void

    .line 679
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_41
    .catchall {:try_start_54 .. :try_end_57} :catchall_74

    .line 685
    if-eqz v1, :cond_53

    .line 686
    :try_start_59
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_53

    .line 688
    :catch_5d
    move-exception v0

    .line 689
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_53

    .line 688
    :catch_62
    move-exception v0

    .line 689
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_53

    .line 684
    :catchall_67
    move-exception v0

    move-object v1, v2

    .line 685
    :goto_69
    if-eqz v1, :cond_6e

    .line 686
    :try_start_6b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 690
    :cond_6e
    :goto_6e
    throw v0

    .line 688
    :catch_6f
    move-exception v1

    .line 689
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_6e

    .line 684
    :catchall_74
    move-exception v0

    goto :goto_69

    .line 680
    :catch_76
    move-exception v0

    move-object v1, v2

    goto :goto_42
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/applog/d/g;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/applog/d/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResult, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 506
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 508
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 510
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 512
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 513
    if-eqz p1, :cond_7b

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7b

    .line 514
    const/4 v2, 0x0

    move v3, v2

    :goto_48
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_7b

    .line 515
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/d/g;

    iget v2, v2, Lcom/bytedance/applog/d/g;->i:I

    if-nez v2, :cond_6c

    .line 517
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/d/g;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v4}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/g;Ljava/util/HashMap;Z)V

    .line 514
    :goto_68
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_48

    .line 520
    :cond_6c
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/d/g;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v4}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/g;Ljava/util/HashMap;Z)V

    goto :goto_68

    .line 524
    :cond_7b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 525
    :goto_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 526
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/d/g;

    .line 527
    iget v3, v2, Lcom/bytedance/applog/d/g;->i:I

    if-nez v3, :cond_b2

    .line 529
    iget v3, v2, Lcom/bytedance/applog/d/g;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 530
    if-nez v3, :cond_ab

    .line 531
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 532
    iget v10, v2, Lcom/bytedance/applog/d/g;->j:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_ab
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v10}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/g;Ljava/util/HashMap;Z)V

    goto :goto_7f

    .line 535
    :cond_b2
    iget v3, v2, Lcom/bytedance/applog/d/g;->i:I

    add-int/lit8 v3, v3, 0x1

    int-to-long v10, v3

    const-wide/16 v12, 0x5

    cmp-long v3, v10, v12

    if-lez v3, :cond_cc

    .line 537
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v3}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/g;Ljava/util/HashMap;Z)V

    .line 538
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_7f

    .line 542
    :cond_cc
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/g;Ljava/util/HashMap;Z)V

    goto :goto_7f

    .line 545
    :cond_d3
    const/4 v3, 0x0

    .line 547
    :try_start_d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/applog/d/b;->i:Lcom/bytedance/applog/d/b$a;

    invoke-virtual {v2}, Lcom/bytedance/applog/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_db} :catch_193
    .catchall {:try_start_d4 .. :try_end_db} :catchall_18d

    move-result-object v4

    .line 548
    :try_start_dc
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 549
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/d/g;

    .line 550
    const-string v10, "DELETE FROM pack WHERE local_time_ms=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-wide v14, v2, Lcom/bytedance/applog/d/g;->a:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-virtual {v4, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_100} :catch_101
    .catchall {:try_start_dc .. :try_end_100} :catchall_12e

    goto :goto_e3

    .line 567
    :catch_101
    move-exception v2

    move-object v3, v4

    .line 568
    :goto_103
    :try_start_103
    invoke-static {v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_190

    .line 571
    if-eqz v3, :cond_10b

    .line 572
    :try_start_108
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_183

    .line 578
    :cond_10b
    :goto_10b
    return-void

    .line 552
    :cond_10c
    :try_start_10c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_110
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_135

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/d/g;

    .line 553
    iget-wide v10, v2, Lcom/bytedance/applog/d/g;->a:J

    iget v12, v2, Lcom/bytedance/applog/d/g;->i:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v2, Lcom/bytedance/applog/d/g;->i:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/bytedance/applog/d/b;->a(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_12d} :catch_101
    .catchall {:try_start_10c .. :try_end_12d} :catchall_12e

    goto :goto_110

    .line 570
    :catchall_12e
    move-exception v2

    .line 571
    :goto_12f
    if-eqz v4, :cond_134

    .line 572
    :try_start_131
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_188

    .line 576
    :cond_134
    :goto_134
    throw v2

    .line 556
    :cond_135
    :try_start_135
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 557
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_13d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_159

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 558
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 559
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/bytedance/applog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_13d

    .line 561
    :cond_159
    const-string v2, "success"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v2}, Lcom/bytedance/applog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 562
    const-string v2, "retry_success"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4, v2}, Lcom/bytedance/applog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 563
    const-string v2, "13"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v2}, Lcom/bytedance/applog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 564
    const-string v2, "22"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v2}, Lcom/bytedance/applog/d/b;->a(Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 566
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_178
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_178} :catch_101
    .catchall {:try_start_135 .. :try_end_178} :catchall_12e

    .line 571
    if-eqz v4, :cond_10b

    .line 572
    :try_start_17a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_17d} :catch_17e

    goto :goto_10b

    .line 574
    :catch_17e
    move-exception v2

    .line 575
    invoke-static {v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_10b

    .line 574
    :catch_183
    move-exception v2

    .line 575
    invoke-static {v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_10b

    .line 574
    :catch_188
    move-exception v3

    .line 575
    invoke-static {v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_134

    .line 570
    :catchall_18d
    move-exception v2

    move-object v4, v3

    goto :goto_12f

    :catchall_190
    move-exception v2

    move-object v4, v3

    goto :goto_12f

    .line 567
    :catch_193
    move-exception v2

    goto/16 :goto_103
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 44

    .prologue
    .line 180
    sget-object v2, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v3, "launch"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/bytedance/applog/d/f;

    .line 181
    sget-object v2, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v3, "terminate"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/bytedance/applog/d/j;

    .line 182
    sget-object v2, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v3, "page"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/bytedance/applog/d/h;

    .line 183
    sget-object v2, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v3, "eventv3"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lcom/bytedance/applog/d/e;

    .line 184
    sget-object v2, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lcom/bytedance/applog/d/c;

    .line 185
    sget-object v2, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v3, "event_misc"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Lcom/bytedance/applog/d/d;

    .line 186
    sget-object v2, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v3, "pack"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/applog/d/g;

    .line 187
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 189
    const/4 v5, 0x0

    .line 191
    const/4 v3, 0x0

    .line 193
    :try_start_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/applog/d/b;->i:Lcom/bytedance/applog/d/b$a;

    invoke-virtual {v2}, Lcom/bytedance/applog/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 194
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 195
    const-string v2, "SELECT * FROM launch ORDER BY local_time_ms DESC LIMIT 5"

    const/4 v4, 0x0

    invoke-virtual {v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_65} :catch_232
    .catchall {:try_start_54 .. :try_end_65} :catchall_219

    move-result-object v36

    .line 196
    const-wide v6, 0x7fffffffffffffffL

    .line 197
    const-wide/high16 v2, -0x8000000000000000L

    move-object/from16 v27, v10

    move-object/from16 v12, p1

    .line 198
    :cond_71
    :goto_71
    :try_start_71
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 199
    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/d/f;->a(Landroid/database/Cursor;)Lcom/bytedance/applog/d/a;

    .line 201
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/applog/a/e;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 205
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/bytedance/applog/d/f;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bytedance/applog/d/b;->h:Lcom/bytedance/applog/b/i;

    invoke-virtual {v10}, Lcom/bytedance/applog/b/i;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ac

    move-object/from16 v0, v21

    iget v4, v0, Lcom/bytedance/applog/d/f;->h:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bytedance/applog/d/b;->h:Lcom/bytedance/applog/b/i;

    .line 206
    invoke-virtual {v10}, Lcom/bytedance/applog/b/i;->c()I

    move-result v10

    if-eq v4, v10, :cond_c7

    .line 208
    :cond_ac
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 209
    invoke-static {v4, v12}, Lcom/bytedance/applog/util/k;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 210
    const-string v10, "app_version"

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/bytedance/applog/d/f;->i:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v10, "version_code"

    move-object/from16 v0, v21

    iget v11, v0, Lcom/bytedance/applog/d/f;->h:I

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v12, v4

    .line 214
    :cond_c7
    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/bytedance/applog/d/f;->a:J

    cmp-long v4, v10, v6

    if-gez v4, :cond_238

    .line 215
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/bytedance/applog/d/f;->a:J

    move-wide/from16 v40, v6

    .line 217
    :goto_d5
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/bytedance/applog/d/f;->a:J

    cmp-long v4, v6, v2

    if-lez v4, :cond_234

    .line 218
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/bytedance/applog/d/f;->a:J

    move-wide/from16 v38, v2

    .line 221
    :goto_e3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v8, v5}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lcom/bytedance/applog/d/h;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v15

    .line 223
    const/4 v2, 0x3

    new-array v3, v2, [Lcom/bytedance/applog/d/a;

    const/4 v2, 0x0

    aput-object v34, v3, v2

    const/4 v2, 0x1

    aput-object v33, v3, v2

    const/4 v2, 0x2

    aput-object v35, v3, v2

    .line 224
    const/4 v2, 0x3

    new-array v7, v2, [Lorg/json/JSONArray;

    .line 225
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/applog/d/b;->a([Lcom/bytedance/applog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v4

    .line 227
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_19d

    .line 228
    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/bytedance/applog/d/f;->a:J

    const/4 v13, 0x0

    const/4 v2, 0x0

    aget-object v16, v7, v2

    const/4 v2, 0x1

    aget-object v17, v7, v2

    const/4 v2, 0x2

    aget-object v18, v7, v2

    invoke-virtual/range {v9 .. v18}, Lcom/bytedance/applog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 233
    :goto_11c
    sget-boolean v2, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v2, :cond_14c

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packer launch, "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_1d0

    const/4 v2, 0x1

    :goto_132
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", sid:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    :cond_14c
    const-string v6, "pack"

    const/4 v10, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/bytedance/applog/d/g;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v5, v6, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object v10, v2

    .line 239
    :cond_159
    :goto_159
    array-length v2, v3

    if-ge v4, v2, :cond_1d3

    .line 240
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/applog/d/b;->a([Lcom/bytedance/applog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v4

    .line 241
    const/4 v2, 0x0

    aget-object v2, v7, v2

    if-nez v2, :cond_175

    const/4 v2, 0x1

    aget-object v2, v7, v2

    if-nez v2, :cond_175

    const/4 v2, 0x2

    aget-object v2, v7, v2

    if-eqz v2, :cond_159

    .line 242
    :cond_175
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/bytedance/applog/d/f;->a:J

    move-wide/from16 v24, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v2, 0x0

    aget-object v30, v7, v2

    const/4 v2, 0x1

    aget-object v31, v7, v2

    const/4 v2, 0x2

    aget-object v32, v7, v2

    move-object/from16 v23, v9

    move-object/from16 v26, v12

    invoke-virtual/range {v23 .. v32}, Lcom/bytedance/applog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 243
    const-string v6, "pack"

    const/4 v11, 0x0

    invoke-virtual {v9, v10}, Lcom/bytedance/applog/d/g;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v5, v6, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object v10, v2

    goto :goto_159

    .line 230
    :cond_19d
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/bytedance/applog/d/f;->j:Z

    .line 231
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/bytedance/applog/d/f;->a:J

    move-wide/from16 v18, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v2, 0x0

    aget-object v24, v7, v2

    const/4 v2, 0x1

    aget-object v25, v7, v2

    const/4 v2, 0x2

    aget-object v26, v7, v2

    move-object/from16 v17, v9

    move-object/from16 v20, v12

    invoke-virtual/range {v17 .. v26}, Lcom/bytedance/applog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_1bc} :catch_1be
    .catchall {:try_start_71 .. :try_end_1bc} :catchall_22c

    goto/16 :goto_11c

    .line 251
    :catch_1be
    move-exception v2

    move-object/from16 v3, v36

    .line 252
    :goto_1c1
    :try_start_1c1
    invoke-static {v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_1c4
    .catchall {:try_start_1c1 .. :try_end_1c4} :catchall_22e

    .line 253
    const/4 v2, 0x0

    .line 255
    if-eqz v3, :cond_1ca

    .line 256
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_1ca
    if-eqz v5, :cond_1cf

    .line 260
    :try_start_1cc
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1cf} :catch_214

    .line 266
    :cond_1cf
    :goto_1cf
    return v2

    .line 234
    :cond_1d0
    const/4 v2, 0x0

    goto/16 :goto_132

    :cond_1d3
    move-wide/from16 v2, v38

    move-wide/from16 v6, v40

    move-object/from16 v27, v10

    .line 246
    goto/16 :goto_71

    .line 247
    :cond_1db
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-eqz v4, :cond_200

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v4, v2, v8

    if-eqz v4, :cond_200

    .line 248
    :try_start_1ea
    const-string v4, "DELETE FROM launch WHERE local_time_ms>=? AND local_time_ms<=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    invoke-virtual {v5, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_200
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_203} :catch_1be
    .catchall {:try_start_1ea .. :try_end_203} :catchall_22c

    .line 255
    if-eqz v36, :cond_208

    .line 256
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_208
    if-eqz v5, :cond_20d

    .line 260
    :try_start_20a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_20d} :catch_20f

    .line 266
    :cond_20d
    :goto_20d
    const/4 v2, 0x1

    goto :goto_1cf

    .line 262
    :catch_20f
    move-exception v2

    .line 263
    invoke-static {v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_20d

    .line 262
    :catch_214
    move-exception v3

    .line 263
    invoke-static {v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_1cf

    .line 255
    :catchall_219
    move-exception v2

    move-object/from16 v36, v3

    :goto_21c
    if-eqz v36, :cond_221

    .line 256
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_221
    if-eqz v5, :cond_226

    .line 260
    :try_start_223
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_226} :catch_227

    .line 264
    :cond_226
    :goto_226
    throw v2

    .line 262
    :catch_227
    move-exception v3

    .line 263
    invoke-static {v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_226

    .line 255
    :catchall_22c
    move-exception v2

    goto :goto_21c

    :catchall_22e
    move-exception v2

    move-object/from16 v36, v3

    goto :goto_21c

    .line 251
    :catch_232
    move-exception v2

    goto :goto_1c1

    :cond_234
    move-wide/from16 v38, v2

    goto/16 :goto_e3

    :cond_238
    move-wide/from16 v40, v6

    goto/16 :goto_d5
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/applog/d/f;Z)Z
    .registers 25

    .prologue
    .line 124
    sget-object v4, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v5, "eventv3"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/applog/d/e;

    .line 125
    sget-object v5, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v6, "event"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/bytedance/applog/d/c;

    .line 126
    sget-object v5, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v7, "event_misc"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/bytedance/applog/d/d;

    .line 127
    sget-object v5, Lcom/bytedance/applog/d/b;->a:Ljava/util/HashMap;

    const-string v7, "pack"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bytedance/applog/d/g;

    .line 128
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 129
    const/4 v7, 0x0

    .line 131
    :try_start_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bytedance/applog/d/b;->i:Lcom/bytedance/applog/d/b$a;

    invoke-virtual {v5}, Lcom/bytedance/applog/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 132
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 133
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/applog/d/a;

    const/4 v9, 0x0

    aput-object v6, v5, v9

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v4, 0x2

    aput-object v8, v5, v4

    .line 134
    const/4 v4, 0x3

    new-array v9, v4, [Lorg/json/JSONArray;

    .line 135
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/applog/d/b;->a([Lcom/bytedance/applog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v6

    .line 136
    const/4 v4, 0x0

    aget-object v4, v9, v4

    if-eqz v4, :cond_63

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_8b

    :cond_63
    const/4 v4, 0x1

    aget-object v4, v9, v4

    if-eqz v4, :cond_71

    const/4 v4, 0x1

    aget-object v4, v9, v4

    .line 137
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_8b

    :cond_71
    const/4 v4, 0x2

    aget-object v4, v9, v4

    if-eqz v4, :cond_7f

    const/4 v4, 0x2

    aget-object v4, v9, v4

    .line 138
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_8b

    .line 139
    :cond_7f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/f;Z)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 140
    :cond_8b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/f;Z)Z

    move-result v4

    if-eqz v4, :cond_142

    move-object/from16 v15, p2

    :goto_9d
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    aget-object v18, v9, v4

    const/4 v4, 0x1

    aget-object v19, v9, v4

    const/4 v4, 0x2

    aget-object v20, v9, v4

    move-object/from16 v14, p1

    invoke-virtual/range {v11 .. v20}, Lcom/bytedance/applog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 142
    const-string v8, "pack"

    const/4 v12, 0x0

    invoke-virtual {v11, v10}, Lcom/bytedance/applog/d/g;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v7, v8, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 143
    sget-boolean v8, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v8, :cond_f0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/bytedance/applog/d/b;->a(Lcom/bytedance/applog/d/f;Z)Z

    move-result v8

    if-eqz v8, :cond_f0

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send launch, "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", hadUI:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :cond_f0
    const/4 v8, 0x1

    move-object/from16 v0, p2

    iput-boolean v8, v0, Lcom/bytedance/applog/d/f;->k:Z

    move-object v10, v4

    .line 149
    :cond_f6
    :goto_f6
    array-length v4, v5

    if-ge v6, v4, :cond_145

    .line 150
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/bytedance/applog/d/f;->c:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/applog/d/b;->a([Lcom/bytedance/applog/d/a;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v6

    .line 151
    const/4 v4, 0x0

    aget-object v4, v9, v4

    if-eqz v4, :cond_111

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_11f

    :cond_111
    const/4 v4, 0x1

    aget-object v4, v9, v4

    if-eqz v4, :cond_f6

    const/4 v4, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_f6

    .line 152
    :cond_11f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    aget-object v18, v9, v4

    const/4 v4, 0x1

    aget-object v19, v9, v4

    const/4 v4, 0x2

    aget-object v20, v9, v4

    move-object/from16 v14, p1

    invoke-virtual/range {v11 .. v20}, Lcom/bytedance/applog/d/g;->a(JLorg/json/JSONObject;Lcom/bytedance/applog/d/f;Lcom/bytedance/applog/d/j;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 153
    const-string v8, "pack"

    const/4 v12, 0x0

    invoke-virtual {v11, v10}, Lcom/bytedance/applog/d/g;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v7, v8, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object v10, v4

    goto :goto_f6

    .line 140
    :cond_142
    const/4 v15, 0x0

    goto/16 :goto_9d

    .line 156
    :cond_145
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_148} :catch_154
    .catchall {:try_start_30 .. :try_end_148} :catchall_164

    .line 162
    if-eqz v7, :cond_14d

    .line 163
    :try_start_14a
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_14f

    .line 169
    :cond_14d
    :goto_14d
    const/4 v4, 0x1

    :cond_14e
    :goto_14e
    return v4

    .line 165
    :catch_14f
    move-exception v4

    .line 166
    invoke-static {v4}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_14d

    .line 157
    :catch_154
    move-exception v4

    .line 158
    :try_start_155
    invoke-static {v4}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_158
    .catchall {:try_start_155 .. :try_end_158} :catchall_164

    .line 159
    const/4 v4, 0x0

    .line 162
    if-eqz v7, :cond_14e

    .line 163
    :try_start_15b
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15e} :catch_15f

    goto :goto_14e

    .line 165
    :catch_15f
    move-exception v5

    .line 166
    invoke-static {v5}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_14e

    .line 161
    :catchall_164
    move-exception v4

    .line 162
    if-eqz v7, :cond_16a

    .line 163
    :try_start_167
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16b

    .line 167
    :cond_16a
    :goto_16a
    throw v4

    .line 165
    :catch_16b
    move-exception v5

    .line 166
    invoke-static {v5}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_16a
.end method
