.class public Lcom/sigmob/sdk/base/d/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sigmob/sdk/base/d/c;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_28

    :cond_9
    :goto_9
    packed-switch v1, :pswitch_data_32

    :goto_c
    :pswitch_c
    return-object v0

    :sswitch_d
    const-string v2, "networkMonitor"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :sswitch_17
    const-string v2, "LocationService"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :pswitch_21
    new-instance v0, Lcom/sigmob/sdk/base/d/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/d/a;-><init>()V

    goto :goto_c

    nop

    :sswitch_data_28
    .sparse-switch
        -0x1bdb34b4 -> :sswitch_d
        0x32f35120 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_c
        :pswitch_21
    .end packed-switch
.end method
