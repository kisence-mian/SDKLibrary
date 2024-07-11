.class public Lcom/facebook/bidding/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/bidding/FBAdBidRequest;)Lcom/facebook/bidding/FBAdBidResponse;
    .registers 1

    invoke-static {p0}, Lcom/facebook/bidding/a/b;->b(Lcom/facebook/bidding/FBAdBidRequest;)Lcom/facebook/bidding/FBAdBidResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/FBAdBidResponse;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/bidding/a/b;->b(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/FBAdBidResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/bidding/FBAdBidRequest;Ljava/lang/String;)Lcom/facebook/bidding/FBAdBidResponse;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/bidding/a/b;->b(Lcom/facebook/bidding/FBAdBidRequest;Ljava/lang/String;)Lcom/facebook/bidding/FBAdBidResponse;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;)V
    .registers 4

    invoke-static {}, Lcom/facebook/bidding/a/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/bidding/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/bidding/a/b$1;-><init>(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Lcom/facebook/bidding/FBAdBidRequest;)Lcom/facebook/bidding/FBAdBidResponse;
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getPlatformId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/bidding/FBAdBidRequest;->getPlatformAuctionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/bidding/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/bidding/FBAdBidResponse;

    invoke-static {p0}, Lcom/facebook/bidding/a/f/b;->a(Lcom/facebook/bidding/FBAdBidRequest;)Lcom/facebook/bidding/a/f/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/bidding/FBAdBidResponse;-><init>(Lcom/facebook/bidding/a/f/a;)V

    return-object v0
.end method

.method private static b(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/FBAdBidResponse;
    .registers 3

    new-instance v0, Lcom/facebook/bidding/FBAdBidResponse;

    invoke-static {p0, p1}, Lcom/facebook/bidding/a/f/b;->a(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/a/f/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/bidding/FBAdBidResponse;-><init>(Lcom/facebook/bidding/a/f/a;)V

    return-object v0
.end method

.method private static b(Lcom/facebook/bidding/FBAdBidRequest;Ljava/lang/String;)Lcom/facebook/bidding/FBAdBidResponse;
    .registers 3

    new-instance v0, Lcom/facebook/bidding/FBAdBidResponse;

    invoke-static {p0, p1}, Lcom/facebook/bidding/a/f/b;->a(Lcom/facebook/bidding/FBAdBidRequest;Ljava/lang/String;)Lcom/facebook/bidding/a/f/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/bidding/FBAdBidResponse;-><init>(Lcom/facebook/bidding/a/f/a;)V

    return-object v0
.end method
