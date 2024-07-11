.class Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdLoadListenerAdapter"
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListenerAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 8

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListenerAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;

    if-eqz v0, :cond_80

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const-string v1, ")"

    const-string v2, "ADEvent.Params error for NativeExpressSecondAD("

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_82

    goto :goto_80

    :pswitch_12
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_39

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListenerAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_4d

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_4d
    :pswitch_4d
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_6c

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListenerAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;->onLoadSuccess(Ljava/util/List;)V

    return-void

    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_80
    :goto_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_12
    .end packed-switch
.end method
