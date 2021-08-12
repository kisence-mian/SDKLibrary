.class Lcom/qq/e/ads/splash/SplashAD$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/splash/SplashADListener;

.field private synthetic b:I

.field private synthetic c:Lcom/qq/e/ads/splash/SplashAD;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 4

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$2;->c:Lcom/qq/e/ads/splash/SplashAD;

    iput-object p2, p0, Lcom/qq/e/ads/splash/SplashAD$2;->a:Lcom/qq/e/ads/splash/SplashADListener;

    iput p3, p0, Lcom/qq/e/ads/splash/SplashAD$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$2;->a:Lcom/qq/e/ads/splash/SplashADListener;

    iget v1, p0, Lcom/qq/e/ads/splash/SplashAD$2;->b:I

    invoke-static {v1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qq/e/ads/splash/SplashADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    return-void
.end method
