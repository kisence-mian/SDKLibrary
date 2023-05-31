.class Lcom/sigmob/sdk/base/common/utils/ClientMetadata$DownloadCompleteReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$DownloadCompleteReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$DownloadCompleteReceiver;-><init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string v0, "extra_download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".log"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    instance-of v5, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v5, :cond_5e

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :goto_35
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/e;->b(Ljava/lang/String;)Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_60

    :cond_48
    :goto_48
    packed-switch v1, :pswitch_data_66

    :cond_4b
    :goto_4b
    return-void

    :pswitch_4c
    const-string v5, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    const/4 v1, 0x0

    goto :goto_48

    :pswitch_56
    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$DownloadCompleteReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v1, p1, v2, v3, v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Landroid/content/Context;JLcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_4b

    :cond_5e
    move-object v0, v1

    goto :goto_35

    :pswitch_data_60
    .packed-switch 0x4a702ceb
        :pswitch_4c
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_56
    .end packed-switch
.end method
