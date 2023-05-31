.class public Lcom/bytedance/sdk/openadsdk/c/f;
.super Ljava/lang/Object;
.source "AdEventRepertoryImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/c/e",
        "<",
        "Lcom/bytedance/sdk/openadsdk/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/f;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/f;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Lcom/bytedance/sdk/openadsdk/core/d;

    .line 41
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 219
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
    .line 185
    if-eqz p3, :cond_58

    const-string v0, " IN "

    move-object v3, v0

    .line 186
    :goto_5
    if-eqz p3, :cond_5c

    const-string v0, " OR "

    .line 188
    :goto_9
    const/16 v1, 0x3e8

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 189
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 190
    rem-int v1, v5, v4

    .line 191
    if-nez v1, :cond_5f

    .line 192
    div-int v1, v5, v4

    .line 196
    :goto_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_64

    .line 198
    mul-int v7, v2, v4

    .line 199
    add-int v8, v7, v4

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 200
    const-string v9, "\',\'"

    invoke-interface {p1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    if-eqz v2, :cond_3e

    .line 202
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
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

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 185
    :cond_58
    const-string v0, " NOT IN "

    move-object v3, v0

    goto :goto_5

    .line 186
    :cond_5c
    const-string v0, " AND "

    goto :goto_9

    .line 194
    :cond_5f
    div-int v1, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 207
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

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    return-object v0
.end method

.method private declared-synchronized b(IJ)V
    .registers 12

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/f;->d()Landroid/content/Context;

    move-result-object v2

    const-string v3, "adevent"

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
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_42
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
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/a;

    .line 123
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/c/a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_a

    .line 121
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "adevent"

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SET "

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "retry"

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "retry"

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "+1"

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE "

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id"

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    .line 135
    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/f;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_1f .. :try_end_6c} :catchall_1c

    .line 138
    monitor-exit p0

    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "adevent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT UNIQUE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gen_time"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retry"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER default 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
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
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/f;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "adevent"

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
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_5c

    move-result-object v1

    .line 52
    if-eqz v1, :cond_53

    .line 54
    :goto_24
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 55
    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_55

    move-result-object v2

    .line 58
    :try_start_3e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/a;

    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/c/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4b} :catch_4c
    .catchall {:try_start_3e .. :try_end_4b} :catchall_55

    goto :goto_24

    .line 60
    :catch_4c
    move-exception v0

    goto :goto_24

    .line 64
    :cond_4e
    if-eqz v1, :cond_53

    .line 65
    :try_start_50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5c

    .line 69
    :cond_53
    monitor-exit p0

    return-object v8

    .line 64
    :catchall_55
    move-exception v0

    if-eqz v1, :cond_5b

    .line 65
    :try_start_58
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5b
    throw v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    .line 50
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Lcom/bytedance/sdk/openadsdk/core/d;

    const-string v1, "serverbusy_retrycount"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public declared-synchronized a(IJ)V
    .registers 6

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/f;->b(IJ)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/openadsdk/c/a;)V
    .registers 6

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 75
    const-string v0, "id"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "value"

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    const-string v0, "retry"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/f;->d()Landroid/content/Context;

    move-result-object v0

    const-string v2, "adevent"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_41

    .line 80
    monitor-exit p0

    return-void

    .line 76
    :cond_3e
    :try_start_3e
    const-string v0, ""
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_41

    goto :goto_19

    .line 74
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 24
    check-cast p1, Lcom/bytedance/sdk/openadsdk/c/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Lcom/bytedance/sdk/openadsdk/c/a;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Ljava/util/List;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_24

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    :goto_7
    monitor-exit p0

    return-void

    .line 87
    :cond_9
    :try_start_9
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/a;

    .line 89
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/c/a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_24

    goto :goto_12

    .line 84
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_27
    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM adevent WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id"

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/f;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_24

    goto :goto_7
.end method

.method public declared-synchronized a(Ljava/util/List;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Ljava/util/List;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    move-result v0

    if-eqz v0, :cond_9

    .line 117
    :goto_7
    monitor-exit p0

    return-void

    .line 111
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f;->b(Ljava/util/List;)V

    .line 112
    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/f;->b(IJ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10
    .catchall {:try_start_9 .. :try_end_f} :catchall_12

    goto :goto_7

    .line 113
    :catch_10
    move-exception v0

    goto :goto_7

    .line 107
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Lcom/bytedance/sdk/openadsdk/core/d;

    const-string v1, "serverbusy_flag"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public b()Z
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Lcom/bytedance/sdk/openadsdk/core/d;

    const-string v1, "serverbusy_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Lcom/bytedance/sdk/openadsdk/core/d;

    const-string v1, "serverbusy_retrycount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()Landroid/content/Context;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->a:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->a:Landroid/content/Context;

    goto :goto_8
.end method
