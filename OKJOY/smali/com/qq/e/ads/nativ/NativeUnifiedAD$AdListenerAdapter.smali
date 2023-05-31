.class Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/NativeUnifiedAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdListenerAdapter"
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 6
    .param p1, "evt"    # Lcom/qq/e/comm/adevent/ADEvent;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_70

    :cond_10
    :goto_10
    return-void

    :pswitch_11
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    aget-object v1, v0, v3

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_10

    aget-object v0, v0, v3

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_45

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    new-instance v3, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-direct {v3, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_45
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/NativeADUnifiedListener;->onADLoaded(Ljava/util/List;)V

    goto :goto_10

    :pswitch_4b
    array-length v1, v0

    if-lez v1, :cond_10

    aget-object v0, v0, v3

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeADUnifiedListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_10

    :cond_6a
    const-string v0, "not bind NativeADUnifiedListener"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_11
        :pswitch_4b
    .end packed-switch
.end method
