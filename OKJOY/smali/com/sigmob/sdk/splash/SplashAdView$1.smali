.class Lcom/sigmob/sdk/splash/SplashAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/sigmob/sdk/splash/SplashAdView;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/SplashAdView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$1;->b:Lcom/sigmob/sdk/splash/SplashAdView;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_14

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$1;->b:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;)J

    move-result-wide v2

    const-string v1, "com.sigmob.action.splash.skip"

    invoke-static {v0, v2, v3, v1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    :cond_14
    return v4
.end method
