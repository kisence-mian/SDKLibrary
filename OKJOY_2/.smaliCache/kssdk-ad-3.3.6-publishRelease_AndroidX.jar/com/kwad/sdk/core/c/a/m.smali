.class public Lcom/kwad/sdk/core/c/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/c<",
        "Lcom/kwad/sdk/core/report/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/report/b$a;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p1, Lcom/kwad/sdk/core/report/b$a;->a:I

    const-string v2, "code"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object p1, p1, Lcom/kwad/sdk/core/report/b$a;->b:Ljava/lang/String;

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;)Lorg/json/JSONObject;
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/report/b$a;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/c/a/m;->a(Lcom/kwad/sdk/core/report/b$a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/kwad/sdk/core/report/b$a;Lorg/json/JSONObject;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/b$a;->a:I

    const-string v0, "msg"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kwad/sdk/core/report/b$a;->b:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;Lorg/json/JSONObject;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/report/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/c/a/m;->a(Lcom/kwad/sdk/core/report/b$a;Lorg/json/JSONObject;)V

    return-void
.end method
