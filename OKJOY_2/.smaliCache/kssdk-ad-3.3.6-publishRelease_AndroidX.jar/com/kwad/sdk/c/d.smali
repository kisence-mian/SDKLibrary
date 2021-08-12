.class public Lcom/kwad/sdk/c/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLorg/json/JSONObject;)Lcom/kwad/sdk/c/c;
    .registers 4

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->k(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p0, Lcom/kwad/sdk/c/a;

    invoke-direct {p0, p2}, Lcom/kwad/sdk/c/a;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/c/a;->a(Z)Lcom/kwad/sdk/c/a;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/b;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance p0, Lcom/kwad/sdk/c/c;

    invoke-direct {p0, p2}, Lcom/kwad/sdk/c/c;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method
