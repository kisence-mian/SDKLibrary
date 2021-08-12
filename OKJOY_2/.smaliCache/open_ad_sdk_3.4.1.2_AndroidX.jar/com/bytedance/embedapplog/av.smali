.class public Lcom/bytedance/embedapplog/av;
.super Lcom/bytedance/embedapplog/aq;
.source "SourceFile"


# instance fields
.field private h:Z

.field private i:Ljava/lang/String;

.field protected p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aq;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bytedance/embedapplog/av;->i:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lcom/bytedance/embedapplog/av;->h:Z

    .line 34
    iput-object p3, p0, Lcom/bytedance/embedapplog/av;->p:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/aq;
    .registers 6

    .line 55
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/embedapplog/av;->a:J

    .line 56
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/embedapplog/av;->b:J

    .line 57
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/embedapplog/av;->c:Ljava/lang/String;

    .line 58
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/embedapplog/av;->d:Ljava/lang/String;

    .line 59
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/embedapplog/av;->i:Ljava/lang/String;

    .line 60
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/embedapplog/av;->p:Ljava/lang/String;

    .line 61
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_32

    move v0, v1

    :cond_32
    iput-boolean v0, p0, Lcom/bytedance/embedapplog/av;->h:Z

    .line 62
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/av;->e:Ljava/lang/String;

    .line 63
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/av;->f:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 4

    .line 69
    iget-wide v0, p0, Lcom/bytedance/embedapplog/av;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    iget-wide v0, p0, Lcom/bytedance/embedapplog/av;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tea_event_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->c:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->d:Ljava/lang/String;

    const-string v1, "user_unique_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->i:Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/av;->h:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->p:Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 76
    :try_start_33
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/av;->i()V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_36} :catch_37

    .line 79
    goto :goto_3b

    .line 77
    :catch_37
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 81
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->p:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/av;->h:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_bav"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->e:Ljava/lang/String;

    const-string v1, "ab_version"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->f:Ljava/lang/String;

    const-string v1, "ab_sdk_version"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    .line 89
    iget-wide v0, p0, Lcom/bytedance/embedapplog/av;->a:J

    const-string v2, "local_time_ms"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    iget-wide v0, p0, Lcom/bytedance/embedapplog/av;->b:J

    const-string v2, "tea_event_index"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->c:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->d:Ljava/lang/String;

    const-string v1, "user_unique_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->i:Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/av;->h:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->p:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/av;->i()V

    .line 97
    :cond_2e
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->p:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/av;->h:Z

    const-string v1, "is_bav"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->e:Ljava/lang/String;

    const-string v1, "ab_version"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->f:Ljava/lang/String;

    const-string v1, "ab_sdk_version"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 19

    .line 39
    const-string v0, "local_time_ms"

    const-string v1, "integer"

    const-string v2, "tea_event_index"

    const-string v3, "integer"

    const-string v4, "session_id"

    const-string v5, "varchar"

    const-string v6, "user_unique_id"

    const-string v7, "varchar"

    const-string v8, "event"

    const-string v9, "varchar"

    const-string v10, "params"

    const-string v11, "varchar"

    const-string v12, "is_bav"

    const-string v13, "integer"

    const-string v14, "ab_version"

    const-string v15, "varchar"

    const-string v16, "ab_sdk_version"

    const-string v17, "varchar"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/embedapplog/aq;
    .registers 7

    .line 136
    const-string v0, "local_time_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/embedapplog/av;->a:J

    .line 137
    const-string v0, "tea_event_index"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/av;->b:J

    .line 138
    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/av;->c:Ljava/lang/String;

    .line 139
    const-string v0, "user_unique_id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/av;->d:Ljava/lang/String;

    .line 140
    const-string v0, "event"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/av;->i:Ljava/lang/String;

    .line 141
    const-string v0, "params"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/av;->p:Ljava/lang/String;

    .line 142
    const-string v0, "is_bav"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/av;->h:Z

    .line 143
    const-string v0, "ab_version"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/av;->e:Ljava/lang/String;

    .line 144
    const-string v0, "ab_sdk_version"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/av;->f:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 5

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    iget-wide v1, p0, Lcom/bytedance/embedapplog/av;->a:J

    const-string v3, "local_time_ms"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    iget-wide v1, p0, Lcom/bytedance/embedapplog/av;->b:J

    const-string v3, "tea_event_index"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->c:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 110
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->d:Ljava/lang/String;

    const-string v2, "user_unique_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_29
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->i:Ljava/lang/String;

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-boolean v1, p0, Lcom/bytedance/embedapplog/av;->h:Z

    if-eqz v1, :cond_3a

    .line 115
    const/4 v1, 0x1

    const-string v2, "is_bav"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    :cond_3a
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 119
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/embedapplog/av;->p:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_4e
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->g:Ljava/lang/String;

    const-string v2, "datetime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 125
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->e:Ljava/lang/String;

    const-string v2, "ab_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_64
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 129
    iget-object v1, p0, Lcom/bytedance/embedapplog/av;->f:Ljava/lang/String;

    const-string v2, "ab_sdk_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_73
    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    .line 160
    const-string v0, "eventv3"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected i()V
    .registers 1

    .line 155
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/bytedance/embedapplog/av;->i:Ljava/lang/String;

    return-object v0
.end method
