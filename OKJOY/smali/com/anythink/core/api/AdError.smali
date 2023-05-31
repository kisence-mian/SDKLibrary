.class public Lcom/anythink/core/api/AdError;
.super Ljava/lang/Object;


# instance fields
.field protected code:Ljava/lang/String;

.field protected desc:Ljava/lang/String;

.field protected platformCode:Ljava/lang/String;

.field protected platformMSG:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/anythink/core/api/AdError;->code:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/anythink/core/api/AdError;->desc:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/anythink/core/api/AdError;->platformCode:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/anythink/core/api/AdError;->platformMSG:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/core/api/AdError;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/core/api/AdError;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anythink/core/api/AdError;->platformCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformMSG()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anythink/core/api/AdError;->platformMSG:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ],desc[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ],platformCode[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/api/AdError;->platformCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ],platformMSG[ "

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
