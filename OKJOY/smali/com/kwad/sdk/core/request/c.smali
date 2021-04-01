.class public abstract Lcom/kwad/sdk/core/request/c;
.super Lcom/kwad/sdk/core/request/k/a;
.source ""


# instance fields
.field private c:Lcom/kwad/sdk/protocol/model/AdScene;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/request/k/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/protocol/model/AdScene;)V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/request/k/a;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/request/c;->c:Lcom/kwad/sdk/protocol/model/AdScene;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/kwad/sdk/protocol/model/AdScene;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    const-string v1, "impInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    const-string v0, "SDKVersion"

    const-string v1, "2.6.4.1"

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "protocolVersion"

    const-string v1, "2.0"

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/request/model/b;->a()Lcom/kwad/sdk/core/request/model/b;

    move-result-object v0

    const-string v1, "appInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Lcom/kwad/sdk/c/g/a/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/request/model/c;->a()Lcom/kwad/sdk/core/request/model/c;

    move-result-object v0

    const-string v1, "deviceInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Lcom/kwad/sdk/c/g/a/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/request/model/f;->a()Lcom/kwad/sdk/core/request/model/f;

    move-result-object v0

    const-string v1, "networkInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Lcom/kwad/sdk/c/g/a/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/request/model/d;->a()Lcom/kwad/sdk/core/request/model/d;

    move-result-object v0

    const-string v1, "geoInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Lcom/kwad/sdk/c/g/a/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/request/model/g;->a()Lcom/kwad/sdk/core/request/model/g;

    move-result-object v0

    const-string v1, "ext"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Lcom/kwad/sdk/c/g/a/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/request/model/h;->a()Lcom/kwad/sdk/core/request/model/h;

    move-result-object v0

    const-string v1, "userInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Lcom/kwad/sdk/c/g/a/b;)V

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method e()Lcom/kwad/sdk/protocol/model/AdScene;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/request/c;->c:Lcom/kwad/sdk/protocol/model/AdScene;

    return-object v0
.end method
