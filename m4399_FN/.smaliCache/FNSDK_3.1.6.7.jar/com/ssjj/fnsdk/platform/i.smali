.class Lcom/ssjj/fnsdk/platform/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/i;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/i;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/i;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-nez p1, :cond_8

    return-void

    :cond_8
    packed-switch p2, :pswitch_data_32

    :pswitch_b
    goto :goto_31

    :pswitch_c
    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotNewVersion()V

    goto :goto_31

    :pswitch_10
    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotSDCard()V

    goto :goto_31

    :pswitch_14
    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onException(Ljava/lang/String;)V

    goto :goto_31

    :pswitch_1a
    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNetWorkError()V

    goto :goto_31

    :pswitch_1e
    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCheckVersionFailure()V

    goto :goto_31

    :pswitch_22
    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNormalUpdateLoading()V

    goto :goto_31

    :pswitch_26
    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onForceUpdateLoading()V

    goto :goto_31

    :pswitch_2a
    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelNormalUpdate()V

    goto :goto_31

    :pswitch_2e
    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelForceUpdate()V

    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_14
        :pswitch_10
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
