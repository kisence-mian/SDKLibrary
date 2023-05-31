.class Lcom/tencent/smtt/sdk/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/utils/n$a;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/TbsLogReport;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ay;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TbsApkDownloadStat.reportDownloadStat] onHttpResponseCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ay;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    :cond_1d
    return-void
.end method
