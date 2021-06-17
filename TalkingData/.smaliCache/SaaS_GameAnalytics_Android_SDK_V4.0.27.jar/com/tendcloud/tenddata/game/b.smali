.class final Lcom/tendcloud/tenddata/game/b;
.super Lcom/tendcloud/tenddata/game/a;
.source "td"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/tendcloud/tenddata/game/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCert()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public getDataFolder()Ljava/lang/String;
    .registers 2

    .line 89
    invoke-super {p0}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileLimitType()I
    .registers 2

    .line 93
    invoke-super {p0}, Lcom/tendcloud/tenddata/game/a;->getFileLimitType()I

    move-result v0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, "me.xdrig.com"

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .registers 2

    .line 76
    sget-object v0, Lcom/tendcloud/tenddata/game/aa;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageFormat()Ljava/lang/String;
    .registers 2

    .line 81
    const-string v0, "UNIFIED_SDK_JSON"

    return-object v0
.end method

.method public getRootFolder()Ljava/lang/String;
    .registers 2

    .line 85
    invoke-super {p0}, Lcom/tendcloud/tenddata/game/a;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "https://me.xdrig.com"

    return-object v0
.end method
