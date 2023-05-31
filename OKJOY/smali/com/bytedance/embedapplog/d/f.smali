.class public Lcom/bytedance/embedapplog/d/f;
.super Lcom/bytedance/embedapplog/d/a;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:Ljava/lang/String;

.field j:Z

.field volatile k:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/bytedance/embedapplog/d/a;-><init>()V

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
    .line 52
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/f;->a:J

    .line 53
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/f;->b:J

    .line 54
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/f;->c:Ljava/lang/String;

    .line 55
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/f;->i:Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/d/f;->h:I

    .line 57
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/f;->e:Ljava/lang/String;

    .line 58
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/f;->f:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 6
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/f;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/f;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "ver_name"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "ver_code"

    iget v1, p0, Lcom/bytedance/embedapplog/d/f;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v0, "ab_version"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "ab_sdk_version"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/f;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/f;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/f;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 77
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v0, "ab_version"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v0, "ab_sdk_version"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/f;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 38
    const/16 v0, 0xe

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

    const-string v2, "ver_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ver_code"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ab_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ab_sdk_version"

    aput-object v2, v0, v1

    const/16 v1, 0xd

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

    .line 104
    const-string v0, "local_time_ms"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/f;->a:J

    .line 105
    const-string v0, "tea_event_index"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/f;->b:J

    .line 106
    const-string v0, "session_id"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/f;->c:Ljava/lang/String;

    .line 107
    const-string v0, "ab_version"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/f;->e:Ljava/lang/String;

    .line 108
    const-string v0, "ab_sdk_version"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/f;->f:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const-string v1, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/f;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 86
    const-string v1, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/f;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 87
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-boolean v1, p0, Lcom/bytedance/embedapplog/d/f;->j:Z

    if-eqz v1, :cond_25

    .line 89
    const-string v1, "is_background"

    iget-boolean v2, p0, Lcom/bytedance/embedapplog/d/f;->j:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 91
    :cond_25
    const-string v1, "datetime"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/f;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 93
    const-string v1, "ab_version"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_3b
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 97
    const-string v1, "ab_sdk_version"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_4a
    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    const-string v0, "launch"

    return-object v0
.end method
