.class Lcom/qq/e/ads/hybrid/HybridAD$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/hybrid/HybridAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/qq/e/ads/hybrid/HybridAD;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/hybrid/HybridAD;I)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/hybrid/HybridAD$3;->b:Lcom/qq/e/ads/hybrid/HybridAD;

    iput p2, p0, Lcom/qq/e/ads/hybrid/HybridAD$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$3;->b:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0}, Lcom/qq/e/ads/hybrid/HybridAD;->d(Lcom/qq/e/ads/hybrid/HybridAD;)Lcom/qq/e/ads/hybrid/HybridADListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$3;->b:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0}, Lcom/qq/e/ads/hybrid/HybridAD;->d(Lcom/qq/e/ads/hybrid/HybridAD;)Lcom/qq/e/ads/hybrid/HybridADListener;

    move-result-object v0

    iget v1, p0, Lcom/qq/e/ads/hybrid/HybridAD$3;->a:I

    invoke-static {v1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qq/e/ads/hybrid/HybridADListener;->onError(Lcom/qq/e/comm/util/AdError;)V

    :cond_17
    return-void
.end method
