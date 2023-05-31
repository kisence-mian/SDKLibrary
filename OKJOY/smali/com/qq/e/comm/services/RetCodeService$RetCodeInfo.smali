.class public Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/services/RetCodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetCodeInfo"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cgi"    # Ljava/lang/String;
    .param p3, "jsVersion"    # Ljava/lang/String;
    .param p4, "resultcode"    # I
    .param p5, "tmcost"    # I
    .param p6, "reqsize"    # I
    .param p7, "rspsize"    # I
    .param p8, "type"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->c:Ljava/lang/String;

    iput p4, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->d:I

    iput p5, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->e:I

    iput p6, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->f:I

    iput p7, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->g:I

    iput p8, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->h:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RetCodeInfo [host="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commandid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", releaseversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tmcost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rspsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
