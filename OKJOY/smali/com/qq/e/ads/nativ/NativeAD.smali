.class public Lcom/qq/e/ads/nativ/NativeAD;
.super Lcom/qq/e/ads/AbstractAD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;,
        Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/e/ads/AbstractAD",
        "<",
        "Lcom/qq/e/comm/pi/NADI;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    .prologue
    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD;->b:Ljava/util/List;

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    if-nez p1, :cond_33

    :cond_18
    const-string v0, "GDTNativeAd Contructor paras error,appid=%s,posId=%s,context=%s"

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

    invoke-virtual {p0, p4, v0}, Lcom/qq/e/ads/nativ/NativeAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    :goto_32
    return-void

    :cond_33
    iput-object p4, p0, Lcom/qq/e/ads/nativ/NativeAD;->a:Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qq/e/ads/nativ/NativeAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V

    goto :goto_32
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD;->a:Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/ADI;
    .registers 7

    new-instance v0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeAD;B)V

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/qq/e/comm/pi/POFactory;->getNativeADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NADI;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/qq/e/comm/pi/ADI;)V
    .registers 4

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD;->c:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/nativ/NativeAD;->setCategories(Ljava/util/List;)V

    :cond_9
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/nativ/NativeAD;->loadAD(I)V

    goto :goto_f

    :cond_23
    return-void
.end method

.method public loadAD(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeAD;->c()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "AD init Paras OR Context error,details in logs produced while init NativeAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeAD;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1c
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NADI;

    if-eqz v0, :cond_28

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NADI;->loadAd(I)V

    goto :goto_b

    :cond_28
    const-string v0, "NativeAD Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public setCategories(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeAD;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NADI;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NADI;->setCategories(Ljava/util/List;)V

    :cond_f
    return-void
.end method
