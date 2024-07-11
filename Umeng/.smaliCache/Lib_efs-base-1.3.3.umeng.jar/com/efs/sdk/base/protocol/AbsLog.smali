.class public abstract Lcom/efs/sdk/base/protocol/AbsLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/protocol/ILogProtocol;


# instance fields
.field private cp:Ljava/lang/String;

.field private de:B

.field private logType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "none"

    iput-object v0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->cp:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->de:B

    .line 36
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/AbsLog;->logType:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getLogType()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->logType:Ljava/lang/String;

    return-object v0
.end method

.method public isCp()Z
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->cp:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isDe()Z
    .registers 3

    .line 61
    iget-byte v0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->de:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public setCp(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/AbsLog;->cp:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setDe(B)V
    .registers 2

    .line 53
    iput-byte p1, p0, Lcom/efs/sdk/base/protocol/AbsLog;->de:B

    .line 54
    return-void
.end method
