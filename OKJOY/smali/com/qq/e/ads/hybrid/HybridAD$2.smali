.class Lcom/qq/e/ads/hybrid/HybridAD$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/hybrid/HybridAD;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/qq/e/ads/hybrid/HybridAD;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/hybrid/HybridAD;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qq/e/ads/hybrid/HybridAD;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/hybrid/HybridAD$2;->b:Lcom/qq/e/ads/hybrid/HybridAD;

    iput-object p2, p0, Lcom/qq/e/ads/hybrid/HybridAD$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/16 v4, 0x7d1

    :try_start_2
    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$2;->b:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v2, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$2;->b:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0}, Lcom/qq/e/ads/hybrid/HybridAD;->b(Lcom/qq/e/ads/hybrid/HybridAD;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$2;->b:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0}, Lcom/qq/e/ads/hybrid/HybridAD;->c(Lcom/qq/e/ads/hybrid/HybridAD;)Lcom/qq/e/comm/pi/HADI;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/hybrid/HybridAD$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/HADI;->loadUrl(Ljava/lang/String;)V

    :goto_22
    return-void

    :cond_23
    const-string v0, "delegate init failed "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$2;->b:Lcom/qq/e/ads/hybrid/HybridAD;

    const/16 v1, 0x7d1

    invoke-static {v0, v1}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;I)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2f} :catch_30

    goto :goto_22

    :catch_30
    move-exception v0

    const-string v0, "buffered loadUrl action timeout"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$2;->b:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0, v4}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;I)V

    goto :goto_22
.end method
