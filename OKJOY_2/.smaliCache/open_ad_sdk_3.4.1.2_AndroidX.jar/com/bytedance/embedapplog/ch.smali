.class final Lcom/bytedance/embedapplog/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/Boolean;

.field final d:Ljava/lang/Long;

.field final e:Ljava/lang/Long;

.field final f:Ljava/lang/Integer;

.field final g:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V
    .registers 8

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/embedapplog/ch;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/bytedance/embedapplog/ch;->b:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/bytedance/embedapplog/ch;->c:Ljava/lang/Boolean;

    .line 55
    iput-object p4, p0, Lcom/bytedance/embedapplog/ch;->d:Ljava/lang/Long;

    .line 56
    iput-object p5, p0, Lcom/bytedance/embedapplog/ch;->e:Ljava/lang/Long;

    .line 57
    iput-object p6, p0, Lcom/bytedance/embedapplog/ch;->f:Ljava/lang/Integer;

    .line 58
    iput-object p7, p0, Lcom/bytedance/embedapplog/ch;->g:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/bytedance/embedapplog/ch;
    .registers 16

    .line 93
    const-string v0, "hw_id_version_code"

    const-string v1, "query_times"

    const-string v2, "time"

    const-string v3, "take_ms"

    const-string v4, "is_track_limited"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_12

    .line 94
    return-object v6

    .line 97
    :cond_12
    :try_start_12
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    const-string p0, "id"

    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    const-string p0, "req_id"

    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 107
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 108
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    move-object v10, p0

    goto :goto_39

    .line 107
    :cond_38
    move-object v10, v6

    .line 110
    :goto_39
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const-wide/16 v11, -0x1

    if-eqz p0, :cond_4a

    .line 111
    invoke-virtual {v5, v3, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_4b

    .line 110
    :cond_4a
    move-object p0, v6

    .line 113
    :goto_4b
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 114
    invoke-virtual {v5, v2, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_5b

    .line 113
    :cond_5a
    move-object v2, v6

    .line 116
    :goto_5b
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 117
    const/4 v3, -0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v13, v1

    goto :goto_6d

    .line 116
    :cond_6c
    move-object v13, v6

    .line 119
    :goto_6d
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 120
    invoke-virtual {v5, v0, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v14, v0

    goto :goto_7e

    .line 119
    :cond_7d
    move-object v14, v6

    .line 122
    :goto_7e
    new-instance v0, Lcom/bytedance/embedapplog/ch;

    move-object v7, v0

    move-object v11, p0

    move-object v12, v2

    invoke-direct/range {v7 .. v14}, Lcom/bytedance/embedapplog/ch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_86} :catch_87

    return-object v0

    .line 129
    :catch_87
    move-exception p0

    .line 130
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 132
    return-object v6
.end method


# virtual methods
.method a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->b:Ljava/lang/String;

    const-string v2, "req_id"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->c:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_track_limited"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->d:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "take_ms"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->e:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->f:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "query_times"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->g:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hw_id_version_code"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    return-object v0
.end method

.method b()Lorg/json/JSONObject;
    .registers 4

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->b:Ljava/lang/String;

    const-string v2, "req_id"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->c:Ljava/lang/Boolean;

    const-string v2, "is_track_limited"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->d:Ljava/lang/Long;

    const-string v2, "take_ms"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->e:Ljava/lang/Long;

    const-string v2, "time"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->f:Ljava/lang/Integer;

    const-string v2, "query_times"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lcom/bytedance/embedapplog/ch;->g:Ljava/lang/Long;

    const-string v2, "hw_id_version_code"

    invoke-static {v0, v2, v1}, Lcom/bytedance/embedapplog/ce;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/ch;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
