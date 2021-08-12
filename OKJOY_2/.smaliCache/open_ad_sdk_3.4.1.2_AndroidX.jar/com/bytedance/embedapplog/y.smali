.class Lcom/bytedance/embedapplog/y;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/z;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V
    .registers 4

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 23
    iput-object p1, p0, Lcom/bytedance/embedapplog/y;->e:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 5

    .line 29
    const-string v0, "sdk_version"

    const/16 v1, 0x150

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string v0, "sdk_version_name"

    const-string v1, "3.6.0-rc.9-embed"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release_build"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_region"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_language"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_agent"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_sdk_version"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aliyun_uuid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->l()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 43
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bk;->a(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 46
    const-string v1, "google_aid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_90
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->z()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 52
    :try_start_9c
    const-string v1, "app_track"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_a7

    .line 55
    goto :goto_ab

    .line 53
    :catchall_a7
    move-exception v0

    .line 54
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 58
    :cond_ab
    :goto_ab
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->o()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c3

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "custom"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_c3
    iget-object v0, p0, Lcom/bytedance/embedapplog/y;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_unique_id"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 p1, 0x1

    return p1
.end method
