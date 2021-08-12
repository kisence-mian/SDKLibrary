.class public Lcom/anythink/core/api/AdError;
.super Ljava/lang/Object;


# instance fields
.field protected code:Ljava/lang/String;

.field protected desc:Ljava/lang/String;

.field protected itemsErrorInfo:Ljava/lang/String;

.field protected platformCode:Ljava/lang/String;

.field protected platformMSG:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/anythink/core/api/AdError;->code:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/anythink/core/api/AdError;->desc:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/anythink/core/api/AdError;->platformCode:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/anythink/core/api/AdError;->platformMSG:Ljava/lang/String;

    .line 37
    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/core/api/AdError;->itemsErrorInfo:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/anythink/core/api/AdError;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/anythink/core/api/AdError;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFullErrorInfo()Ljava/lang/String;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/anythink/core/api/AdError;->itemsErrorInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code:[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]desc:[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]platformCode:[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->platformCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]platformMSG:[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->platformMSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ncode[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]\ndesc[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]\ndetail[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->itemsErrorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public getPlatformCode()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/anythink/core/api/AdError;->platformCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformMSG()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/anythink/core/api/AdError;->platformMSG:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code:[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]desc:[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]platformCode:[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->platformCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]platformMSG:[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->platformMSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putNetworkErrorMsg(Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 7

    .line 66
    iget-object v0, p4, Lcom/anythink/core/api/AdError;->platformCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/api/AdError;->platformCode:Ljava/lang/String;

    .line 67
    iget-object v0, p4, Lcom/anythink/core/api/AdError;->platformMSG:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/api/AdError;->platformMSG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->itemsErrorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  { ad_source_id[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ];network_firm_id[ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ];network_name=[ "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ];network_error:[ "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 70
    invoke-virtual {p4}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ] }"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/api/AdError;->itemsErrorInfo:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 91
    invoke-virtual {p0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
