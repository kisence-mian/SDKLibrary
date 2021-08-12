.class Lcom/bytedance/embedapplog/j;
.super Lcom/bytedance/embedapplog/i;
.source "SourceFile"


# instance fields
.field private final b:Lcom/bytedance/embedapplog/z;

.field private final c:Lcom/bytedance/embedapplog/aa;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/z;)V
    .registers 4

    .line 26
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/i;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/bytedance/embedapplog/j;->c:Lcom/bytedance/embedapplog/aa;

    .line 28
    iput-object p3, p0, Lcom/bytedance/embedapplog/j;->b:Lcom/bytedance/embedapplog/z;

    .line 29
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/bytedance/embedapplog/j;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->h()J

    move-result-wide v0

    const-wide/32 v2, 0x1499700

    add-long/2addr v0, v2

    return-wide v0
.end method

.method c()[J
    .registers 2

    .line 46
    sget-object v0, Lcom/bytedance/embedapplog/o;->c:[J

    return-object v0
.end method

.method public d()Z
    .registers 7

    .line 51
    iget-object v0, p0, Lcom/bytedance/embedapplog/j;->c:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/bytedance/embedapplog/j;->c:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/aa;->o()I

    move-result v1

    if-eqz v1, :cond_79

    if-eqz v0, :cond_79

    .line 54
    iget-object v1, p0, Lcom/bytedance/embedapplog/j;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/z;->h()J

    move-result-wide v1

    const-wide/32 v3, 0x1499700

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_79

    .line 55
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v2, "magic_tag"

    const-string v3, "ss_app_log"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "_gen_time"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    iget-object v0, p0, Lcom/bytedance/embedapplog/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/embedapplog/j;->c:Lcom/bytedance/embedapplog/aa;

    .line 61
    invoke-virtual {v2}, Lcom/bytedance/embedapplog/aa;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/embedapplog/ao;->a()Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/util/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getIAppParam()Lcom/bytedance/embedapplog/IAppParam;

    move-result-object v4

    .line 61
    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v5, v4}, Lcom/bytedance/embedapplog/ap;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/IAppParam;)Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v2, Lcom/bytedance/embedapplog/ao;->c:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bytedance/embedapplog/ao;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/ao;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/embedapplog/j;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/z;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/embedapplog/bp;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-interface {v1, v2, v0}, Lcom/bytedance/embedapplog/IDataObserver;->onRemoteConfigGet(ZLorg/json/JSONObject;)V

    .line 67
    if-eqz v0, :cond_79

    .line 68
    iget-object v1, p0, Lcom/bytedance/embedapplog/j;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v1, v0}, Lcom/bytedance/embedapplog/z;->a(Lorg/json/JSONObject;)V

    .line 69
    return v5

    .line 73
    :cond_79
    const/4 v0, 0x0

    return v0
.end method

.method e()Ljava/lang/String;
    .registers 2

    .line 78
    const-string v0, "c"

    return-object v0
.end method
