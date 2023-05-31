.class public Lcom/bytedance/sdk/openadsdk/c/n;
.super Ljava/lang/Object;
.source "StatsEventRepertoryImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/c/e",
        "<",
        "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/bytedance/sdk/openadsdk/core/d;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/n;->b:Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/n;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    .line 43
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p3, :cond_58

    const-string v0, " IN "

    move-object v3, v0

    .line 194
    :goto_5
    if-eqz p3, :cond_5c

    const-string v0, " OR "

    .line 196
    :goto_9
    const/16 v1, 0x3e8

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 198
    rem-int v1, v5, v4

    .line 199
    if-nez v1, :cond_5f

    .line 200
    div-int v1, v5, v4

    .line 204
    :goto_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_64

    .line 206
    mul-int v7, v2, v4

    .line 207
    add-int v8, v7, v4

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 208
    const-string v9, "\',\'"

    invoke-interface {p1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    if-eqz v2, :cond_3e

    .line 210
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_3e
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 193
    :cond_58
    const-string v0, " NOT IN "

    move-object v3, v0

    goto :goto_5

    .line 194
    :cond_5c
    const-string v0, " AND "

    goto :goto_9

    .line 202
    :cond_5f
    div-int v1, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 215
    :cond_64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\'\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    return-object v0
.end method

.method private declared-synchronized b(IJ)V
    .registers 12

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gen_time <? AND retry >?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/util/List;)V
    .registers 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    .line 131
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_a

    .line 129
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SET "

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "retry"

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "retry"

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "+1"

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE "

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id"

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    .line 143
    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_1f .. :try_end_6e} :catchall_1c

    .line 146
    monitor-exit p0

    return-void
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "logstats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT UNIQUE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gen_time"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retry"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER default 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_5e

    move-result-object v1

    .line 58
    if-eqz v1, :cond_55

    .line 60
    :goto_26
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 61
    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_57

    move-result-object v2

    .line 64
    :try_start_40
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/f/b/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_4d} :catch_4e
    .catchall {:try_start_40 .. :try_end_4d} :catchall_57

    goto :goto_26

    .line 68
    :catch_4e
    move-exception v0

    goto :goto_26

    .line 72
    :cond_50
    if-eqz v1, :cond_55

    .line 73
    :try_start_52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5e

    .line 77
    :cond_55
    monitor-exit p0

    return-object v8

    .line 72
    :catchall_57
    move-exception v0

    if-eqz v1, :cond_5d

    .line 73
    :try_start_5a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    .line 56
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/n;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    const-string v1, "stats_serverbusy_retrycount"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;I)V

    .line 166
    return-void
.end method

.method public declared-synchronized a(IJ)V
    .registers 6

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/n;->b(IJ)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/openadsdk/f/b/c$a;)V
    .registers 6

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 83
    const-string v0, "id"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "value"

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v0, "retry"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_43

    .line 88
    monitor-exit p0

    return-void

    .line 84
    :cond_40
    :try_start_40
    const-string v0, ""
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_43

    goto :goto_19

    .line 82
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 26
    check-cast p1, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Lcom/bytedance/sdk/openadsdk/f/b/c$a;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Ljava/util/List;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_24

    move-result v0

    if-eqz v0, :cond_9

    .line 101
    :goto_7
    monitor-exit p0

    return-void

    .line 95
    :cond_9
    :try_start_9
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    .line 97
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_24

    goto :goto_12

    .line 92
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :cond_27
    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id"

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_27 .. :try_end_58} :catchall_24

    goto :goto_7
.end method

.method public declared-synchronized a(Ljava/util/List;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Ljava/util/List;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    :goto_7
    monitor-exit p0

    return-void

    .line 119
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/n;->b(Ljava/util/List;)V

    .line 120
    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/n;->b(IJ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10
    .catchall {:try_start_9 .. :try_end_f} :catchall_12

    goto :goto_7

    .line 121
    :catch_10
    move-exception v0

    goto :goto_7

    .line 115
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/n;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    const-string v1, "stats_serverbusy_flag"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Z)V

    .line 151
    return-void
.end method

.method public b()Z
    .registers 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/n;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    const-string v1, "stats_serverbusy_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/n;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    const-string v1, "stats_serverbusy_retrycount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, "logstats"

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/n;->b:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/n;->b:Landroid/content/Context;

    goto :goto_8
.end method
