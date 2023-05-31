.class public Lcom/sigmob/sdk/base/common/j;
.super Lcom/sigmob/sdk/base/a/e;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Integer;

.field private final e:Lcom/sigmob/sdk/base/common/k;

.field private final f:Ljava/lang/String;

.field private g:Z

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/a/e;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/k;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->h:Ljava/lang/String;

    const-string v0, "native"

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/sigmob/sdk/base/a/e;-><init>()V

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/j;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/k;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/j;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/j;->h:Ljava/lang/String;

    const-string v0, "native"

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/sigmob/sdk/base/common/k;->a:Lcom/sigmob/sdk/base/common/k;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/j;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/a/g;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/a/h;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/a/h;-><init>()V

    const-string v1, "tracks"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;

    const-string v1, "id"

    const-string v2, "long"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/h;->a(Z)Lcom/sigmob/sdk/base/a/h;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    const-string v3, "text"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event"

    const-string v3, "text"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "request_id"

    const-string v3, "text"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timestamp"

    const-string v3, "long"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    const-string v3, "text"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "retryNum"

    const-string v3, "int"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/util/Map;)Lcom/sigmob/sdk/base/a/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/h;->a()Lcom/sigmob/sdk/base/a/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/j;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static a(IJ)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/j;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_6
    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/a/l;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select * from tracks where timestamp > "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, p1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " order by id desc limit "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_e8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e8

    const-string v4, "url"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v4, "id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v4, "event"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v4, "request_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v4, "timestamp"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v4, "source"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v4, "retryNum"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6a} :catch_f5
    .catchall {:try_start_6 .. :try_end_6a} :catchall_106

    move-result v12

    move v4, v2

    :cond_6c
    :goto_6c
    move/from16 v0, p0

    if-ge v4, v0, :cond_e8

    :try_start_70
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6c

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-ltz v19, :cond_6c

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6c

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6c

    new-instance v19, Lcom/sigmob/sdk/base/common/j;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v14, v15}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_e2

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Lcom/sigmob/sdk/base/common/j;->b(Ljava/lang/Long;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/Integer;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/Long;)V

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_dd

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    :cond_dd
    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_e2} :catch_ee
    .catchall {:try_start_70 .. :try_end_e2} :catchall_106

    :cond_e2
    :goto_e2
    :try_start_e2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e5} :catch_f5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_106

    move-result v2

    if-nez v2, :cond_101

    :cond_e8
    if-eqz v3, :cond_ed

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_ed
    :goto_ed
    return-object v5

    :catch_ee
    move-exception v2

    :try_start_ef
    const-string v13, "getAdTrackList error"

    invoke-static {v13, v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_f4} :catch_f5
    .catchall {:try_start_ef .. :try_end_f4} :catchall_106

    goto :goto_e2

    :catch_f5
    move-exception v2

    :try_start_f6
    const-string v4, "getlogs fail"

    invoke-static {v4, v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fb
    .catchall {:try_start_f6 .. :try_end_fb} :catchall_106

    if-eqz v3, :cond_ed

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_ed

    :cond_101
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_6c

    :catchall_106
    move-exception v2

    if-eqz v3, :cond_10c

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_10c
    throw v2
.end method

.method public static a(J)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timestamp < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v1

    const-class v2, Lcom/sigmob/sdk/base/common/j;

    new-instance v3, Lcom/sigmob/sdk/base/common/j$2;

    invoke-direct {v3}, Lcom/sigmob/sdk/base/common/j$2;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Lcom/sigmob/sdk/base/a/m;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    const-string v1, "cleanExpiredAdTracker error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/j;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static b(J)V
    .registers 8

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    :try_start_3
    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/l;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "select * from tracks"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_83
    .catchall {:try_start_3 .. :try_end_11} :catchall_90

    move-result-object v1

    if-eqz v1, :cond_1d

    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v2

    :cond_1d
    cmp-long v3, v4, p0

    if-lez v3, :cond_54

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from tracks order by id desc limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_54

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v2

    move-object v2, v0

    :cond_54
    if-eqz v2, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id <\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v2

    const-class v3, Lcom/sigmob/sdk/base/common/j;

    new-instance v4, Lcom/sigmob/sdk/base/common/j$3;

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/j$3;-><init>()V

    invoke-virtual {v2, v3, v0, v4}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Lcom/sigmob/sdk/base/a/m;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_7d} :catch_9a
    .catchall {:try_start_14 .. :try_end_7d} :catchall_98

    :cond_7d
    if-eqz v1, :cond_82

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_82
    :goto_82
    return-void

    :catch_83
    move-exception v0

    move-object v1, v2

    :goto_85
    :try_start_85
    const-string v2, "cleanLimitAdTracker "

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_98

    if-eqz v1, :cond_82

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_82

    :catchall_90
    move-exception v0

    move-object v1, v2

    :goto_92
    if-eqz v1, :cond_97

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_97
    throw v0

    :catchall_98
    move-exception v0

    goto :goto_92

    :catch_9a
    move-exception v0

    goto :goto_85
.end method

.method private b(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/Long;

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/common/j;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/common/j;)Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/j;->d:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/j;->c:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/j;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/Long;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v1

    const-class v2, Lcom/sigmob/sdk/base/common/j;

    new-instance v3, Lcom/sigmob/sdk/base/common/j$4;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/base/common/j$4;-><init>(Lcom/sigmob/sdk/base/common/j;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Lcom/sigmob/sdk/base/a/m;)V

    goto :goto_4
.end method

.method public e()J
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->c:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6
.end method

.method public f()Lcom/sigmob/sdk/base/common/k;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/k;

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->d:Ljava/lang/Integer;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->d:Ljava/lang/Integer;

    goto :goto_9
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/j;->g:Z

    return-void
.end method

.method public insertToDB(Lcom/sigmob/sdk/base/a/m;)V
    .registers 8

    :try_start_0
    new-instance v0, Lcom/sigmob/sdk/base/a/k;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/a/k;-><init>()V

    const-string v1, "tracks"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/k;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/j;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "request_id"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/j;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/j;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/j;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "retryNum"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/j;->d:Ljava/lang/Integer;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/k;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/a/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/k;->a()Lcom/sigmob/sdk/base/a/j;

    move-result-object v0

    new-instance v3, Lcom/sigmob/sdk/base/common/j$1;

    invoke-direct {v3, p0, p1}, Lcom/sigmob/sdk/base/common/j$1;-><init>(Lcom/sigmob/sdk/base/common/j;Lcom/sigmob/sdk/base/a/m;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sigmob/sdk/base/a/l;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/sigmob/sdk/base/a/j;Lcom/sigmob/sdk/base/a/m;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5a} :catch_5b

    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/j;->g:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method public tableName()Ljava/lang/String;
    .registers 2

    const-string v0, "tracks"

    return-object v0
.end method
