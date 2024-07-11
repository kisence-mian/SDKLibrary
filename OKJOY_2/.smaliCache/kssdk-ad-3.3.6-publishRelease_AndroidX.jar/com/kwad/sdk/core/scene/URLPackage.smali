.class public Lcom/kwad/sdk/core/scene/URLPackage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final KEY_AUTHOR_ID:Ljava/lang/String; = "authorId"

.field public static final KEY_TREND_ID:Ljava/lang/String; = "trendId"

.field public static final KEY_TUBE_ID:Ljava/lang/String; = "tubeId"

.field private static final serialVersionUID:J = -0x663890b4ee96c253L


# instance fields
.field public identity:Ljava/lang/String;

.field private transient mJsonObjectParams:Lorg/json/JSONObject;

.field public page:I

.field private params:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/kwad/sdk/core/scene/URLPackage;->page:I

    iput-object p1, p0, Lcom/kwad/sdk/core/scene/URLPackage;->identity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/scene/URLPackage;->page:I

    const-string v0, "identity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/scene/URLPackage;->identity:Ljava/lang/String;

    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/scene/URLPackage;->params:Ljava/lang/String;

    :try_start_1b
    invoke-static {p1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2c

    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/kwad/sdk/core/scene/URLPackage;->params:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/scene/URLPackage;->mJsonObjectParams:Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    move-exception p1

    :cond_2c
    :goto_2c
    return-void
.end method

.method public putParams(Ljava/lang/String;J)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/scene/URLPackage;->mJsonObjectParams:Lorg/json/JSONObject;

    if-nez v0, :cond_b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/scene/URLPackage;->mJsonObjectParams:Lorg/json/JSONObject;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/scene/URLPackage;->mJsonObjectParams:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2, p3}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/scene/URLPackage;->page:I

    const-string v2, "page"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/scene/URLPackage;->identity:Ljava/lang/String;

    const-string v2, "identity"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/scene/URLPackage;->mJsonObjectParams:Lorg/json/JSONObject;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-object v0
.end method
