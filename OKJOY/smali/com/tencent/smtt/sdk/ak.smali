.class final Lcom/tencent/smtt/sdk/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/utils/n$a;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/TbsDownloadConfig;Z)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ak;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    iput-boolean p2, p0, Lcom/tencent/smtt/sdk/ak;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 8

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ak;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "last_check"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ak;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TbsDownloader.sendRequest] httpResponseCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ak;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v1, "last_request_success"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ak;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v1, "request_fail"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ak;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v1, "count_request_fail_in_24hours"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ak;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_6a
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_79

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ak;->b:Z

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ak;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    const/16 v1, -0x6b

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_79
    :goto_79
    return-void

    :cond_7a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ak;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    const/16 v1, -0xcf

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_79
.end method
