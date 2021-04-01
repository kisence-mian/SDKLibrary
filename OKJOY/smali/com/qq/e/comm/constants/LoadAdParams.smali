.class public Lcom/qq/e/comm/constants/LoadAdParams;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/qq/e/comm/constants/LoginType;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockEffectValue()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/constants/LoadAdParams;->f:I

    return v0
.end method

.method public getFlowSourceId()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/constants/LoadAdParams;->a:I

    return v0
.end method

.method public getLoginAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/constants/LoadAdParams;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginOpenid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/constants/LoadAdParams;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()Lcom/qq/e/comm/constants/LoginType;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/constants/LoadAdParams;->b:Lcom/qq/e/comm/constants/LoginType;

    return-object v0
.end method

.method public getPassThroughInfo()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/constants/LoadAdParams;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getPassThroughInfoJsonString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->h:Ljava/util/Map;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_18

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/qq/e/comm/constants/LoadAdParams;->h:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v0

    :cond_18
    :goto_18
    return-object v0

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public getUin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/constants/LoadAdParams;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getWXAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/constants/LoadAdParams;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isHotStart()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/comm/constants/LoadAdParams;->i:Z

    return v0
.end method

.method public setBlockEffectValue(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->f:I

    return-void
.end method

.method public setFlowSourceId(I)V
    .registers 2
    .param p1, "flowSourceId"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->a:I

    return-void
.end method

.method public setHotStart(Z)V
    .registers 2
    .param p1, "isHot"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->i:Z

    return-void
.end method

.method public setLoginAppId(Ljava/lang/String;)V
    .registers 2
    .param p1, "loginAppId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->c:Ljava/lang/String;

    return-void
.end method

.method public setLoginOpenid(Ljava/lang/String;)V
    .registers 2
    .param p1, "loginOpenid"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->d:Ljava/lang/String;

    return-void
.end method

.method public setLoginType(Lcom/qq/e/comm/constants/LoginType;)V
    .registers 2
    .param p1, "loginType"    # Lcom/qq/e/comm/constants/LoginType;

    .prologue
    iput-object p1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->b:Lcom/qq/e/comm/constants/LoginType;

    return-void
.end method

.method public setPassThroughInfo(Ljava/util/Map;)V
    .registers 2
    .param p1, "passThroughInfo"    # Ljava/util/Map;

    .prologue
    iput-object p1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->h:Ljava/util/Map;

    return-void
.end method

.method public setUin(Ljava/lang/String;)V
    .registers 2
    .param p1, "uin"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->e:Ljava/lang/String;

    return-void
.end method

.method public setWXAppId(Ljava/lang/String;)V
    .registers 2
    .param p1, "WXAppId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->g:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoadAdParams{flowSourceId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->b:Lcom/qq/e/comm/constants/LoginType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginOpenid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", passThroughInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/constants/LoadAdParams;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
