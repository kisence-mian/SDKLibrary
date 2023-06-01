.class public Lcom/ssjj/fnsdk/core/share/process/CfgData;
.super Ljava/lang/Object;


# instance fields
.field public align:Ljava/lang/String;

.field public color:I

.field public fixType:Ljava/lang/String;

.field public font:Ljava/lang/String;

.field public h:I

.field public rotation:F

.field public size:I

.field public strokeColor:I

.field public strokeWidth:F

.field public style:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    const v0, -0x99999a

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->color:I

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->strokeColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->strokeWidth:F

    const-string v1, "left"

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->style:Ljava/lang/String;

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->rotation:F

    const-string v0, "scale"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->fixType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "x:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", align:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->rotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fixType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->fixType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
