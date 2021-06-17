.class abstract Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;
.super Ljava/lang/Object;
.source "VideoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "UploadWorkItemBase"
.end annotation


# instance fields
.field protected completedRetries:I

.field protected uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;


# direct methods
.method protected constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 3
    .param p1, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p2, "completedRetries"    # I

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    .line 546
    iput p2, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    .line 547
    return-void
.end method

.method private attemptRetry(I)Z
    .registers 7
    .param p1, "errorCode"    # I

    .line 596
    iget v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2e

    .line 597
    invoke-virtual {p0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->getTransientErrorCodes()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 598
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iget v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1388

    .line 603
    .local v0, "delay":I
    # invokes: Lcom/facebook/share/internal/VideoUploader;->getHandler()Landroid/os/Handler;
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$800()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;

    invoke-direct {v2, p0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 610
    const/4 v1, 0x1

    return v1

    .line 612
    .end local v0    # "delay":I
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected endUploadWithFailure(Lcom/facebook/FacebookException;)V
    .registers 3
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->issueResponseOnMainThread(Lcom/facebook/FacebookException;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method protected abstract enqueueRetry(I)V
.end method

.method protected executeGraphRequestSynchronously(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "parameters"    # Landroid/os/Bundle;

    .line 566
    new-instance v6, Lcom/facebook/GraphRequest;

    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->accessToken:Lcom/facebook/AccessToken;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v3, v3, Lcom/facebook/share/internal/VideoUploader$UploadContext;->graphNode:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 568
    const-string v3, "%s/videos"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 572
    .local v0, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v1

    .line 574
    .local v1, "response":Lcom/facebook/GraphResponse;
    const-string v2, "Unexpected error in server response"

    if-eqz v1, :cond_60

    .line 575
    invoke-virtual {v1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    .line 576
    .local v3, "error":Lcom/facebook/FacebookRequestError;
    invoke-virtual {v1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 577
    .local v4, "responseJSON":Lorg/json/JSONObject;
    if-eqz v3, :cond_47

    .line 578
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->attemptRetry(I)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 579
    new-instance v2, Lcom/facebook/FacebookGraphResponseException;

    const-string v5, "Video upload failed"

    invoke-direct {v2, v1, v5}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleError(Lcom/facebook/FacebookException;)V

    goto :goto_5f

    .line 581
    :cond_47
    if-eqz v4, :cond_57

    .line 583
    :try_start_49
    invoke-virtual {p0, v4}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleSuccess(Lorg/json/JSONObject;)V
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 586
    :goto_4c
    goto :goto_5f

    .line 584
    :catch_4d
    move-exception v5

    .line 585
    .local v5, "e":Lorg/json/JSONException;
    new-instance v6, Lcom/facebook/FacebookException;

    invoke-direct {v6, v2, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    .end local v5    # "e":Lorg/json/JSONException;
    goto :goto_4c

    .line 588
    :cond_57
    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleError(Lcom/facebook/FacebookException;)V

    .line 590
    .end local v3    # "error":Lcom/facebook/FacebookRequestError;
    .end local v4    # "responseJSON":Lorg/json/JSONObject;
    :cond_5f
    :goto_5f
    goto :goto_68

    .line 591
    :cond_60
    new-instance v3, Lcom/facebook/FacebookException;

    invoke-direct {v3, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleError(Lcom/facebook/FacebookException;)V

    .line 593
    :goto_68
    return-void
.end method

.method protected abstract getParameters()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getTransientErrorCodes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract handleError(Lcom/facebook/FacebookException;)V
.end method

.method protected abstract handleSuccess(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected issueResponseOnMainThread(Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Lcom/facebook/FacebookException;
    .param p2, "videoId"    # Ljava/lang/String;

    .line 623
    # invokes: Lcom/facebook/share/internal/VideoUploader;->getHandler()Landroid/os/Handler;
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$800()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;Lcom/facebook/FacebookException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 629
    return-void
.end method

.method public run()V
    .registers 4

    .line 551
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-boolean v0, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z

    if-nez v0, :cond_1f

    .line 553
    :try_start_6
    invoke-virtual {p0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->executeGraphRequestSynchronously(Landroid/os/Bundle;)V
    :try_end_d
    .catch Lcom/facebook/FacebookException; {:try_start_6 .. :try_end_d} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_1e

    .line 556
    :catch_e
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Video upload failed"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1e

    .line 554
    :catch_1a
    move-exception v0

    .line 555
    .local v0, "fe":Lcom/facebook/FacebookException;
    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    .line 558
    .end local v0    # "fe":Lcom/facebook/FacebookException;
    :goto_1e
    goto :goto_23

    .line 561
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    .line 563
    :goto_23
    return-void
.end method
