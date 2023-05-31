.class final Lcom/tapsdk/moment/TapMoment$3;
.super Ljava/lang/Object;
.source "TapMoment.java"

# interfaces
.implements Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/TapMoment;->getNoticeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tds/common/reactor/exceptions/FlowException;)V
    .registers 5
    .param p1, "exception"    # Lcom/tds/common/reactor/exceptions/FlowException;

    .line 352
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tds/common/reactor/exceptions/FlowException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e84

    invoke-interface {v0, v2, v1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 353
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "accessTokenStr"    # Ljava/lang/String;

    .line 336
    const/16 v0, 0x4e84

    if-eqz p1, :cond_26

    # getter for: Lcom/tapsdk/moment/TapMoment;->clientId:Ljava/lang/String;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$100()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_26

    .line 342
    :cond_b
    :try_start_b
    new-instance v1, Lcom/tapsdk/moment/AccessToken;

    invoke-direct {v1, p1}, Lcom/tapsdk/moment/AccessToken;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_10} :catch_16

    move-object v0, v1

    .line 346
    .local v0, "accessToken":Lcom/tapsdk/moment/AccessToken;
    nop

    .line 347
    # invokes: Lcom/tapsdk/moment/TapMoment;->sendNoticeRequest(Lcom/tapsdk/moment/AccessToken;)V
    invoke-static {v0}, Lcom/tapsdk/moment/TapMoment;->access$200(Lcom/tapsdk/moment/AccessToken;)V

    .line 348
    return-void

    .line 343
    .end local v0    # "accessToken":Lcom/tapsdk/moment/AccessToken;
    :catch_16
    move-exception v1

    .line 344
    .local v1, "e":Lorg/json/JSONException;
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v2

    const-string v3, "invalid token"

    invoke-interface {v2, v0, v3}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 337
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_26
    :goto_26
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v1

    const-string v2, "invalid token or clientId"

    invoke-interface {v1, v0, v2}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 338
    return-void
.end method
