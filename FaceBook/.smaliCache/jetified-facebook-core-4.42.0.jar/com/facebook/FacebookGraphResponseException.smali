.class public Lcom/facebook/FacebookGraphResponseException;
.super Lcom/facebook/FacebookException;
.source "FacebookGraphResponseException.java"


# instance fields
.field private final graphResponse:Lcom/facebook/GraphResponse;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V
    .registers 3
    .param p1, "graphResponse"    # Lcom/facebook/GraphResponse;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    .line 39
    return-void
.end method


# virtual methods
.method public final getGraphResponse()Lcom/facebook/GraphResponse;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/facebook/FacebookGraphResponseException;->graphResponse:Lcom/facebook/GraphResponse;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 52
    .local v0, "requestError":Lcom/facebook/FacebookRequestError;
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v2, "{FacebookGraphResponseException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    .local v1, "errorStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/facebook/FacebookGraphResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_23
    if-eqz v0, :cond_62

    .line 60
    const-string v3, "httpResponseCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 61
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getRequestStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 62
    const-string v4, ", facebookErrorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    const-string v4, ", facebookErrorType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 66
    const-string v4, ", message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 67
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
