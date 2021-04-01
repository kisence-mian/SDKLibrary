.class public Lcom/bytedance/applog/d/e;
.super Lcom/bytedance/applog/d/a;
.source "SourceFile"


# instance fields
.field protected h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/bytedance/applog/d/a;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bytedance/applog/d/e;->j:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lcom/bytedance/applog/d/e;->i:Z

    .line 34
    iput-object p3, p0, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/applog/d/a;
    .registers 6
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 55
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/applog/d/e;->a:J

    .line 56
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/applog/d/e;->b:J

    .line 57
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/applog/d/e;->c:Ljava/lang/String;

    .line 58
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/applog/d/e;->d:Ljava/lang/String;

    .line 59
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/applog/d/e;->j:Ljava/lang/String;

    .line 60
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    .line 61
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_43

    :goto_31
    iput-boolean v0, p0, Lcom/bytedance/applog/d/e;->i:Z

    .line 62
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/d/e;->e:Ljava/lang/String;

    .line 63
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/d/e;->f:Ljava/lang/String;

    .line 64
    return-object p0

    :cond_43
    move v0, v1

    .line 61
    goto :goto_31
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 6
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/applog/d/e;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/applog/d/e;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "user_unique_id"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "event"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lcom/bytedance/applog/d/e;->i:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    if-nez v0, :cond_36

    .line 76
    :try_start_33
    invoke-virtual {p0}, Lcom/bytedance/applog/d/e;->i()V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_36} :catch_5a

    .line 81
    :cond_36
    :goto_36
    const-string v0, "params"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "is_bav"

    iget-boolean v0, p0, Lcom/bytedance/applog/d/e;->i:Z

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    :goto_44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v0, "ab_version"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "ab_sdk_version"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 77
    :catch_5a
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_36

    .line 82
    :cond_5f
    const/4 v0, 0x0

    goto :goto_44
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/applog/d/e;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/applog/d/e;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v0, "user_unique_id"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v0, "event"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iget-boolean v0, p0, Lcom/bytedance/applog/d/e;->i:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/applog/d/e;->i()V

    .line 97
    :cond_2e
    const-string v0, "params"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v0, "is_bav"

    iget-boolean v1, p0, Lcom/bytedance/applog/d/e;->i:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    const-string v0, "ab_version"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v0, "ab_sdk_version"

    iget-object v1, p0, Lcom/bytedance/applog/d/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 39
    const/16 v0, 0x12

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

    const-string v2, "event"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "params"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_bav"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ab_version"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ab_sdk_version"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "varchar"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/applog/d/a;
    .registers 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 136
    const-string v0, "local_time_ms"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/applog/d/e;->a:J

    .line 137
    const-string v0, "tea_event_index"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/applog/d/e;->b:J

    .line 138
    const-string v0, "session_id"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/d/e;->c:Ljava/lang/String;

    .line 139
    const-string v0, "user_unique_id"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/d/e;->d:Ljava/lang/String;

    .line 140
    const-string v0, "event"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/d/e;->j:Ljava/lang/String;

    .line 141
    const-string v0, "params"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    .line 142
    const-string v0, "is_bav"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/applog/d/e;->i:Z

    .line 143
    const-string v0, "ab_version"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/d/e;->e:Ljava/lang/String;

    .line 144
    const-string v0, "ab_sdk_version"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/d/e;->f:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v1, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/applog/d/e;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    const-string v1, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/applog/d/e;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/bytedance/applog/d/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v1, p0, Lcom/bytedance/applog/d/e;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 110
    const-string v1, "user_unique_id"

    iget-object v2, p0, Lcom/bytedance/applog/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_29
    const-string v1, "event"

    iget-object v2, p0, Lcom/bytedance/applog/d/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-boolean v1, p0, Lcom/bytedance/applog/d/e;->i:Z

    if-eqz v1, :cond_3a

    .line 115
    const-string v1, "is_bav"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    :cond_3a
    iget-object v1, p0, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 119
    const-string v1, "params"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/applog/d/e;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_4e
    const-string v1, "datetime"

    iget-object v2, p0, Lcom/bytedance/applog/d/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v1, p0, Lcom/bytedance/applog/d/e;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 125
    const-string v1, "ab_version"

    iget-object v2, p0, Lcom/bytedance/applog/d/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_64
    iget-object v1, p0, Lcom/bytedance/applog/d/e;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 129
    const-string v1, "ab_sdk_version"

    iget-object v2, p0, Lcom/bytedance/applog/d/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_73
    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 160
    const-string v0, "eventv3"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bytedance/applog/d/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected i()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bytedance/applog/d/e;->j:Ljava/lang/String;

    return-object v0
.end method
