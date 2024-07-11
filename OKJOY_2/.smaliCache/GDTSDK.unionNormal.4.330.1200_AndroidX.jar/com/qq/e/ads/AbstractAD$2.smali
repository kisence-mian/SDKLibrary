.class Lcom/qq/e/ads/AbstractAD$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/AbstractAD$BasicADListener;

.field private synthetic b:I

.field private synthetic c:Lcom/qq/e/ads/AbstractAD;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/AbstractAD;Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V
    .registers 4

    iput-object p1, p0, Lcom/qq/e/ads/AbstractAD$2;->c:Lcom/qq/e/ads/AbstractAD;

    iput-object p2, p0, Lcom/qq/e/ads/AbstractAD$2;->a:Lcom/qq/e/ads/AbstractAD$BasicADListener;

    iput p3, p0, Lcom/qq/e/ads/AbstractAD$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$2;->a:Lcom/qq/e/ads/AbstractAD$BasicADListener;

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/qq/e/ads/AbstractAD$2;->b:I

    invoke-static {v1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qq/e/ads/AbstractAD$BasicADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    :cond_d
    return-void
.end method
