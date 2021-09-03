.class public Lcom/tds/common/log/entities/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# instance fields
.field public final customTag:Ljava/lang/String;

.field public final logConfig:Lcom/tds/common/log/entities/LogConfig;

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tds/common/log/entities/LogConfig;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "logConfig"    # Lcom/tds/common/log/entities/LogConfig;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "customTag"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/tds/common/log/entities/LogMessage;->logConfig:Lcom/tds/common/log/entities/LogConfig;

    .line 10
    iput-object p2, p0, Lcom/tds/common/log/entities/LogMessage;->message:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/tds/common/log/entities/LogMessage;->customTag:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogMessage{logConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/log/entities/LogMessage;->logConfig:Lcom/tds/common/log/entities/LogConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/log/entities/LogMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", customTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/log/entities/LogMessage;->customTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
