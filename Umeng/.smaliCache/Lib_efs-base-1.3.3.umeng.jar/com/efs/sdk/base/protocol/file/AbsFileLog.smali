.class public abstract Lcom/efs/sdk/base/protocol/file/AbsFileLog;
.super Lcom/efs/sdk/base/protocol/AbsLog;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/protocol/AbsLog;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getBodyType()I
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogProtocol()B
    .registers 2

    .line 14
    const/4 v0, 0x2

    return v0
.end method
