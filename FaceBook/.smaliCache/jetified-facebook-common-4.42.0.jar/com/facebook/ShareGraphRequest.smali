.class public Lcom/facebook/ShareGraphRequest;
.super Ljava/lang/Object;
.source "ShareGraphRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/GraphRequest;
    .registers 11
    .param p0, "openGraphObject"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .line 57
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 59
    const-string v1, "og:type"

    invoke-virtual {p0, v1}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_e
    if-eqz v0, :cond_67

    .line 66
    :try_start_10
    new-instance v1, Lcom/facebook/ShareGraphRequest$1;

    invoke-direct {v1}, Lcom/facebook/ShareGraphRequest$1;-><init>()V

    invoke-static {p0, v1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 82
    .local v1, "stagedObject":Lorg/json/JSONObject;
    move-object v2, v0

    .line 83
    .local v2, "ogType":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v4, "object"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%s/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "me"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "objects/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "graphPath":Ljava/lang/String;
    new-instance v5, Lcom/facebook/GraphRequest;

    .line 91
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v6

    sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct {v5, v6, v4, v3, v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_5b} :catch_5c

    .line 90
    return-object v5

    .line 96
    .end local v1    # "stagedObject":Lorg/json/JSONObject;
    .end local v2    # "ogType":Ljava/lang/String;
    .end local v3    # "parameters":Landroid/os/Bundle;
    .end local v4    # "graphPath":Ljava/lang/String;
    :catch_5c
    move-exception v1

    .line 97
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_67
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Open graph object type cannot be null"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
