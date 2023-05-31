.class public Lcom/anythink/hb/HeaderBiddingAggregator;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/util/concurrent/ExecutorService;

.field private static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/anythink/hb/HeaderBiddingAggregator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/hb/HeaderBiddingAggregator;->a:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/hb/HeaderBiddingAggregator;->b:Z

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/anythink/hb/HeaderBiddingAggregator;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 53
    sput-object p0, Lcom/anythink/hb/HeaderBiddingAggregator;->d:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static isDebugMode()Z
    .registers 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/anythink/hb/HeaderBiddingAggregator;->b:Z

    return v0
.end method

.method public static requestBid(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLcom/anythink/hb/callback/BidRequestCallback;)Lcom/anythink/hb/HeaderBiddingTransaction;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/hb/data/BidRequestInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/anythink/hb/callback/BidRequestCallback;",
            ")",
            "Lcom/anythink/hb/HeaderBiddingTransaction;"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/anythink/hb/HeaderBiddingAggregator;->d:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 68
    new-instance v0, Lcom/anythink/hb/exception/BidRequestException;

    const-string v1, "Context is null or empty!"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BidRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_c
    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 72
    :cond_14
    new-instance v0, Lcom/anythink/hb/exception/BidRequestException;

    const-string v1, "Bidders is null or empty!"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BidRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 76
    new-instance v0, Lcom/anythink/hb/exception/BidRequestException;

    const-string v1, "unitId is null or empty!"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BidRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2e
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 80
    new-instance v0, Lcom/anythink/hb/exception/BidRequestException;

    const-string v1, "adType is null or empty!"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BidRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_40
    if-nez p5, :cond_4a

    .line 84
    new-instance v0, Lcom/anythink/hb/exception/BidRequestException;

    const-string v1, "bidRequestCallback is null"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BidRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_4a
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_52

    .line 88
    const-wide/16 p3, 0x3e8

    .line 92
    :cond_52
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 93
    const/4 v0, 0x0

    move v2, v0

    :goto_59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9e

    .line 95
    :try_start_5f
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/data/BidRequestInfo;

    invoke-virtual {v0}, Lcom/anythink/hb/data/BidRequestInfo;->getBidderClass()Ljava/lang/Class;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_9a

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lcom/anythink/hb/Bidder;

    if-eqz v1, :cond_9a

    .line 99
    check-cast v0, Lcom/anythink/hb/Bidder;

    .line 100
    new-instance v4, Lcom/anythink/hb/data/HiBidContext;

    sget-object v5, Lcom/anythink/hb/HeaderBiddingAggregator;->d:Landroid/content/Context;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/hb/data/BidRequestInfo;

    invoke-virtual {v1}, Lcom/anythink/hb/data/BidRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/hb/data/BidRequestInfo;

    invoke-virtual {v1}, Lcom/anythink/hb/data/BidRequestInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1}, Lcom/anythink/hb/data/HiBidContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/anythink/hb/Bidder;->init(Lcom/anythink/hb/data/HiBidContext;)V

    .line 101
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9a
    .catch Lcom/anythink/hb/exception/SdkIntegratedException; {:try_start_5f .. :try_end_9a} :catch_bb
    .catch Lcom/anythink/hb/exception/BidderInitFailedException; {:try_start_5f .. :try_end_9a} :catch_b9
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_9a} :catch_b7

    .line 93
    :cond_9a
    :goto_9a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_59

    .line 110
    :cond_9e
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_ac

    .line 111
    new-instance v0, Lcom/anythink/hb/exception/BidRequestException;

    const-string v1, "No vail bid request."

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BidRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_ac
    new-instance v0, Lcom/anythink/hb/HeaderBiddingTransaction;

    sget-object v1, Lcom/anythink/hb/HeaderBiddingAggregator;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, p2, p5}, Lcom/anythink/hb/HeaderBiddingTransaction;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/hb/callback/BidRequestCallback;)V

    .line 118
    invoke-virtual {v0, v3, p3, p4}, Lcom/anythink/hb/HeaderBiddingTransaction;->startTransaction(Ljava/util/Map;J)Ljava/lang/String;

    .line 120
    return-object v0

    :catch_b7
    move-exception v0

    goto :goto_9a

    .line 107
    :catch_b9
    move-exception v0

    goto :goto_9a

    :catch_bb
    move-exception v0

    goto :goto_9a
.end method

.method public static setDebugMode(Z)V
    .registers 1

    .prologue
    .line 44
    sput-boolean p0, Lcom/anythink/hb/HeaderBiddingAggregator;->b:Z

    .line 45
    return-void
.end method
