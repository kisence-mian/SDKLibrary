.class public abstract Lcom/kwad/sdk/core/report/n;
.super Lcom/kwad/sdk/core/network/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/a<",
        "Lcom/kwad/sdk/core/report/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/a;-><init>()V

    return-void
.end method

.method private a(Lcom/kwad/sdk/core/report/o;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/kwad/sdk/core/report/o;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyForHttp()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doGetWithoutResponse(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/core/network/c;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_8

    :catch_21
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_25
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/network/c;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/report/o;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/report/n;->a(Lcom/kwad/sdk/core/report/o;Lcom/kwad/sdk/core/network/c;)V

    return-void
.end method

.method protected a(Lcom/kwad/sdk/core/report/o;Lcom/kwad/sdk/core/network/c;)V
    .registers 3

    return-void
.end method

.method public c()V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "ReportNetwork"

    const-string v1, "no network while report log"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-super {p0}, Lcom/kwad/sdk/core/network/a;->c()V

    return-void
.end method

.method protected d()V
    .registers 6

    invoke-virtual {p0}, Lcom/kwad/sdk/core/report/n;->b()Lcom/kwad/sdk/core/network/g;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/report/o;

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0}, Lcom/kwad/sdk/core/report/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyForHttp()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kwad/sdk/core/report/o;->d()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v3, v2, v1, v4}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/core/network/c;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_45

    const-string v2, "ReportNetwork"

    if-eqz v1, :cond_3e

    :try_start_1f
    iget v3, v1, Lcom/kwad/sdk/core/network/c;->a:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "report success actionType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/kwad/sdk/core/report/o;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3a
    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_3e
    const-string v3, "report fail result is null"

    goto :goto_3a

    :goto_41
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/report/n;->a(Lcom/kwad/sdk/core/report/o;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_49
    sget-object v0, Lcom/kwad/sdk/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_95

    new-instance v0, Lcom/kwad/sdk/core/report/ReportNetwork$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/report/ReportNetwork$1;-><init>(Lcom/kwad/sdk/core/report/n;)V

    if-eqz v1, :cond_67

    :try_start_58
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/kwad/sdk/core/network/c;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/network/BaseResultData;->parseJson(Lorg/json/JSONObject;)V
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_67
    :goto_67
    invoke-virtual {v0}, Lcom/kwad/sdk/core/network/BaseResultData;->isResultOk()Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_95

    :cond_6e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u6c42\u8fd4\u56de\u5931\u8d25 code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/kwad/sdk/core/network/BaseResultData;->result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/kwad/sdk/core/network/BaseResultData;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_95
    :goto_95
    return-void
.end method
