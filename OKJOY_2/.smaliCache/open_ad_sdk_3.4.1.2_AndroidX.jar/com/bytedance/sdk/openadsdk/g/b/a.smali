.class public Lcom/bytedance/sdk/openadsdk/g/b/a;
.super Ljava/lang/Object;
.source "ReportThreadLogServiceImp.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/j/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/j/a/b;)V
    .registers 4

    .line 34
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_44

    .line 37
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 38
    const-string v1, "tt_pangle_sdk_thread_state"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execReportSdkThreadLog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReportThreadLogServiceI"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 35
    :cond_44
    :goto_44
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/j/a/c;)V
    .registers 4

    .line 21
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/a/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_44

    .line 24
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 25
    const-string v1, "tt_pangle_thread_pool"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/a/c;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execReportThreadPoolLog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReportThreadLogServiceI"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void

    .line 22
    :cond_44
    :goto_44
    return-void
.end method
