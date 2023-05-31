.class public Lcom/qq/gdt/action/h/v;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService;->getTuringDID(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTuringDID err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    const-string v1, "taid"

    invoke-interface {v0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getTAID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "m10"

    invoke-interface {v0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getAIDTicket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_24

    :catch_38
    move-exception v0

    const-string v1, "appendTuringDID err"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method
