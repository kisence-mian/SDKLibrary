.class public Lcom/bytedance/sdk/openadsdk/core/d/r;
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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->k:I

    .line 32
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->l:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->a:I

    return v0
.end method

.method public a(D)V
    .registers 4

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->d:D

    .line 64
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 39
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->a:I

    .line 40
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->c:J

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->b:I

    .line 48
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->f:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public c()J
    .registers 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->c:J

    return-wide v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 140
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->k:I

    .line 141
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->g:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public d()D
    .registers 3

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->d:D

    return-wide v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 148
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->l:I

    .line 149
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->h:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->i:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->j:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    :try_start_5
    const-string v1, "cover_height"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v1, "cover_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "cover_width"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string v1, "endcard"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v1, "file_hash"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v1, "resolution"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "size"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    const-string v1, "video_duration"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 125
    const-string v1, "video_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v1, "playable_download_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "if_playable_loading_show"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    const-string v1, "remove_loading_page_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_71} :catch_72

    .line 132
    :goto_71
    return-object v0

    .line 129
    :catch_72
    move-exception v1

    goto :goto_71
.end method

.method public l()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->k:I

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/r;->l:I

    return v0
.end method
