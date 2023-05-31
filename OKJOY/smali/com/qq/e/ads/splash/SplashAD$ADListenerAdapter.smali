.class Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/splash/SplashAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADListenerAdapter"
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/splash/SplashAD;


# direct methods
.method private constructor <init>(Lcom/qq/e/ads/splash/SplashAD;)V
    .registers 2

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qq/e/ads/splash/SplashAD;B)V
    .registers 3
    .param p1, "x0"    # Lcom/qq/e/ads/splash/SplashAD;

    .prologue
    invoke-direct {p0, p1}, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/splash/SplashAD;)V

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 6
    .param p1, "evt"    # Lcom/qq/e/comm/adevent/ADEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "SplashADListener == null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_ae

    goto :goto_f

    :pswitch_1c
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/ads/splash/SplashADListener;->onADDismissed()V

    goto :goto_f

    :pswitch_26
    array-length v1, v0

    if-lez v1, :cond_45

    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/qq/e/ads/splash/SplashADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_f

    :cond_45
    const-string v0, "Splash onNoAD event get params error."

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_f

    :pswitch_4b
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/ads/splash/SplashADListener;->onADPresent()V

    goto :goto_f

    :pswitch_55
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/ads/splash/SplashADListener;->onADClicked()V

    goto :goto_f

    :pswitch_5f
    array-length v1, v0

    if-ne v1, v3, :cond_7a

    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/qq/e/ads/splash/SplashADListener;->onADTick(J)V

    goto :goto_f

    :cond_7a
    const-string v0, "Splash onADTick event get param error."

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_f

    :pswitch_80
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/ads/splash/SplashADListener;->onADExposure()V

    goto :goto_f

    :pswitch_8a
    array-length v1, v0

    if-ne v1, v3, :cond_a6

    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_a6

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/qq/e/ads/splash/SplashADListener;->onADLoaded(J)V

    goto/16 :goto_f

    :cond_a6
    const-string v0, "Splash onADLoaded event get param error."

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_26
        :pswitch_4b
        :pswitch_55
        :pswitch_5f
        :pswitch_80
        :pswitch_8a
    .end packed-switch
.end method
