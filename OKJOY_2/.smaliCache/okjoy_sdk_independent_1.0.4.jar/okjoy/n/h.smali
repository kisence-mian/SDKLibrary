.class public Lokjoy/n/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lokjoy/u/a;

.field public final synthetic b:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lokjoy/n/k;


# direct methods
.method public constructor <init>(Lokjoy/n/k;Lokjoy/u/a;Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lokjoy/n/h;->d:Lokjoy/n/k;

    iput-object p2, p0, Lokjoy/n/h;->a:Lokjoy/u/a;

    iput-object p3, p0, Lokjoy/n/h;->b:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    iput-object p4, p0, Lokjoy/n/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lokjoy/n/h;->d:Lokjoy/n/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lokjoy/n/k;->a(Lokjoy/n/k;Z)Z

    iget-object v0, p0, Lokjoy/n/h;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokjoy/n/h;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_13
    const-string v0, "TopOn SDK \u63d2\u5c4f\u5e7f\u544a \u64ad\u653e\u65f6\u52a0\u8f7d\u5e7f\u544a\u8d85\u65f6"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/h;->b:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_32

    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/h;->d:Lokjoy/n/k;

    iget-object v3, p0, Lokjoy/n/h;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6"

    invoke-direct {v0, v1, v2, v3}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lokjoy/n/h;->b:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-interface {v1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_32
    return-void
.end method
