.class public Lcom/bytedance/sdk/openadsdk/core/d/b;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 62
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->d:I

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->g:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 70
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->e:I

    .line 71
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 78
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->f:I

    .line 79
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->d:I

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->e:I

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->f:I

    return v0
.end method

.method public h()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 82
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    :try_start_5
    const-string v0, "app_name"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v0, "app_size"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->g()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string v0, "comment_num"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v0, "download_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v0, "package_name"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v0, "score"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 93
    :goto_3b
    return-object v1

    .line 90
    :catch_3c
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    goto :goto_3b
.end method
