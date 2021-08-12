.class public Lcom/kwad/sdk/core/response/model/TrendListResultData;
.super Lcom/kwad/sdk/core/network/BaseResultData;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedResultData"

.field private static final serialVersionUID:J = -0x20b3001eead44437L


# instance fields
.field public trends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/TrendInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/BaseResultData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/TrendListResultData;->trends:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isDataEmpty()Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/TrendListResultData;->trends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "FeedResultData"

    if-eqz v0, :cond_11

    const-string v0, "trends list is empty"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trends size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/TrendListResultData;->trends:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/network/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "egid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/b/e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4f

    :try_start_1b
    invoke-static {v0}, Lcom/kwad/sdk/core/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "trends"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4f

    const/4 v0, 0x0

    :goto_31
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4f

    new-instance v1, Lcom/kwad/sdk/core/response/model/TrendInfo;

    invoke-direct {v1}, Lcom/kwad/sdk/core/response/model/TrendInfo;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/response/model/TrendInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/TrendListResultData;->trends:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_48} :catch_4b

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :catch_4b
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_4f
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/TrendListResultData;->trends:Ljava/util/List;

    const-string v2, "trends"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method
