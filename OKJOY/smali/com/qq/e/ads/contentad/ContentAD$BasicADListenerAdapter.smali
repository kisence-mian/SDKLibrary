.class final Lcom/qq/e/ads/contentad/ContentAD$BasicADListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/AbstractAD$BasicADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/contentad/ContentAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BasicADListenerAdapter"
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/contentad/ContentAD$BasicADListenerAdapter;->a:Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    return-void
.end method


# virtual methods
.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 4
    .param p1, "error"    # Lcom/qq/e/comm/util/AdError;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD$BasicADListenerAdapter;->a:Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;->onNoContentAD(I)V

    return-void
.end method
