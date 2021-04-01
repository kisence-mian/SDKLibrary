.class public Lcom/anythink/hb/HeaderBiddingTransaction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/hb/callback/BiddingCallback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/anythink/hb/callback/BidRequestCallback;

.field private i:Lcom/anythink/hb/data/AuctionResult;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/anythink/hb/Bidder;",
            "Lcom/anythink/hb/data/BidRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/anythink/hb/Bidder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/hb/data/BiddingResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/anythink/hb/HeaderBiddingTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/hb/HeaderBiddingTransaction;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/hb/callback/BidRequestCallback;)V
    .registers 6

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->c:Z

    .line 36
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->d:Ljava/util/Timer;

    .line 43
    new-instance v0, Lcom/anythink/hb/data/AuctionResult;

    invoke-direct {v0}, Lcom/anythink/hb/data/AuctionResult;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->j:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->k:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->b:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->e:Ljava/util/concurrent/ExecutorService;

    .line 56
    iput-object p2, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->f:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->g:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->h:Lcom/anythink/hb/callback/BidRequestCallback;

    .line 59
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/anythink/hb/HeaderBiddingTransaction;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/hb/HeaderBiddingTransaction;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->g:Ljava/lang/String;

    return-object v0
.end method

.method private a(J)V
    .registers 8

    .prologue
    .line 115
    new-instance v0, Lcom/anythink/hb/HeaderBiddingTransaction$2;

    invoke-direct {v0, p0}, Lcom/anythink/hb/HeaderBiddingTransaction$2;-><init>(Lcom/anythink/hb/HeaderBiddingTransaction;)V

    .line 129
    iget-object v1, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->d:Ljava/util/Timer;

    const-wide/16 v2, 0x5

    add-long/2addr v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 130
    return-void
.end method

.method private static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method static synthetic b(Lcom/anythink/hb/HeaderBiddingTransaction;)Z
    .registers 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->c:Z

    return v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 141
    sget-object v0, Lcom/anythink/hb/HeaderBiddingTransaction;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " transId ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ended time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/anythink/hb/HeaderBiddingTransaction;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_34

    .line 144
    :cond_30
    invoke-direct {p0}, Lcom/anythink/hb/HeaderBiddingTransaction;->d()V

    .line 148
    :goto_33
    return-void

    .line 146
    :cond_34
    invoke-direct {p0}, Lcom/anythink/hb/HeaderBiddingTransaction;->e()V

    goto :goto_33
.end method

