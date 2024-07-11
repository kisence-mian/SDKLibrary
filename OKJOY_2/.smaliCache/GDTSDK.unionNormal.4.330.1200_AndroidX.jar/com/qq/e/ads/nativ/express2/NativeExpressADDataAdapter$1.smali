.class Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;-><init>(Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter$1;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 4

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/16 v1, 0xc9

    if-ge v0, v1, :cond_e

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter$1;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->a(Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter$1;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->b(Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)V

    return-void
.end method
