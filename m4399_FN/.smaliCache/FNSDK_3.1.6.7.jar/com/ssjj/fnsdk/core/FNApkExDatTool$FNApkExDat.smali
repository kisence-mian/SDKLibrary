.class public Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/FNApkExDatTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FNApkExDat"
.end annotation


# static fields
.field public static final DATA_FORMAT_JSON:B = 0x1t

.field public static final DATA_FORMAT_STRING:B = 0x0t

.field public static final DATA_FORMAT_XML:B = 0x2t

.field public static final ENCODE_TYPE_CUSTOMER:B = 0x2t

.field public static final ENCODE_TYPE_FNSDK:B = 0x1t

.field public static final ENCODE_TYPE_NONE:B


# instance fields
.field public data:Ljava/lang/String;

.field public dataFormat:B

.field public dataLen:I

.field public encodeType:B

.field public noffsetOfComment:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->encodeType:B

    iput-byte v0, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataFormat:B

    iput v0, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataLen:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->data:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->noffsetOfComment:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "encodeType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->encodeType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndataFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataFormat:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndataLen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffsetOfComment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->noffsetOfComment:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
