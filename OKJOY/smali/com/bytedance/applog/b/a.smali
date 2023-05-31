.class Lcom/bytedance/applog/b/a;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/applog/b/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V
    .registers 5

    .prologue
    .line 22
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 23
    iput-object p1, p0, Lcom/bytedance/applog/b/a;->e:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 30
    const-string v0, "ab_client"

    iget-object v1, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_17
    iget-object v0, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 33
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_44

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init config has abversion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_44
    const-string v0, "ab_version"

    iget-object v1, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_4f
    iget-object v0, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->N()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 39
    const-string v0, "ab_group"

    iget-object v1, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_66
    iget-object v0, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 42
    const-string v0, "ab_feature"

    iget-object v1, p0, Lcom/bytedance/applog/b/a;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_7d
    const/4 v0, 0x1

    return v0
.end method
