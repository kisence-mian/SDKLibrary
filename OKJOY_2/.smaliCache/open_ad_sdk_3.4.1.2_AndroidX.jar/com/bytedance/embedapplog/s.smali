.class Lcom/bytedance/embedapplog/s;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/z;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V
    .registers 5

    .line 22
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 23
    iput-object p1, p0, Lcom/bytedance/embedapplog/s;->e:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 30
    iget-object v0, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->J()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_client"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_17
    iget-object v0, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 33
    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v0, :cond_44

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init config has abversion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/z;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_44
    iget-object v0, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_4f
    iget-object v0, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 39
    iget-object v0, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->K()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_group"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_66
    iget-object v0, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 42
    iget-object v0, p0, Lcom/bytedance/embedapplog/s;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->L()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_feature"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_7d
    const/4 p1, 0x1

    return p1
.end method
