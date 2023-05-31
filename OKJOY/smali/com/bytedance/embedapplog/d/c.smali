.class public Lcom/bytedance/embedapplog/d/c;
.super Lcom/bytedance/embedapplog/d/a;
.source "SourceFile"


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/bytedance/embedapplog/d/a;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .registers 9

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/bytedance/embedapplog/d/a;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/bytedance/embedapplog/d/c;->h:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/bytedance/embedapplog/d/c;->i:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/bytedance/embedapplog/d/c;->j:Ljava/lang/String;

    .line 51
    iput-wide p4, p0, Lcom/bytedance/embedapplog/d/c;->l:J

    .line 52
    iput-wide p6, p0, Lcom/bytedance/embedapplog/d/c;->m:J

    .line 53
    iput-object p8, p0, Lcom/bytedance/embedapplog/d/c;->k:Ljava/lang/String;

    .line 54
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
    .line 81
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/c;->a:J

    .line 82
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/c;->b:J

    .line 83
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->c:Ljava/lang/String;

    .line 84
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->d:Ljava/lang/String;

    .line 85
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->h:Ljava/lang/String;

    .line 86
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->i:Ljava/lang/String;

    .line 87
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/c;->l:J

    .line 88
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/c;->m:J

    .line 89
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->k:Ljava/lang/String;

    .line 90
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->j:Ljava/lang/String;

    .line 91
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->e:Ljava/lang/String;

    .line 92
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->f:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 6
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "user_unique_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "category"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "tag"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "value"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v0, "ext_value"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string v0, "params"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "label"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "ab_version"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "ab_sdk_version"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    const-string v0, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 115
    const-string v0, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "user_unique_id"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v0, "category"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v0, "tag"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v0, "value"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->l:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 121
    const-string v0, "ext_value"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->m:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 122
    const-string v0, "params"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v0, "label"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v0, "ab_version"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v0, "ab_sdk_version"

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 62
    const/16 v0, 0x18

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

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tag"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "value"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ext_value"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "params"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "label"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ab_version"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "varchar"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ab_sdk_version"

    aput-object v2, v0, v1

    const/16 v1, 0x17

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

    .line 161
    const-string v0, "local_time_ms"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/c;->a:J

    .line 162
    const-string v0, "tea_event_index"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/c;->b:J

    .line 163
    const-string v0, "session_id"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->c:Ljava/lang/String;

    .line 164
    const-string v0, "user_unique_id"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->d:Ljava/lang/String;

    .line 165
    const-string v0, "category"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->h:Ljava/lang/String;

    .line 166
    const-string v0, "tag"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->i:Ljava/lang/String;

    .line 167
    const-string v0, "value"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/c;->l:J

    .line 168
    const-string v0, "ext_value"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/d/c;->m:J

    .line 169
    const-string v0, "params"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->k:Ljava/lang/String;

    .line 170
    const-string v0, "label"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->j:Ljava/lang/String;

    .line 171
    const-string v0, "ab_version"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->e:Ljava/lang/String;

    .line 172
    const-string v0, "ab_sdk_version"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/d/c;->f:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    :cond_10
    if-nez v0, :cond_17

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 137
    :cond_17
    const-string v1, "local_time_ms"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 138
    const-string v1, "tea_event_index"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 139
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 141
    const-string v1, "user_unique_id"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :cond_3b
    const-string v1, "category"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v1, "tag"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "value"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 146
    const-string v1, "ext_value"

    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/c;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    const-string v1, "label"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v1, "datetime"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 150
    const-string v1, "ab_version"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_74
    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 154
    const-string v1, "ab_sdk_version"

    iget-object v2, p0, Lcom/bytedance/embedapplog/d/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_83
    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 179
    const-string v0, "event"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/d/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/bytedance/embedapplog/d/c;->j:Ljava/lang/String;

    return-object v0
.end method
