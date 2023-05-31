.class Lcom/bytedance/applog/a/a;
.super Lcom/bytedance/applog/a/c;
.source "SourceFile"


# instance fields
.field private b:J

.field private final c:Lcom/bytedance/applog/b/h;

.field private final d:Lcom/bytedance/applog/b/i;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/b/h;)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/bytedance/applog/a/c;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/bytedance/applog/a/a;->d:Lcom/bytedance/applog/b/i;

    .line 29
    iput-object p3, p0, Lcom/bytedance/applog/a/a;->c:Lcom/bytedance/applog/b/h;

    .line 30
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .registers 6

    .prologue
    const-wide/32 v0, 0x927c0

    .line 39
    iget-object v2, p0, Lcom/bytedance/applog/a/a;->c:Lcom/bytedance/applog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/applog/b/h;->v()J

    move-result-wide v2

    .line 40
    cmp-long v4, v2, v0

    if-gez v4, :cond_11

    .line 43
    :goto_d
    iget-wide v2, p0, Lcom/bytedance/applog/a/a;->b:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_11
    move-wide v0, v2

    goto :goto_d
.end method

.method c()[J
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/bytedance/applog/a/j;->c:[J

    return-object v0
.end method

.method d()Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    iget-object v2, p0, Lcom/bytedance/applog/a/a;->d:Lcom/bytedance/applog/b/i;

    invoke-virtual {v2}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/bytedance/applog/a/a;->d:Lcom/bytedance/applog/b/i;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/i;->o()I

    move-result v3

    if-eqz v3, :cond_85

    if-eqz v2, :cond_85

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 56
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 57
    const-string v5, "header"

    iget-object v6, p0, Lcom/bytedance/applog/a/a;->d:Lcom/bytedance/applog/b/i;

    invoke-virtual {v6}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v5, "magic_tag"

    const-string v6, "ss_app_log"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v5, "_gen_time"

    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    iget-object v5, p0, Lcom/bytedance/applog/a/a;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/applog/a/a;->d:Lcom/bytedance/applog/b/i;

    .line 61
    invoke-virtual {v6}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {}, Lcom/bytedance/applog/c/a;->a()Lcom/bytedance/applog/util/UriConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/applog/util/UriConfig;->getABConfigUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIAppParam()Lcom/bytedance/applog/IAppParam;

    move-result-object v8

    .line 60
    invoke-static {v5, v6, v7, v1, v8}, Lcom/bytedance/applog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/IAppParam;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/bytedance/applog/c/a;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 62
    if-eqz v4, :cond_85

    .line 64
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbConfig()Lorg/json/JSONObject;

    move-result-object v5

    .line 65
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDataObserver()Lcom/bytedance/applog/IDataObserver;

    move-result-object v6

    invoke-static {v5, v4}, Lcom/bytedance/applog/util/k;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_5f

    move v0, v1

    :cond_5f
    invoke-interface {v6, v0, v4}, Lcom/bytedance/applog/IDataObserver;->onRemoteAbConfigGet(ZLorg/json/JSONObject;)V

    .line 67
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_7d

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAbConfig "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_7d
    iget-object v0, p0, Lcom/bytedance/applog/a/a;->d:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0, v4}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;)V

    .line 71
    iput-wide v2, p0, Lcom/bytedance/applog/a/a;->b:J

    .line 75
    :goto_84
    return v1

    :cond_85
    move v1, v0

    goto :goto_84
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    const-string v0, "ab"

    return-object v0
.end method
