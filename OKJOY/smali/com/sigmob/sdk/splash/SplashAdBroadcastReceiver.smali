.class public Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# static fields
.field private static a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/sigmob/sdk/splash/g;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/splash/g;J)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(J)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/g;

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    if-nez v0, :cond_20

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.splash.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.splash.playFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.splash.skip"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_20
    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/g;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_52

    :cond_1d
    :goto_1d
    packed-switch v0, :pswitch_data_60

    goto :goto_a

    :pswitch_21
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/g;

    invoke-interface {v0}, Lcom/sigmob/sdk/splash/g;->c()V

    goto :goto_a

    :sswitch_27
    const-string v2, "com.sigmob.action.splash.play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    goto :goto_1d

    :sswitch_31
    const-string v2, "com.sigmob.action.splash.playFail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1d

    :sswitch_3b
    const-string v2, "com.sigmob.action.splash.skip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x2

    goto :goto_1d

    :pswitch_45
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/g;

    invoke-interface {v0}, Lcom/sigmob/sdk/splash/g;->a()V

    goto :goto_a

    :pswitch_4b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/g;

    invoke-interface {v0}, Lcom/sigmob/sdk/splash/g;->b()V

    goto :goto_a

    nop

    :sswitch_data_52
    .sparse-switch
        -0x74c83b0d -> :sswitch_31
        -0x39a663cb -> :sswitch_27
        -0x39a50980 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_21
        :pswitch_45
        :pswitch_4b
    .end packed-switch
.end method
