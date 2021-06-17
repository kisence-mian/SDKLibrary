.class Lcom/facebook/share/ShareApi$10;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .line 614
    iput-object p1, p0, Lcom/facebook/share/ShareApi$10;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 8
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .line 617
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 618
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_19

    .line 619
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 621
    const-string v1, "Error staging Open Graph object."

    .line 623
    :cond_e
    iget-object v2, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v3, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v3, p1, v1}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 625
    return-void

    .line 627
    .end local v1    # "message":Ljava/lang/String;
    :cond_19
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 628
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "Error staging Open Graph object."

    if-nez v1, :cond_2c

    .line 629
    iget-object v3, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v4, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v4, p1, v2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 632
    return-void

    .line 634
    :cond_2c
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "stagedObjectId":Ljava/lang/String;
    if-nez v3, :cond_3f

    .line 636
    iget-object v4, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v5, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v5, p1, v2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 639
    return-void

    .line 641
    :cond_3f
    iget-object v2, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v2, v3}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    .line 642
    return-void
.end method
