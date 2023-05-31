.class public Lcom/tencent/turingfd/sdk/ams/ad/native;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Mb:I

.field public Nb:I

.field public name:Ljava/lang/String;

.field public pid:I

.field public uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;I)V
    .registers 8

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->pid:I

    .line 4
    iput p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->Mb:I

    .line 5
    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->uid:I

    .line 7
    iput p6, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->Nb:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    new-array v0, v3, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "% 6d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->Mb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "% 6d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "% 6d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
