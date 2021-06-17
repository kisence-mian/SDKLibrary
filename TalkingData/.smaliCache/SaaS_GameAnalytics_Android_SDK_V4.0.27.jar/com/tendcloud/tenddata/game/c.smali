.class final Lcom/tendcloud/tenddata/game/c;
.super Lcom/tendcloud/tenddata/game/a;
.source "td"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/tendcloud/tenddata/game/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCert()Ljava/lang/String;
    .registers 2

    .line 99
    const-string v0, ""

    return-object v0
.end method

.method public getDataFolder()Ljava/lang/String;
    .registers 2

    .line 131
    invoke-super {p0}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileLimitType()I
    .registers 2

    .line 135
    invoke-super {p0}, Lcom/tendcloud/tenddata/game/a;->getFileLimitType()I

    move-result v0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 104
    const-string v0, "gv1.xdrig.com"

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .registers 2

    .line 118
    sget-object v0, Lcom/tendcloud/tenddata/game/aa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageFormat()Ljava/lang/String;
    .registers 2

    .line 123
    const-string v0, "UNIFIED_SDK_JSON"

    return-object v0
.end method

.method public getRootFolder()Ljava/lang/String;
    .registers 2

    .line 127
    invoke-super {p0}, Lcom/tendcloud/tenddata/game/a;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/c;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/u/g/v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0
.end method
