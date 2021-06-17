.class Lcom/facebook/share/ShareApi$3;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;

.field final synthetic val$errorResponses:Ljava/util/ArrayList;

.field final synthetic val$requestCount:Lcom/facebook/internal/Mutable;

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/internal/Mutable;Lcom/facebook/FacebookCallback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .line 328
    iput-object p1, p0, Lcom/facebook/share/ShareApi$3;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$3;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 7
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .line 331
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 332
    .local v0, "result":Lorg/json/JSONObject;
    if-eqz v0, :cond_b

    .line 333
    iget-object v1, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_b
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 336
    iget-object v1, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_16
    iget-object v1, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iget-object v2, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 339
    iget-object v1, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iget-object v1, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_67

    .line 340
    iget-object v1, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4c

    .line 341
    iget-object v1, p0, Lcom/facebook/share/ShareApi$3;->val$callback:Lcom/facebook/FacebookCallback;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    .line 344
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphResponse;

    .line 341
    invoke-static {v1, v3, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V

    goto :goto_67

    .line 345
    :cond_4c
    iget-object v1, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    .line 346
    iget-object v1, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "postId":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v2, v1, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V

    .line 353
    .end local v1    # "postId":Ljava/lang/String;
    :cond_67
    :goto_67
    return-void
.end method
