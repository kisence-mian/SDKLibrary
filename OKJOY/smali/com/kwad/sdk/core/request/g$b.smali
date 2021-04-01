.class Lcom/kwad/sdk/core/request/g$b;
.super Lcom/kwad/sdk/core/request/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/g;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/g$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kwad/sdk/protocol/model/AdScene;

.field final synthetic c:Lcom/kwad/sdk/core/request/g$d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/g;Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/g$d;)V
    .registers 4

    iput-object p2, p0, Lcom/kwad/sdk/core/request/g$b;->b:Lcom/kwad/sdk/protocol/model/AdScene;

    iput-object p3, p0, Lcom/kwad/sdk/core/request/g$b;->c:Lcom/kwad/sdk/core/request/g$d;

    invoke-direct {p0}, Lcom/kwad/sdk/core/request/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/kwad/sdk/core/request/c;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/kwad/sdk/core/request/f;

    iget-object v1, p0, Lcom/kwad/sdk/core/request/g$b;->b:Lcom/kwad/sdk/protocol/model/AdScene;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/request/f;-><init>(Lcom/kwad/sdk/protocol/model/AdScene;)V

    return-object v0
.end method

.method public bridge synthetic a()Lcom/kwad/sdk/core/request/k/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/kwad/sdk/core/request/g$b;->a()Lcom/kwad/sdk/core/request/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/kwad/sdk/core/request/k/b;Lcom/kwad/sdk/c/g/a/a;)V
    .registers 6

    if-nez p2, :cond_a

    const-string v0, "PhotoRequestManager"

    const-string v1, "requestAd responseBase is null"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p2, Lcom/kwad/sdk/c/g/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/kwad/sdk/core/request/g$b;->c:Lcom/kwad/sdk/core/request/g$d;

    iget v1, p2, Lcom/kwad/sdk/c/g/a/a;->a:I

    const-string v2, "http error code"

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/request/g$d;->onError(ILjava/lang/String;)V

    goto :goto_9

    :cond_1c
    :try_start_1c
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/kwad/sdk/c/g/a/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/kwad/sdk/core/response/model/b;

    invoke-direct {v1}, Lcom/kwad/sdk/core/response/model/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/response/model/b;->a(Lorg/json/JSONObject;)V

    iget v0, v1, Lcom/kwad/sdk/core/response/model/b;->c:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4a

    iget-object v0, p0, Lcom/kwad/sdk/core/request/g$b;->c:Lcom/kwad/sdk/core/request/g$d;

    iget v2, v1, Lcom/kwad/sdk/core/response/model/b;->c:I

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/b;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kwad/sdk/core/request/g$d;->onError(ILjava/lang/String;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_39} :catch_3a

    goto :goto_9

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/kwad/sdk/core/request/g$b;->c:Lcom/kwad/sdk/core/request/g$d;

    sget-object v1, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_PARSE_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

    iget v2, v1, Lcom/kwad/sdk/core/request/ErrorCode;->errorCode:I

    iget-object v1, v1, Lcom/kwad/sdk/core/request/ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kwad/sdk/core/request/g$d;->onError(ILjava/lang/String;)V

    goto :goto_9

    :cond_4a
    :try_start_4a
    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/kwad/sdk/core/request/g$b;->c:Lcom/kwad/sdk/core/request/g$d;

    sget-object v1, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_EMPTY:Lcom/kwad/sdk/core/request/ErrorCode;

    iget v1, v1, Lcom/kwad/sdk/core/request/ErrorCode;->errorCode:I

    sget-object v2, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_EMPTY:Lcom/kwad/sdk/core/request/ErrorCode;

    iget-object v2, v2, Lcom/kwad/sdk/core/request/ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/request/g$d;->onError(ILjava/lang/String;)V

    goto :goto_9

    :cond_5e
    iget-object v0, p0, Lcom/kwad/sdk/core/request/g$b;->c:Lcom/kwad/sdk/core/request/g$d;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/request/g$d;->a(Ljava/util/List;)V
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_65} :catch_3a

    goto :goto_9
.end method
