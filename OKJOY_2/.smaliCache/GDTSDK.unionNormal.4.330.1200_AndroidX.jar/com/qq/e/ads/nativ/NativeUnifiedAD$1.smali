.class Lcom/qq/e/ads/nativ/NativeUnifiedAD$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/AbstractAD$BasicADListener;

.field private synthetic b:I

.field private synthetic c:Lcom/qq/e/ads/nativ/NativeUnifiedAD;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedAD;Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V
    .registers 4

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$1;->c:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iput-object p2, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$1;->a:Lcom/qq/e/ads/AbstractAD$BasicADListener;

    iput p3, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$1;->c:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$1;->a:Lcom/qq/e/ads/AbstractAD$BasicADListener;

    iget v2, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(Lcom/qq/e/ads/nativ/NativeUnifiedAD;Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    return-void
.end method
