.class public Lcom/bytedance/embedapplog/d/d;
.super Lcom/bytedance/embedapplog/d/a;
.source "SourceFile"


# instance fields
.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bytedance/embedapplog/d/a;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/d;->i:Ljava/lang/String;

    .line 25
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/d;->h:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/d/a;
    .registers 4
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/d;->a:J

    .line 44
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/d;->b:J

    .line 45
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/d;->c:Ljava/lang/String;

    .line 46
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/d;->d:Ljava/lang/String;

    .line 47
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/d;->h:Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/d;->i:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 6
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/d;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "user_unique_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "params"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "log_type"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/d;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/d;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v0, "user_unique_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v0, "params"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v0, "log_type"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 30
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "local_time_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tea_event_index"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "user_unique_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "params"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "log_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "varchar"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/embedapplog/d/a;
    .registers 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 102
    const-string v0, "local_time_ms"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/d;->a:J

    .line 103
    const-string v0, "tea_event_index"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/d;->b:J

    .line 104
    const-string v0, "session_id"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/d;->c:Ljava/lang/String;

    .line 105
    const-string v0, "user_unique_id"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/d;->d:Ljava/lang/String;

    .line 106
    const-string v0, "params"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/d;->h:Ljava/lang/String;

    .line 107
    const-string v0, "log_type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/d;->i:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 75
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/d;->a:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/d;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 77
    const-string v0, "session_id"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 79
    const-string v0, "user_unique_id"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_29
    const-string v0, "log_type"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :try_start_30
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/embedapplog/d/d;->h:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 86
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 89
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_57

    .line 90
    const-string v5, "misc\u4e8b\u4ef6\u5b58\u5728\u91cd\u590d\u7684key"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_57
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5a} :catch_5b

    goto :goto_3b

    .line 94
    :catch_5b
    move-exception v0

    .line 95
    const-string v2, "\u89e3\u6790 event misc \u5931\u8d25"

    invoke-static {v2, v0}, Lcom/bytedance/embedapplog/util/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_61
    return-object v1
.end method

.method d()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 114
    const-string v0, "event_misc"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " logType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
