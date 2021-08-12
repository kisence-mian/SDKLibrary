.class public Lcom/sigmob/sdk/base/services/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/services/j$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/sigmob/sdk/base/services/j$a;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    goto :goto_3a

    :sswitch_8
    const-string v0, "DownloadService"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x4

    goto :goto_3b

    :sswitch_12
    const-string v0, "LocationService"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x1

    goto :goto_3b

    :sswitch_1c
    const-string v0, "AppInstallService"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x2

    goto :goto_3b

    :sswitch_26
    const-string v0, "networkMonitor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x0

    goto :goto_3b

    :sswitch_30
    const-string v0, "WifiScanService"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x3

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 p0, -0x1

    :goto_3b
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_70

    return-object v0

    :pswitch_40
    new-instance p0, Lcom/sigmob/sdk/base/services/d;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/d;-><init>()V

    return-object p0

    :pswitch_46
    new-instance p0, Lcom/sigmob/sdk/base/services/l;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/l;-><init>()V

    return-object p0

    :pswitch_4c
    new-instance p0, Lcom/sigmob/sdk/base/services/b;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/b;-><init>()V

    return-object p0

    :pswitch_52
    new-instance p0, Lcom/sigmob/sdk/base/services/e;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/e;-><init>()V

    return-object p0

    :pswitch_58
    return-object v0

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x39ad5cfd -> :sswitch_30
        -0x1bdb34b4 -> :sswitch_26
        0x15187cfb -> :sswitch_1c
        0x32f35120 -> :sswitch_12
        0x526324ed -> :sswitch_8
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_58
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_40
    .end packed-switch
.end method
