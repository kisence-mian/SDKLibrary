.class public Lcom/sigmob/sdk/base/common/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/e$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Integer;

.field private final e:Lcom/sigmob/sdk/base/common/e$a;

.field private f:Ljava/lang/String;

.field private g:Z

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->e:Lcom/sigmob/sdk/base/common/e$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->h:Ljava/lang/String;

    const-string v0, "native"

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/e;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e;->e:Lcom/sigmob/sdk/base/common/e$a;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/e;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/e;->h:Ljava/lang/String;

    const-string p1, "native"

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/sigmob/sdk/base/common/e$a;->a:Lcom/sigmob/sdk/base/common/e$a;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/e;-><init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/e;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static a(IJ)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/common/e;",
            ">;"
        }
    .end annotation

    move/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_8
    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from tracks where timestamp > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order by id desc limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_f3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_f3

    const-string v4, "url"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "event"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "request_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "timestamp"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "source"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "retryNum"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10
    :try_end_6a
    .catchall {:try_start_8 .. :try_end_6a} :catchall_f6

    move v11, v0

    :goto_6b
    if-ge v11, v1, :cond_f3

    :try_start_6d
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v16
    :try_end_91
    .catchall {:try_start_6d .. :try_end_91} :catchall_d8

    move/from16 p1, v4

    :try_start_93
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d3

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_d3

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d3

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_b1
    .catchall {:try_start_93 .. :try_end_b1} :catchall_d6

    if-eqz v16, :cond_b4

    goto :goto_d3

    :cond_b4
    move/from16 p2, v5

    :try_start_b6
    new-instance v5, Lcom/sigmob/sdk/base/common/e;

    invoke-direct {v5, v0, v13, v14}, Lcom/sigmob/sdk/base/common/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v12}, Lcom/sigmob/sdk/base/common/e;->b(Ljava/lang/Long;)V

    invoke-virtual {v5, v4}, Lcom/sigmob/sdk/base/common/e;->a(Ljava/lang/Integer;)V

    invoke-virtual {v5, v15}, Lcom/sigmob/sdk/base/common/e;->a(Ljava/lang/Long;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cd

    invoke-virtual {v5, v1}, Lcom/sigmob/sdk/base/common/e;->a(Ljava/lang/String;)V

    :cond_cd
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catchall {:try_start_b6 .. :try_end_d0} :catchall_d1

    goto :goto_e2

    :catchall_d1
    move-exception v0

    goto :goto_dd

    :cond_d3
    :goto_d3
    move/from16 p2, v5

    goto :goto_eb

    :catchall_d6
    move-exception v0

    goto :goto_db

    :catchall_d8
    move-exception v0

    move/from16 p1, v4

    :goto_db
    move/from16 p2, v5

    :goto_dd
    :try_start_dd
    const-string v1, "getAdTrackList error"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_f6

    if-nez v0, :cond_e9

    goto :goto_f3

    :cond_e9
    add-int/lit8 v11, v11, 0x1

    :goto_eb
    move/from16 v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    goto/16 :goto_6b

    :cond_f3
    :goto_f3
    if-eqz v3, :cond_101

    goto :goto_fe

    :catchall_f6
    move-exception v0

    :try_start_f7
    const-string v1, "getlogs fail"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fc
    .catchall {:try_start_f7 .. :try_end_fc} :catchall_102

    if-eqz v3, :cond_101

    :goto_fe
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_101
    return-object v2

    :catchall_102
    move-exception v0

    if-eqz v3, :cond_108

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_108
    throw v0
.end method

.method public static a(J)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timestamp < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sigmob/sdk/common/a/a;->a()Lcom/sigmob/sdk/common/a/a;

    move-result-object p1

    const-string v0, "tracks"

    new-instance v1, Lcom/sigmob/sdk/base/common/e$2;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/common/e$2;-><init>()V

    invoke-virtual {p1, v0, p0, v1}, Lcom/sigmob/sdk/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/c$a;)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    goto :goto_2d

    :catchall_27
    move-exception p0

    const-string p1, "cleanExpiredAdTracker error"

    invoke-static {p1, p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2d
    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static b(J)V
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select * from tracks"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_8d

    if-eqz v4, :cond_21

    :try_start_13
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v4, v2

    goto :goto_21

    :catchall_1d
    move-exception p0

    move-object v2, v4

    goto/16 :goto_8e

    :cond_21
    :goto_21
    cmp-long v0, v0, p0

    if-lez v0, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from tracks order by id desc limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_1d

    :try_start_3c
    const-string p1, "id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eqz p0, :cond_59

    invoke-interface {p0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object p0, v2

    move-object v2, p1

    goto :goto_59

    :cond_58
    move-object p0, v4

    :cond_59
    :goto_59
    if-eqz v2, :cond_87

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id <\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/common/a/a;->a()Lcom/sigmob/sdk/common/a/a;

    move-result-object v0

    const-string v1, "tracks"

    new-instance v2, Lcom/sigmob/sdk/base/common/e$3;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/common/e$3;-><init>()V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sigmob/sdk/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/c$a;)V
    :try_end_82
    .catchall {:try_start_3c .. :try_end_82} :catchall_83

    goto :goto_87

    :catchall_83
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_8e

    :cond_87
    :goto_87
    if-eqz p0, :cond_98

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_98

    :catchall_8d
    move-exception p0

    :goto_8e
    :try_start_8e
    const-string p1, "cleanLimitAdTracker "

    invoke-static {p1, p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_99

    if-eqz v2, :cond_98

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_98
    :goto_98
    return-void

    :catchall_99
    move-exception p0

    if-eqz v2, :cond_9f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9f
    throw p0
.end method

.method private b(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/lang/Long;

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/common/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/e;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/common/e;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/common/a/c$a;)V
    .registers 7

    :try_start_0
    new-instance v0, Lcom/sigmob/sdk/common/a/b$b$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/a/b$b$a;-><init>()V

    const-string v1, "tracks"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a/b$b$a;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/e;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "request_id"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/e;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/e;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/e;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "retryNum"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/e;->d:Ljava/lang/Integer;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a/b$b$a;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a/b$b$a;->a()Lcom/sigmob/sdk/common/a/b$b;

    move-result-object v0

    new-instance v3, Lcom/sigmob/sdk/base/common/e$1;

    invoke-direct {v3, p0, p1}, Lcom/sigmob/sdk/base/common/e$1;-><init>(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/common/a/c$a;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sigmob/sdk/common/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/sigmob/sdk/common/a/b$b;Lcom/sigmob/sdk/common/a/c$a;)V
    :try_end_5a
    .catchall {:try_start_0 .. :try_end_5a} :catchall_5b

    goto :goto_63

    :catchall_5b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_63
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e;->d:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e;->c:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e;->f:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/lang/Long;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/common/a/a;->a()Lcom/sigmob/sdk/common/a/a;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/base/common/e$4;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/common/e$4;-><init>(Lcom/sigmob/sdk/base/common/e;)V

    const-string v3, "tracks"

    invoke-virtual {v1, v3, v0, v2}, Lcom/sigmob/sdk/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/c$a;)V

    return-void
.end method

.method public d()J
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->c:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lcom/sigmob/sdk/base/common/e$a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->e:Lcom/sigmob/sdk/base/common/e$a;

    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->d:Ljava/lang/Integer;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/e;->g:Z

    return-void
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/e;->g:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->i:Ljava/lang/String;

    return-object v0
.end method
