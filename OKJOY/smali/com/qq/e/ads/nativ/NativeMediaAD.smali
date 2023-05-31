.class public Lcom/qq/e/ads/nativ/NativeMediaAD;
.super Lcom/qq/e/ads/AbstractAD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;,
        Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/e/ads/AbstractAD",
        "<",
        "Lcom/qq/e/comm/pi/NVADI;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:I

.field private volatile b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    .prologue
    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->c:Ljava/util/List;

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    if-nez p1, :cond_33

    :cond_18
    const-string v0, "NativeMediaAD Contructor paras error, appid=%s, posId=%s, context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x7d1

    invoke-virtual {p0, p4, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    :goto_32
    return-void

    :cond_33
    iput-object p4, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->d:Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V

    goto :goto_32
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->d:Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/ADI;
    .registers 7

    new-instance v0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeMediaAD;B)V

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/qq/e/comm/pi/POFactory;->getNativeVideoADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NVADI;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/qq/e/comm/pi/ADI;)V
    .registers 4

    check-cast p1, Lcom/qq/e/comm/pi/NVADI;

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->a:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NVADI;->setMinVideoDuration(I)V

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->b:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NVADI;->setMaxVideoDuration(I)V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->loadAD(I)V

    goto :goto_12

    :cond_26
    return-void
.end method

.method public loadAD(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->c()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "AD init Paras OR Context error, details in logs produced while init NativeMediaAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1c
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NVADI;

    if-eqz v0, :cond_28

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NVADI;->loadAd(I)V

    goto :goto_b

    :cond_28
    const-string v0, "NativeMediaAD Init error, See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public setMaxVideoDuration(I)V
    .registers 4
    .param p1, "maxVideoDuration"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->b:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->b:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->a:I

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->b:I

    if-le v0, v1, :cond_11

    const-string v0, "maxVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5c0f\u4e8eminVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NVADI;

    if-eqz v0, :cond_23

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NVADI;->setMaxVideoDuration(I)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    const-string v0, "NativeMediaAD setMaxVideoDuration error, See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public setMinVideoDuration(I)V
    .registers 4
    .param p1, "minVideoDuration"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->a:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->b:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->a:I

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->b:I

    if-le v0, v1, :cond_11

    const-string v0, "minVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5927\u4e8emaxVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NVADI;

    if-eqz v0, :cond_25

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD;->a:I

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NVADI;->setMinVideoDuration(I)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    const-string v0, "NativeMediaAD setMinVideoDuration error, See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_24
.end method
