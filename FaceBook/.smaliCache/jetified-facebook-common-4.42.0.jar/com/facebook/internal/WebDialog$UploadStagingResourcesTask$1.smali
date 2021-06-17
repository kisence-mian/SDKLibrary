.class Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$results:[Ljava/lang/String;

.field final synthetic val$writeIndex:I


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V
    .registers 5
    .param p1, "this$1"    # Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    .line 840
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    iput-object p2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iput p3, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    iput-object p4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 7
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .line 844
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_36

    .line 845
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    const-string v1, "Error staging photo."

    if-eqz v0, :cond_15

    .line 846
    :try_start_8
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_f

    .line 848
    move-object v2, v1

    .line 850
    :cond_f
    new-instance v1, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v1, p1, v2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    .end local p1    # "response":Lcom/facebook/GraphResponse;
    throw v1

    .line 852
    .end local v2    # "message":Ljava/lang/String;
    .restart local p1    # "response":Lcom/facebook/GraphResponse;
    :cond_15
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 853
    .local v2, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_30

    .line 856
    const-string v3, "uri"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 857
    .local v3, "stagedImageUri":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 860
    iget-object v1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iget v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object v3, v1, v4

    .line 863
    .end local v0    # "error":Lcom/facebook/FacebookRequestError;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v3    # "stagedImageUri":Ljava/lang/String;
    goto :goto_41

    .line 858
    .restart local v0    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v3    # "stagedImageUri":Ljava/lang/String;
    :cond_2a
    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .end local p1    # "response":Lcom/facebook/GraphResponse;
    throw v4

    .line 854
    .end local v3    # "stagedImageUri":Ljava/lang/String;
    .restart local p1    # "response":Lcom/facebook/GraphResponse;
    :cond_30
    new-instance v3, Lcom/facebook/FacebookException;

    invoke-direct {v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .end local p1    # "response":Lcom/facebook/GraphResponse;
    throw v3
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_36

    .line 861
    .end local v0    # "error":Lcom/facebook/FacebookRequestError;
    .end local v2    # "data":Lorg/json/JSONObject;
    .restart local p1    # "response":Lcom/facebook/GraphResponse;
    :catch_36
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    # getter for: Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;
    invoke-static {v1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->access$800(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;

    move-result-object v1

    iget v2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object v0, v1, v2

    .line 864
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 865
    return-void
.end method
