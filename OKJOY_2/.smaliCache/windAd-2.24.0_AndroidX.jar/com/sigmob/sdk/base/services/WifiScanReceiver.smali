.class public Lcom/sigmob/sdk/base/services/WifiScanReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/services/WifiScanReceiver;->b:J

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;-><init>()V

    const-string v1, "wifi_list"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;->setCategory(Ljava/lang/String;)V

    const-string v1, "101"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;->setWifi_id_list(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;->setWifi_mac_list(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;->commit()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_28

    goto :goto_43

    :cond_28
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scanResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_44

    goto :goto_45

    :cond_43
    :goto_43
    return-void

    :catchall_44
    move-exception p1

    :goto_45
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string v0, ","

    :try_start_2
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_110

    goto :goto_2c

    :sswitch_19
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    move v2, v4

    goto :goto_2c

    :sswitch_23
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    move v2, v5

    :cond_2c
    :goto_2c
    packed-switch v2, :pswitch_data_11a

    goto/16 :goto_10e

    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/services/WifiScanReceiver;->a(Landroid/content/Context;)V

    goto/16 :goto_10e

    :pswitch_36
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0x3c

    if-lt p2, v1, :cond_10e

    iget-wide v1, p0, Lcom/sigmob/sdk/base/services/WifiScanReceiver;->b:J

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v6, p2

    add-long/2addr v1, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long p2, v1, v6

    if-gez p2, :cond_10e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sigmob/sdk/base/services/WifiScanReceiver;->b:J

    iput-object p1, p0, Lcom/sigmob/sdk/base/services/WifiScanReceiver;->a:Ljava/util/List;
    :try_end_68
    .catchall {:try_start_2 .. :try_end_68} :catchall_108

    const-string p1, ""

    move-object p2, p1

    :goto_6b
    :try_start_6b
    iget-object v1, p0, Lcom/sigmob/sdk/base/services/WifiScanReceiver;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_d8

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/WifiScanReceiver;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/WifiScanReceiver;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-eq v4, v1, :cond_d5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_d5
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name List "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mac List "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/services/WifiScanReceiver;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_6b .. :try_end_107} :catchall_108

    goto :goto_10e

    :catchall_108
    move-exception p1

    const-string p2, "WifiScanReceiver error"

    invoke-static {p2, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10e
    :goto_10e
    return-void

    nop

    :sswitch_data_110
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_23
        0x6ff575fd -> :sswitch_19
    .end sparse-switch

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method
