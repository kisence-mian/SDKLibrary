.class public Lcom/bytedance/embedapplog/ba;
.super Lcom/bytedance/embedapplog/aq;
.source "SourceFile"


# instance fields
.field public h:J

.field i:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/aq;
    .registers 2

    .line 36
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 37
    return-object p0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 2

    .line 42
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 2

    .line 47
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method protected a()[Ljava/lang/String;
    .registers 2

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/bytedance/embedapplog/aq;
    .registers 2

    .line 71
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 72
    return-object p0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 6

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    iget-wide v1, p0, Lcom/bytedance/embedapplog/ba;->a:J

    const-string v3, "local_time_ms"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    iget-wide v1, p0, Lcom/bytedance/embedapplog/ba;->b:J

    const-string v3, "tea_event_index"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    iget-object v1, p0, Lcom/bytedance/embedapplog/ba;->c:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-wide v1, p0, Lcom/bytedance/embedapplog/ba;->i:J

    const-string v3, "stop_timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    iget-wide v1, p0, Lcom/bytedance/embedapplog/ba;->h:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v3, "duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    iget-object v1, p0, Lcom/bytedance/embedapplog/ba;->g:Ljava/lang/String;

    const-string v2, "datetime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v1, p0, Lcom/bytedance/embedapplog/ba;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 60
    iget-object v1, p0, Lcom/bytedance/embedapplog/ba;->e:Ljava/lang/String;

    const-string v2, "ab_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_41
    iget-object v1, p0, Lcom/bytedance/embedapplog/ba;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 64
    iget-object v1, p0, Lcom/bytedance/embedapplog/ba;->f:Ljava/lang/String;

    const-string v2, "ab_sdk_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_50
    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    .line 78
    const-string v0, "terminate"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/bytedance/embedapplog/aq;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/embedapplog/ba;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
