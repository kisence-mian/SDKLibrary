.class Lcom/sigmob/sdk/splash/SplashAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_14

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$1;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$1;->b:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;)J

    move-result-wide v0

    const-string v2, "com.sigmob.action.splash.skip"

    invoke-static {p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    :cond_14
    return p2
.end method
