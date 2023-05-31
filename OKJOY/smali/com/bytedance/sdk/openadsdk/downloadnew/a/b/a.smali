.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
.super Ljava/lang/Object;
.source "LibEventExtra.java"


# instance fields
.field public a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;-><init>()V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 25
    if-nez p0, :cond_4

    .line 46
    :goto_3
    return-object v0

    .line 36
    :cond_4
    :try_start_4
    const-string v1, "tag"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_37

    move-result-object v3

    .line 37
    :try_start_b
    const-string v1, "label"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_3c

    move-result-object v2

    .line 38
    :try_start_12
    const-string v1, "extra"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_40

    move-result-object v1

    .line 40
    :try_start_18
    const-string v4, "material_meta"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 41
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_43

    move-result-object v0

    .line 46
    :goto_22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a()Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v0

    goto :goto_3

    .line 42
    :catch_37
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto :goto_22

    :catch_3c
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_22

    :catch_40
    move-exception v1

    move-object v1, v0

    goto :goto_22

    :catch_43
    move-exception v4

    goto :goto_22
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 56
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->c:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->d:Lorg/json/JSONObject;

    .line 71
    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_5
    const-string v1, "tag"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "label"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_1e

    .line 82
    const-string v1, "extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_1e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_2d

    .line 85
    const-string v1, "material_meta"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2e

    .line 91
    :cond_2d
    :goto_2d
    return-object v0

    .line 88
    :catch_2e
    move-exception v1

    goto :goto_2d
.end method
