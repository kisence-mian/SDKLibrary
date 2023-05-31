.class public Lcom/qq/e/ads/contentad/ContentAD;
.super Lcom/qq/e/ads/AbstractAD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;,
        Lcom/qq/e/ads/contentad/ContentAD$BasicADListenerAdapter;,
        Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/e/ads/AbstractAD",
        "<",
        "Lcom/qq/e/comm/pi/CAI;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    .prologue
    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->b:Ljava/util/List;

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    if-nez p1, :cond_38

    :cond_18
    const-string v0, "GDTContentAd Contructor paras error,appid=%s,posId=%s,context=%s"

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

    new-instance v0, Lcom/qq/e/ads/contentad/ContentAD$BasicADListenerAdapter;

    invoke-direct {v0, p4}, Lcom/qq/e/ads/contentad/ContentAD$BasicADListenerAdapter;-><init>(Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;)V

    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/ads/contentad/ContentAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    :goto_37
    return-void

    :cond_38
    iput-object p4, p0, Lcom/qq/e/ads/contentad/ContentAD;->a:Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    new-instance v0, Lcom/qq/e/ads/contentad/ContentAD$BasicADListenerAdapter;

    invoke-direct {v0, p4}, Lcom/qq/e/ads/contentad/ContentAD$BasicADListenerAdapter;-><init>(Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qq/e/ads/contentad/ContentAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V

    goto :goto_37
.end method

.method static synthetic a(Lcom/qq/e/ads/contentad/ContentAD;)Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->a:Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/ADI;
    .registers 7

    new-instance v0, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/contentad/ContentAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/contentad/ContentAD;B)V

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/qq/e/comm/pi/POFactory;->getContentAdDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/CAI;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/qq/e/comm/pi/ADI;)V
    .registers 7

    iget-object v0, p0, Lcom/qq/e/ads/contentad/ContentAD;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "page_number"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "is_manual_operation"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v3, v1, v0}, Lcom/qq/e/ads/contentad/ContentAD;->loadAD(IIZ)V

    goto :goto_6

    :cond_3a
    return-void
.end method

.method public loadAD(IIZ)V
    .registers 7
    .param p1, "pageNumber"    # I
    .param p2, "channel"    # I
    .param p3, "isManualOperation"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/qq/e/ads/contentad/ContentAD;->c()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "AD init Paras OR Context error,details in logs produced while init ContentAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/qq/e/ads/contentad/ContentAD;->b()Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_number"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channel"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_manual_operation"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/qq/e/ads/contentad/ContentAD;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_38
    invoke-virtual {p0}, Lcom/qq/e/ads/contentad/ContentAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/CAI;

    if-eqz v0, :cond_44

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/comm/pi/CAI;->loadAd(IIZ)V

    goto :goto_b

    :cond_44
    const-string v0, "ContentAD Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method
