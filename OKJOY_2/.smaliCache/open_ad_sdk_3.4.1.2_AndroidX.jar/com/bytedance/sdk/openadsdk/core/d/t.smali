.class public Lcom/bytedance/sdk/openadsdk/core/d/t;
.super Ljava/lang/Object;
.source "VideoInfo.java"


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:D

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->l:I

    .line 38
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->m:I

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)[I
    .registers 3

    .line 184
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 185
    return-object v0

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    if-nez v1, :cond_b

    .line 188
    return-object v0

    .line 190
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->g()[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->k:I

    return v0
.end method

.method public a(D)V
    .registers 3

    .line 77
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->d:D

    .line 78
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->k:I

    .line 46
    return-void
.end method

.method public a(J)V
    .registers 3

    .line 69
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->c:J

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->e:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public b()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->a:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->a:I

    .line 54
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->f:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public c()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->b:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->b:I

    .line 62
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->g:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public d()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->c:J

    return-wide v0
.end method

.method public d(I)V
    .registers 2

    .line 172
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->l:I

    .line 173
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->h:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public e()D
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->d:D

    return-wide v0
.end method

.method public e(I)V
    .registers 2

    .line 180
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->m:I

    .line 181
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->i:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->j:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public g()[I
    .registers 6

    .line 90
    nop

    .line 91
    nop

    .line 92
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->e:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->e:Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v2

    aput v0, v3, v4
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_31

    return-object v3

    .line 98
    :catchall_31
    move-exception v0

    .line 99
    const-string v1, "VideoInfo"

    const-string v2, "getWidthAndHeight error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lorg/json/JSONObject;
    .registers 5

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 147
    :try_start_5
    const-string v1, "cover_height"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string v1, "cover_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v1, "cover_width"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string v1, "endcard"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v1, "file_hash"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v1, "resolution"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v1, "size"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 154
    const-string v1, "video_duration"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->e()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 155
    const-string v1, "video_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v1, "playable_download_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v1, "if_playable_loading_show"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v1, "remove_loading_page_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->o()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    const-string v1, "fallback_endcard_judge"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7a} :catch_7b

    .line 163
    goto :goto_7c

    .line 161
    :catch_7b
    move-exception v1

    .line 164
    :goto_7c
    return-object v0
.end method

.method public n()I
    .registers 2

    .line 168
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->l:I

    return v0
.end method

.method public o()I
    .registers 2

    .line 176
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/t;->m:I

    return v0
.end method