.method static synthetic c(Lcom/anythink/hb/HeaderBiddingTransaction;)Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/anythink/hb/HeaderBiddingTransaction;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .registers 8

    .prologue
    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->j:Ljava/util/Map;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 155
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/Bidder;

    .line 157
    iget-object v3, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->k:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 159
    new-instance v3, Lcom/anythink/hb/data/BiddingResponse;

    .line 160
    invoke-interface {v0}, Lcom/anythink/hb/Bidder;->getBidderClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    invoke-interface {v0}, Lcom/anythink/hb/Bidder;->getBidderClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timeout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-interface {v0}, Lcom/anythink/hb/Bidder;->getBidderRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    .line 164
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 170
    :cond_61
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    iget-object v1, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/hb/data/AuctionResult;->setTransactionId(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    iget-object v1, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/hb/data/AuctionResult;->setUnitId(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/hb/data/AuctionResult;->setWinner(Lcom/anythink/hb/data/BiddingResponse;)V

    .line 173
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    invoke-virtual {v0, v2}, Lcom/anythink/hb/data/AuctionResult;->setOtherBidders(Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->h:Lcom/anythink/hb/callback/BidRequestCallback;

    iget-object v1, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    invoke-interface {v0, v1, v3}, Lcom/anythink/hb/callback/BidRequestCallback;->onBidRequestCallback(Ljava/lang/String;Lcom/anythink/hb/data/AuctionResult;)V

    .line 177
    sget-object v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Timeout:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    .line 178
    invoke-static {v0}, Lcom/anythink/hb/data/AuctionNotification;->getAuctionNotification(Lcom/anythink/hb/data/AuctionNotification$ReasonCode;)Lcom/anythink/hb/data/AuctionNotification;

    move-result-object v3

    .line 179
    const/4 v0, 0x0

    move v1, v0

    :goto_8b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a2

    .line 181
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/data/BiddingResponse;

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBidder()Lcom/anythink/hb/Bidder;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/anythink/hb/Bidder;->onAuctionNotification(Lcom/anythink/hb/data/AuctionNotification;)V

    .line 179
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8b

    .line 183
    :cond_a2
    return-void
.end method

.method private e()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_123

    .line 189
    const/4 v1, 0x0

    .line 190
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v3

    .line 192
    :goto_19
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4d

    .line 193
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/data/BiddingResponse;

    .line 195
    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-lez v5, :cond_3d

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 196
    :cond_3d
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 192
    :cond_41
    :goto_41
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_19

    .line 200
    :cond_46
    if-eqz v1, :cond_41

    .line 203
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_41

    .line 209
    :cond_4d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->j:Ljava/util/Map;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_ae

    .line 211
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_68
    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/Bidder;

    .line 213
    iget-object v6, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->k:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 215
    new-instance v6, Lcom/anythink/hb/data/BiddingResponse;

    .line 216
    invoke-interface {v0}, Lcom/anythink/hb/Bidder;->getBidderClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-interface {v0}, Lcom/anythink/hb/Bidder;->getBidderClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " timeout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-interface {v0}, Lcom/anythink/hb/Bidder;->getBidderRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v9

    invoke-direct {v6, v7, v8, v0, v9}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    .line 220
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 226
    :cond_ae
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    iget-object v5, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/anythink/hb/data/AuctionResult;->setTransactionId(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    iget-object v5, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/anythink/hb/data/AuctionResult;->setUnitId(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    invoke-virtual {v0, v1}, Lcom/anythink/hb/data/AuctionResult;->setWinner(Lcom/anythink/hb/data/BiddingResponse;)V

    .line 229
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    invoke-virtual {v0, v5}, Lcom/anythink/hb/data/AuctionResult;->setOtherBidders(Ljava/util/List;)V

    .line 233
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->h:Lcom/anythink/hb/callback/BidRequestCallback;

    iget-object v4, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->i:Lcom/anythink/hb/data/AuctionResult;

    invoke-interface {v0, v4, v6}, Lcom/anythink/hb/callback/BidRequestCallback;->onBidRequestCallback(Ljava/lang/String;Lcom/anythink/hb/data/AuctionResult;)V

    .line 236
    sget-object v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Win:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    .line 237
    invoke-static {v0}, Lcom/anythink/hb/data/AuctionNotification;->getAuctionNotification(Lcom/anythink/hb/data/AuctionNotification$ReasonCode;)Lcom/anythink/hb/data/AuctionNotification;

    move-result-object v0

    .line 238
    sget-object v4, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Loss:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    .line 239
    invoke-static {v4}, Lcom/anythink/hb/data/AuctionNotification;->getAuctionNotification(Lcom/anythink/hb/data/AuctionNotification$ReasonCode;)Lcom/anythink/hb/data/AuctionNotification;

    move-result-object v4

    .line 240
    sget-object v6, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Timeout:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    .line 241
    invoke-static {v6}, Lcom/anythink/hb/data/AuctionNotification;->getAuctionNotification(Lcom/anythink/hb/data/AuctionNotification$ReasonCode;)Lcom/anythink/hb/data/AuctionNotification;

    move-result-object v6

    .line 243
    if-eqz v1, :cond_f5

    .line 245
    invoke-virtual {v1}, Lcom/anythink/hb/data/BiddingResponse;->getBidder()Lcom/anythink/hb/Bidder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/anythink/hb/Bidder;->onAuctionNotification(Lcom/anythink/hb/data/AuctionNotification;)V

    :cond_f5
    move v1, v3

    .line 247
    :goto_f6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10d

    .line 249
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/data/BiddingResponse;

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBidder()Lcom/anythink/hb/Bidder;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/anythink/hb/Bidder;->onAuctionNotification(Lcom/anythink/hb/data/AuctionNotification;)V

    .line 247
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f6

    .line 251
    :cond_10d
    :goto_10d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_123

    .line 253
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/data/BiddingResponse;

    invoke-virtual {v0}, Lcom/anythink/hb/data/BiddingResponse;->getBidder()Lcom/anythink/hb/Bidder;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/anythink/hb/Bidder;->onAuctionNotification(Lcom/anythink/hb/data/AuctionNotification;)V

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_10d

    .line 257
    :cond_123
    return-void
.end method

.method static synthetic e(Lcom/anythink/hb/HeaderBiddingTransaction;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/anythink/hb/HeaderBiddingTransaction;->c()V

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->d:Ljava/util/Timer;

    .line 262
    return-void
.end method

.method public onBiddingResponse(Lcom/anythink/hb/data/BiddingResponse;)V
    .registers 5

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->c:Z

    if-nez v0, :cond_4b

    .line 97
    if-eqz p1, :cond_4b

    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 99
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/anythink/hb/data/BiddingResponse;->getBidder()Lcom/anythink/hb/Bidder;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_4b

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->c:Z

    .line 105
    sget-object v0, Lcom/anythink/hb/HeaderBiddingTransaction;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " transId ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -->got all results, return auction result!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/anythink/hb/HeaderBiddingTransaction;->c()V

    .line 110
    :cond_4b
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public startTransaction(Ljava/util/Map;J)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/anythink/hb/Bidder;",
            "Lcom/anythink/hb/data/BidRequestInfo;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->j:Ljava/util/Map;

    .line 65
    sget-object v0, Lcom/anythink/hb/HeaderBiddingTransaction;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " transId ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " started time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/anythink/hb/HeaderBiddingTransaction;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz p1, :cond_5d

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 68
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/hb/Bidder;

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/hb/data/BidRequestInfo;

    .line 71
    if-eqz v2, :cond_36

    .line 72
    iget-object v7, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/anythink/hb/HeaderBiddingTransaction$1;

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/anythink/hb/HeaderBiddingTransaction$1;-><init>(Lcom/anythink/hb/HeaderBiddingTransaction;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;J)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_36

    .line 1115
    :cond_5d
    new-instance v0, Lcom/anythink/hb/HeaderBiddingTransaction$2;

    invoke-direct {v0, p0}, Lcom/anythink/hb/HeaderBiddingTransaction$2;-><init>(Lcom/anythink/hb/HeaderBiddingTransaction;)V

    .line 1129
    iget-object v1, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->d:Ljava/util/Timer;

    const-wide/16 v2, 0x5

    add-long/2addr v2, p2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 90
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction;->b:Ljava/lang/String;

    return-object v0
.end method
