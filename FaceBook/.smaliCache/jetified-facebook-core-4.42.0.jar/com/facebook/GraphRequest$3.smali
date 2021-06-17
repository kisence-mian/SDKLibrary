.class final Lcom/facebook/GraphRequest$3;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->newPlacesSearchRequest(Lcom/facebook/AccessToken;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/facebook/GraphRequest$3;->val$callback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .line 435
    iget-object v0, p0, Lcom/facebook/GraphRequest$3;->val$callback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    if-eqz v0, :cond_17

    .line 436
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 437
    .local v0, "result":Lorg/json/JSONObject;
    if-eqz v0, :cond_11

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 438
    .local v1, "data":Lorg/json/JSONArray;
    :goto_12
    iget-object v2, p0, Lcom/facebook/GraphRequest$3;->val$callback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    invoke-interface {v2, v1, p1}, Lcom/facebook/GraphRequest$GraphJSONArrayCallback;->onCompleted(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V

    .line 440
    .end local v0    # "result":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONArray;
    :cond_17
    return-void
.end method
