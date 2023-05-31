.class public Lcom/kwad/sdk/core/request/model/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;


# instance fields
.field private a:Lcom/kwad/sdk/core/request/model/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/request/model/g;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/request/model/g;

    invoke-direct {v0}, Lcom/kwad/sdk/core/request/model/g;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/core/request/model/e;->a()Lcom/kwad/sdk/core/request/model/e;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/g;->a:Lcom/kwad/sdk/core/request/model/e;

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/g;->a:Lcom/kwad/sdk/core/request/model/e;

    const-string v2, "modeInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/c/g/a/b;)V

    return-object v0
.end method
