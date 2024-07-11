.class public Lcom/kwad/sdk/core/response/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterParseJson(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public afterToJson(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0}, Lcom/kwad/sdk/core/c/a/r;->a(Lcom/kwad/sdk/core/response/a/a;)Lcom/kwad/sdk/core/c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/core/c;->a(Lcom/kwad/sdk/core/response/a/a;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/response/a/a;->afterParseJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 2

    invoke-static {p0}, Lcom/kwad/sdk/core/c/a/r;->a(Lcom/kwad/sdk/core/response/a/a;)Lcom/kwad/sdk/core/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/c;->a(Lcom/kwad/sdk/core/response/a/a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/response/a/a;->afterToJson(Lorg/json/JSONObject;)V

    return-object v0
.end method
