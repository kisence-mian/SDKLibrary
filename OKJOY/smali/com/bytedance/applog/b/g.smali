.class Lcom/bytedance/applog/b/g;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/applog/b/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v0}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 22
    iput-object p1, p0, Lcom/bytedance/applog/b/g;->e:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 5

    .prologue
    .line 28
    const-string v0, "sdk_version"

    const/16 v1, 0xcf0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string v0, "sdk_version_name"

    const-string v1, "3.3.12"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v0, "channel"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v0, "aid"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "release_build"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "app_region"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "app_language"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "user_agent"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "ab_sdk_version"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "ab_version"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "aliyun_uuid"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->o()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 42
    iget-object v0, p0, Lcom/bytedance/applog/b/g;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/c;->a(Landroid/content/Context;Lcom/bytedance/applog/b/h;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 45
    const-string v1, "google_aid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_90
    iget-object v0, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->C()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 51
    :try_start_9c
    const-string v1, "app_track"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_a6} :catch_cb

    .line 57
    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->r()Ljava/lang/String;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_be

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_be

    .line 59
    const-string v1, "custom"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_be
    const-string v0, "user_unique_id"

    iget-object v1, p0, Lcom/bytedance/applog/b/g;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    return v0

    .line 52
    :catch_cb
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_a6
.end method
