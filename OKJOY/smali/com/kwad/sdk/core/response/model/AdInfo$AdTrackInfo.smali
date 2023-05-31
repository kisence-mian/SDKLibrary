.class public Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/kwad/sdk/c/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdTrackInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1074a81fd6526ad1L


# instance fields
.field public type:I

.field public urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->type:I

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->urls:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->urls:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->type:I

    const-string v2, "type"

    invoke-static {v1, v2, v0}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->urls:[Ljava/lang/String;

    if-eqz v3, :cond_21

    array-length v4, v3

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v4, :cond_21

    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_21
    const-string v0, "url"

    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object v1
.end method
