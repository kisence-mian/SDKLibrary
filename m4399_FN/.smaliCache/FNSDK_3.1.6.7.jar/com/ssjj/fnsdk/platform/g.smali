.class Lcom/ssjj/fnsdk/platform/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/g;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/g;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/g;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-nez p1, :cond_8

    return-void

    :cond_8
    const-string v0, ""

    packed-switch p2, :pswitch_data_62

    goto :goto_60

    :pswitch_e
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, 0x6

    goto :goto_5d

    :pswitch_15
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, 0x5

    goto :goto_5d

    :pswitch_1c
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, 0x4

    goto :goto_5d

    :pswitch_23
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, 0x3

    goto :goto_5d

    :pswitch_2a
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, -0x7

    goto :goto_5d

    :pswitch_31
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v1, 0x9

    goto :goto_5d

    :pswitch_39
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, -0x6

    goto :goto_5d

    :pswitch_40
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, -0x1

    goto :goto_5d

    :pswitch_47
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v1, 0xa

    goto :goto_5d

    :pswitch_4f
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, 0x7

    goto :goto_5d

    :pswitch_56
    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v1, 0x8

    :goto_5d
    invoke-interface {p1, v1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_56
        :pswitch_4f
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_31
        :pswitch_2a
        :pswitch_23
        :pswitch_1c
        :pswitch_15
        :pswitch_e
    .end packed-switch
.end method
