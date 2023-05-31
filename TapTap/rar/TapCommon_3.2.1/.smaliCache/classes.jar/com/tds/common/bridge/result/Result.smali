.class public Lcom/tds/common/bridge/result/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final RESULT_ERROR:I = -0x1

.field public static final RESULT_SUCCESS:I


# instance fields
.field public callbackId:Ljava/lang/String;

.field public code:I

.field public content:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public onceTime:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/bridge/result/Result;
    .registers 6
    .param p0, "success"    # Z
    .param p1, "resultContent"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/tds/common/bridge/result/Result;

    invoke-direct {v0}, Lcom/tds/common/bridge/result/Result;-><init>()V

    .line 31
    .local v0, "result":Lcom/tds/common/bridge/result/Result;
    iput-object p3, v0, Lcom/tds/common/bridge/result/Result;->callbackId:Ljava/lang/String;

    .line 32
    iput-object p1, v0, Lcom/tds/common/bridge/result/Result;->content:Ljava/lang/String;

    .line 33
    if-eqz p0, :cond_d

    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    const/4 v1, -0x1

    :goto_e
    iput v1, v0, Lcom/tds/common/bridge/result/Result;->code:I

    .line 34
    iput-object p2, v0, Lcom/tds/common/bridge/result/Result;->message:Ljava/lang/String;

    .line 35
    return-object v0
.end method

.method public static newInstance(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tds/common/bridge/result/Result;
    .registers 7
    .param p0, "success"    # Z
    .param p1, "resultContent"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "onceTime"    # Z

    .line 39
    new-instance v0, Lcom/tds/common/bridge/result/Result;

    invoke-direct {v0}, Lcom/tds/common/bridge/result/Result;-><init>()V

    .line 40
    .local v0, "result":Lcom/tds/common/bridge/result/Result;
    iput-object p3, v0, Lcom/tds/common/bridge/result/Result;->callbackId:Ljava/lang/String;

    .line 41
    iput-object p1, v0, Lcom/tds/common/bridge/result/Result;->content:Ljava/lang/String;

    .line 42
    if-eqz p0, :cond_d

    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    const/4 v1, -0x1

    :goto_e
    iput v1, v0, Lcom/tds/common/bridge/result/Result;->code:I

    .line 43
    iput-object p2, v0, Lcom/tds/common/bridge/result/Result;->message:Ljava/lang/String;

    .line 44
    iput-boolean p4, v0, Lcom/tds/common/bridge/result/Result;->onceTime:Z

    .line 45
    return-object v0
.end method


# virtual methods
.method public getCallbackId()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/tds/common/bridge/result/Result;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/tds/common/bridge/result/Result;->code:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/tds/common/bridge/result/Result;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/tds/common/bridge/result/Result;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .registers 2
    .param p1, "callbackId"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/tds/common/bridge/result/Result;->callbackId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCode(I)V
    .registers 2
    .param p1, "code"    # I

    .line 67
    iput p1, p0, Lcom/tds/common/bridge/result/Result;->code:I

    .line 68
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/tds/common/bridge/result/Result;->content:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/tds/common/bridge/result/Result;->message:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .registers 4

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "code"

    iget v2, p0, Lcom/tds/common/bridge/result/Result;->code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    const-string v1, "message"

    iget-object v2, p0, Lcom/tds/common/bridge/result/Result;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "content"

    iget-object v2, p0, Lcom/tds/common/bridge/result/Result;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "callbackId"

    iget-object v2, p0, Lcom/tds/common/bridge/result/Result;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "onceTime"

    iget-boolean v2, p0, Lcom/tds/common/bridge/result/Result;->onceTime:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_29

    .line 58
    goto :goto_2d

    .line 56
    :catch_29
    move-exception v1

    .line 57
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 59
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tds/common/bridge/result/Result;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/bridge/result/Result;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", callbackId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/bridge/result/Result;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/bridge/result/Result;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tds/common/bridge/result/Result;->onceTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
