.class Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;-><init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_138

    :cond_1b
    :goto_1b
    packed-switch v2, :pswitch_data_142

    :cond_1e
    :goto_1e
    return-void

    :sswitch_1f
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v2, v1

    goto :goto_1b

    :sswitch_29
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v2, 0x1

    goto :goto_1b

    :pswitch_33
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_1e

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)J

    move-result-wide v4

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;J)J

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Ljava/util/List;)Ljava/util/List;

    const-string v2, ""

    const-string v0, ""

    move-object v3, v0

    move v6, v1

    move-object v1, v2

    move v2, v6

    :goto_77
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_f6

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_f2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f2
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_77

    :cond_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name List "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mac List "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v0, v1, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_127} :catch_129

    goto/16 :goto_1e

    :catch_129
    move-exception v0

    const-string v1, "WifiScanReceiver error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    :pswitch_131
    :try_start_131
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->D()V
    :try_end_136
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_136} :catch_129

    goto/16 :goto_1e

    :sswitch_data_138
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_29
        0x6ff575fd -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_33
        :pswitch_131
    .end packed-switch
.end method
