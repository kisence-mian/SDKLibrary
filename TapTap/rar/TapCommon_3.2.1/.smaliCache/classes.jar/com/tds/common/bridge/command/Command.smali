.class public Lcom/tds/common/bridge/command/Command;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public args:Ljava/lang/String;

.field public callback:Z

.field public callbackId:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field public onceTime:Z

.field public service:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "service"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/bridge/command/Command;->service:Ljava/lang/String;

    .line 83
    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/bridge/command/Command;->method:Ljava/lang/String;

    .line 84
    const-string v1, "callback"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tds/common/bridge/command/Command;->callback:Z

    .line 85
    const-string v1, "callbackId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/bridge/command/Command;->callbackId:Ljava/lang/String;

    .line 86
    const-string v1, "args"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/bridge/command/Command;->args:Ljava/lang/String;

    .line 87
    const-string v1, "onceTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tds/common/bridge/command/Command;->onceTime:Z
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_38} :catch_39

    .line 90
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3d

    .line 88
    :catch_39
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3d
    return-void
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/tds/common/bridge/command/Command;->args:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackId()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/tds/common/bridge/command/Command;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/tds/common/bridge/command/Command;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/tds/common/bridge/command/Command;->service:Ljava/lang/String;

    return-object v0
.end method

.method public isCallback()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/tds/common/bridge/command/Command;->callback:Z

    return v0
.end method

.method public setArgs(Ljava/lang/String;)V
    .registers 2
    .param p1, "args"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/tds/common/bridge/command/Command;->args:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCallback(Z)V
    .registers 2
    .param p1, "callback"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/tds/common/bridge/command/Command;->callback:Z

    .line 69
    return-void
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .registers 2
    .param p1, "callbackId"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/tds/common/bridge/command/Command;->callbackId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "method"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/tds/common/bridge/command/Command;->method:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setService(Ljava/lang/String;)V
    .registers 2
    .param p1, "service"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/tds/common/bridge/command/Command;->service:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .registers 4

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "service"

    iget-object v2, p0, Lcom/tds/common/bridge/command/Command;->service:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v1, "method"

    iget-object v2, p0, Lcom/tds/common/bridge/command/Command;->method:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "args"

    iget-object v2, p0, Lcom/tds/common/bridge/command/Command;->args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v1, "callback"

    iget-boolean v2, p0, Lcom/tds/common/bridge/command/Command;->callback:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 100
    const-string v1, "callbackId"

    iget-object v2, p0, Lcom/tds/common/bridge/command/Command;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v1, "onceTime"

    iget-boolean v2, p0, Lcom/tds/common/bridge/command/Command;->onceTime:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2f} :catch_30

    .line 104
    goto :goto_34

    .line 102
    :catch_30
    move-exception v1

    .line 103
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 105
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_34
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
