.class Lcom/sigmob/windad/Splash/WindSplashAD$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/WindAdError;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/windad/Splash/WindSplashAD;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$12;->c:Lcom/sigmob/windad/Splash/WindSplashAD;

    iput-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$12;->a:Lcom/sigmob/windad/WindAdError;

    iput-object p3, p0, Lcom/sigmob/windad/Splash/WindSplashAD$12;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$12;->c:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->g(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$12;->c:Lcom/sigmob/windad/Splash/WindSplashAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Z)Z

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$12;->c:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->g(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$12;->a:Lcom/sigmob/windad/WindAdError;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$12;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdFailToPresent(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method