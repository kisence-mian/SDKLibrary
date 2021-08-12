.class public Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/NativeExpressAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADListenerAdapter"
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

.field private b:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    return-void
.end method

.method public constructor <init>(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;->b:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 3

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    :pswitch_7
    goto :goto_13

    :pswitch_8
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;->b:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;Lcom/qq/e/comm/adevent/ADEvent;)V

    goto :goto_13

    :pswitch_e
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a(Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;Lcom/qq/e/comm/adevent/ADEvent;)V

    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
