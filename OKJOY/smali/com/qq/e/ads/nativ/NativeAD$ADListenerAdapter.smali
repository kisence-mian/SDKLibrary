.class Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/NativeAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADListenerAdapter"
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/nativ/NativeAD;


# direct methods
.method private constructor <init>(Lcom/qq/e/ads/nativ/NativeAD;)V
    .registers 2

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qq/e/ads/nativ/NativeAD;B)V
    .registers 3
    .param p1, "x0"    # Lcom/qq/e/ads/nativ/NativeAD;

    .prologue
    invoke-direct {p0, p1}, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeAD;)V

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 7
    .param p1, "evt"    # Lcom/qq/e/comm/adevent/ADEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeAD;->a(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "No DevADListener Binded"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_130

    goto :goto_f

    :pswitch_18
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_43

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeAD;->a(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_f

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdEvent.Paras error for NativeAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_f

    :pswitch_5c
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_7f

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeAD;->a(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;->onADLoaded(Ljava/util/List;)V

    goto :goto_f

    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_99
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_bd

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeAD;->a(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;->onADStatusChanged(Lcom/qq/e/ads/nativ/NativeADDataRef;)V

    goto/16 :goto_f

    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_d7
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_116

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    if-eqz v0, :cond_116

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeAD;->a(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;->onADError(Lcom/qq/e/ads/nativ/NativeADDataRef;Lcom/qq/e/comm/util/AdError;)V

    goto/16 :goto_f

    :cond_116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_18
        :pswitch_5c
        :pswitch_99
        :pswitch_d7
    .end packed-switch
.end method
