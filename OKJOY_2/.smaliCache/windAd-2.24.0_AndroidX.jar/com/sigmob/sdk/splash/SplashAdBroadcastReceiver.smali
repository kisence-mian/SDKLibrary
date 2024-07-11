.class public Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# static fields
.field private static a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/sigmob/sdk/splash/f$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/splash/f$a;J)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(J)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/f$a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.splash.stoptime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.splash.playFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.sigmob.action.splash.skip"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1e
    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/f$a;

    if-nez p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_62

    goto :goto_46

    :sswitch_1f
    const-string v0, "com.sigmob.action.splash.skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p2, 0x2

    goto :goto_46

    :sswitch_29
    const-string v0, "com.sigmob.action.splash.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p2, 0x0

    goto :goto_46

    :sswitch_33
    const-string v0, "com.sigmob.action.splash.playFail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p2, 0x1

    goto :goto_46

    :sswitch_3d
    const-string v0, "com.sigmob.action.splash.stoptime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p2, 0x3

    :cond_46
    :goto_46
    packed-switch p2, :pswitch_data_74

    goto :goto_61

    :pswitch_4a
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/f$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/f$a;->d()V

    goto :goto_61

    :pswitch_50
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/f$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/f$a;->b()V

    goto :goto_61

    :pswitch_56
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/f$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/f$a;->a()V

    goto :goto_61

    :pswitch_5c
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/f$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/f$a;->c()V

    :goto_61
    return-void

    :sswitch_data_62
    .sparse-switch
        -0x7e78cdb0 -> :sswitch_3d
        -0x74c83b0d -> :sswitch_33
        -0x39a663cb -> :sswitch_29
        -0x39a50980 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_4a
    .end packed-switch
.end method
