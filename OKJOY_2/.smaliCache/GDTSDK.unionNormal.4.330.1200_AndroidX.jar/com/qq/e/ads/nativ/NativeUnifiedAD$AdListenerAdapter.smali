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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_72

    goto :goto_6a

    :pswitch_11
    array-length v1, v0

    if-lez v1, :cond_6a

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeADUnifiedListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_6a

    :pswitch_30
    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6a

    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_6a

    aget-object v0, v0, v2

    check-cast v0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_64

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    new-instance v2, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-direct {v2, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_64
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeADUnifiedListener;->onADLoaded(Ljava/util/List;)V

    goto :goto_70

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    const-string p1, "not bind NativeADUnifiedListener"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :goto_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_30
        :pswitch_11
    .end packed-switch
.end method
