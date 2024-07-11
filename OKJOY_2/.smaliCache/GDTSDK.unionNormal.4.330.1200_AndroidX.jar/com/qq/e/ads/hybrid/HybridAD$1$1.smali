.class Lcom/qq/e/ads/hybrid/HybridAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/hybrid/HybridAD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/hybrid/HybridAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/hybrid/HybridAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->b:Lcom/qq/e/ads/hybrid/HybridAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->b:Lcom/qq/e/ads/hybrid/HybridAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    iget-object v1, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v2, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->b:Lcom/qq/e/ads/hybrid/HybridAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/hybrid/HybridAD$1;->a:Lcom/qq/e/ads/hybrid/HybridADSetting;

    iget-object v3, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->b:Lcom/qq/e/ads/hybrid/HybridAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/hybrid/HybridAD$1;->b:Lcom/qq/e/ads/hybrid/HybridADListener;

    invoke-interface {v1, v2, v3}, Lcom/qq/e/comm/pi/POFactory;->getHybridAD(Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)Lcom/qq/e/comm/pi/HADI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;Lcom/qq/e/comm/pi/HADI;)Lcom/qq/e/comm/pi/HADI;

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->b:Lcom/qq/e/ads/hybrid/HybridAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;Z)Z

    goto :goto_30

    :cond_22
    const-string v0, "poFactory is null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->b:Lcom/qq/e/ads/hybrid/HybridAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    const/16 v1, 0x7d1

    invoke-static {v0, v1}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;I)V

    :goto_30
    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1$1;->b:Lcom/qq/e/ads/hybrid/HybridAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
