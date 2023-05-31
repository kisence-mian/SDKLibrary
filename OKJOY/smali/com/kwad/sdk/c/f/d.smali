.class public abstract Lcom/kwad/sdk/c/f/d;
.super Lcom/kwad/sdk/c/d/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/c/f/d$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/kwad/sdk/c/f/d$a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/c/f/d$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/c/d/a/a;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/c/f/d;->b:Lcom/kwad/sdk/c/f/d$a;

    return-void
.end method


# virtual methods
.method protected a(Lcom/kwad/sdk/core/request/k/b;Lcom/kwad/sdk/c/g/a/a;)V
    .registers 9

    if-nez p2, :cond_a

    const-string v0, "BatchReportNetwork"

    const-string v1, "response is null"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response.body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/kwad/sdk/c/g/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatchReportNetwork"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/kwad/sdk/c/g/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/kwad/sdk/c/f/d;->b:Lcom/kwad/sdk/c/f/d$a;

    iget v1, p2, Lcom/kwad/sdk/c/g/a/a;->a:I

    int-to-long v2, v1

    const-string v1, "http error."

    invoke-interface {v0, v2, v3, v1}, Lcom/kwad/sdk/c/f/d$a;->a(JLjava/lang/String;)V

    goto :goto_9

    :cond_37
    const/4 v1, 0x0

    :try_start_38
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p2, Lcom/kwad/sdk/c/g/a/a;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_3f} :catch_57

    :goto_3f
    new-instance v1, Lcom/kwad/sdk/core/response/model/c;

    invoke-direct {v1}, Lcom/kwad/sdk/core/response/model/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/response/model/c;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/c;->d()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/kwad/sdk/c/f/d;->b:Lcom/kwad/sdk/c/f/d$a;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/c;->b()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/kwad/sdk/c/f/d$a;->a(J)V

    goto :goto_9

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/kwad/sdk/c/f/d;->b:Lcom/kwad/sdk/c/f/d$a;

    sget-object v2, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_PARSE_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

    iget v3, v2, Lcom/kwad/sdk/core/request/ErrorCode;->errorCode:I

    int-to-long v4, v3

    iget-object v2, v2, Lcom/kwad/sdk/core/request/ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v2}, Lcom/kwad/sdk/c/f/d$a;->a(JLjava/lang/String;)V

    move-object v0, v1

    goto :goto_3f

    :cond_69
    iget-object v0, p0, Lcom/kwad/sdk/c/f/d;->b:Lcom/kwad/sdk/c/f/d$a;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/c;->c()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/kwad/sdk/c/f/d$a;->a(JLjava/lang/String;)V

    goto :goto_9
.end method

.method protected c()V
    .registers 6

    invoke-virtual {p0}, Lcom/kwad/sdk/c/d/a/a;->a()Lcom/kwad/sdk/core/request/k/b;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/f/e;

    :try_start_6
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getProxyForHttp()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kwad/sdk/c/f/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kwad/sdk/core/request/k/a;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kwad/sdk/core/request/k/a;->c()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/c/g/a/a;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/c/f/d;->a(Lcom/kwad/sdk/core/request/k/b;Lcom/kwad/sdk/c/g/a/a;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method
