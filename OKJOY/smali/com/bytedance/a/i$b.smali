.class final Lcom/bytedance/a/i$b;
.super Lcom/bytedance/a/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:J

.field private final g:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 10

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/bytedance/a/g$a;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/bytedance/a/i$b;->a:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/bytedance/a/i$b;->b:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/bytedance/a/i$b;->c:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/bytedance/a/i$b;->d:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/bytedance/a/i$b;->e:Ljava/lang/String;

    .line 125
    iput-wide p6, p0, Lcom/bytedance/a/i$b;->f:J

    .line 126
    iput-wide p8, p0, Lcom/bytedance/a/i$b;->g:J

    .line 127
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/bytedance/a/i$b;
    .registers 15
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v10

    .line 147
    :goto_8
    return-object v0

    .line 134
    :cond_9
    :try_start_9
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/bytedance/a/i$b;

    const-string v1, "udid"

    const-string v2, ""

    .line 136
    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oaid"

    const-string v3, ""

    .line 137
    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vaid"

    const-string v4, ""

    .line 138
    invoke-virtual {v8, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aaid"

    const-string v5, ""

    .line 139
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "req_id"

    const-string v6, ""

    .line 140
    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "last_success_query_oaid_time"

    const-wide/16 v12, -0x1

    .line 141
    invoke-virtual {v8, v6, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v9, "take_ms"

    const-wide/16 v12, -0x1

    .line 142
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/a/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_4b} :catch_4c

    goto :goto_8

    .line 144
    :catch_4c
    move-exception v0

    .line 145
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v10

    .line 147
    goto :goto_8
.end method


# virtual methods
.method a()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    const-string v1, "id"

    iget-object v2, p0, Lcom/bytedance/a/i$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/a/e;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    const-string v1, "udid"

    iget-object v2, p0, Lcom/bytedance/a/i$b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/a/e;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    const-string v1, "take_ms"

    iget-wide v2, p0, Lcom/bytedance/a/i$b;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/a/e;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    const-string v1, "req_id"

    iget-object v2, p0, Lcom/bytedance/a/i$b;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/a/e;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 153
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 155
    :try_start_5
    const-string v0, "udid"

    iget-object v2, p0, Lcom/bytedance/a/i$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v0, "oaid"

    iget-object v2, p0, Lcom/bytedance/a/i$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v0, "vaid"

    iget-object v2, p0, Lcom/bytedance/a/i$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v0, "aaid"

    iget-object v2, p0, Lcom/bytedance/a/i$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v0, "req_id"

    iget-object v2, p0, Lcom/bytedance/a/i$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v0, "last_success_query_oaid_time"

    iget-wide v2, p0, Lcom/bytedance/a/i$b;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 161
    const-string v0, "take_ms"

    iget-wide v2, p0, Lcom/bytedance/a/i$b;->g:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_36} :catch_3b

    .line 165
    :goto_36
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :catch_3b
    move-exception v0

    .line 163
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_36
.end method

.method c()Z
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bytedance/a/i$b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
