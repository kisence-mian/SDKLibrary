.class Lcom/facebook/login/DeviceAuthDialog$4;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->getPollRequest()Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .line 296
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 9
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .line 300
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->access$300(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 301
    return-void

    .line 304
    :cond_d
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 305
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_62

    .line 308
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_92

    .line 329
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_61

    .line 326
    :sswitch_28
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthDialog;->onCancel()V

    .line 327
    goto :goto_61

    .line 312
    :sswitch_2e
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V
    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->access$400(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 313
    goto :goto_61

    .line 315
    :sswitch_34
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;
    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->access$500(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 316
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    .line 317
    # getter for: Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;
    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->access$500(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v1}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 319
    :cond_49
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;
    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->access$600(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 320
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;
    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->access$600(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V

    goto :goto_61

    .line 322
    :cond_5b
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthDialog;->onCancel()V

    .line 324
    nop

    .line 333
    :goto_61
    return-void

    .line 337
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 338
    .local v1, "resultObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    const-string v3, "access_token"

    .line 339
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "expires_in"

    .line 340
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "data_access_expiration_time"

    .line 341
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 338
    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onSuccess(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/login/DeviceAuthDialog;->access$700(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_85} :catch_86

    .line 344
    .end local v1    # "resultObject":Lorg/json/JSONObject;
    goto :goto_91

    .line 342
    :catch_86
    move-exception v1

    .line 343
    .local v1, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v3, Lcom/facebook/FacebookException;

    invoke-direct {v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V

    .line 345
    .end local v1    # "ex":Lorg/json/JSONException;
    :goto_91
    return-void

    :sswitch_data_92
    .sparse-switch
        0x149620 -> :sswitch_34
        0x149634 -> :sswitch_2e
        0x149635 -> :sswitch_28
        0x149636 -> :sswitch_2e
    .end sparse-switch
.end method
