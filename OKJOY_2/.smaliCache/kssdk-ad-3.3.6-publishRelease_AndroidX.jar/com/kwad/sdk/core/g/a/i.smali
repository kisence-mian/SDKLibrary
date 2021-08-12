.class public Lcom/kwad/sdk/core/g/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# instance fields
.field private a:Lcom/kwad/sdk/core/g/a/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/g/a/i;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/g/a/i;

    invoke-direct {v0}, Lcom/kwad/sdk/core/g/a/i;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/g;->a()Lcom/kwad/sdk/core/g/a/g;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/g/a/i;->a:Lcom/kwad/sdk/core/g/a/g;

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/g/a/i;->a:Lcom/kwad/sdk/core/g/a/g;

    const-string v2, "modeInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-object v0
.end method
