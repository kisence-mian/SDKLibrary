.class public Lcom/tds/common/entities/TapDBConfig;
.super Ljava/lang/Object;
.source "TapDBConfig.java"


# instance fields
.field private channel:Ljava/lang/String;

.field private enable:Z

.field private gameVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/entities/TapDBConfig;->channel:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tds/common/entities/TapDBConfig;->gameVersion:Ljava/lang/String;

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/entities/TapDBConfig;->enable:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/tds/common/entities/TapDBConfig;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/tds/common/entities/TapDBConfig;->gameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/tds/common/entities/TapDBConfig;->enable:Z

    return v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 2
    .param p1, "channel"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/tds/common/entities/TapDBConfig;->channel:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/tds/common/entities/TapDBConfig;->enable:Z

    .line 25
    return-void
.end method

.method public setGameVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "gameVersion"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/tds/common/entities/TapDBConfig;->gameVersion:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapDBConfig{channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/entities/TapDBConfig;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", gameVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/entities/TapDBConfig;->gameVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tds/common/entities/TapDBConfig;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
