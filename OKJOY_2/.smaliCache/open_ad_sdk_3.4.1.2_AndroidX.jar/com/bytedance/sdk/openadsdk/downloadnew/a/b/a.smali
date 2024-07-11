.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
.super Ljava/lang/Object;
.source "LibEventExtra.java"


# instance fields
.field public a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 1

    .line 21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;-><init>()V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 6

    .line 25
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 26
    return-object v0

    .line 30
    :cond_4
    nop

    .line 31
    nop

    .line 32
    nop

    .line 33
    nop

    .line 36
    :try_start_8
    const-string v1, "tag"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_2d

    .line 37
    :try_start_e
    const-string v2, "label"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_2a

    .line 38
    :try_start_14
    const-string v3, "extra"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_27

    .line 40
    :try_start_1a
    const-string v4, "material_meta"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_25

    .line 43
    goto :goto_31

    .line 42
    :catch_25
    move-exception p0

    goto :goto_31

    :catch_27
    move-exception p0

    move-object v3, v0

    goto :goto_31

    :catch_2a
    move-exception p0

    move-object v2, v0

    goto :goto_30

    :catch_2d
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_30
    move-object v3, v2

    .line 46
    :goto_31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a()Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 56
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->c:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->d:Lorg/json/JSONObject;

    .line 71
    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4

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

    if-eqz v1, :cond_1c

    .line 82
    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_1c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_29

    .line 85
    const-string v2, "material_meta"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    .line 89
    :cond_29
    goto :goto_2b

    .line 88
    :catch_2a
    move-exception v1

    .line 91
    :goto_2b
    return-object v0
.end method
