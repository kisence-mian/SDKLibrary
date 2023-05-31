.class final Lcom/anythink/hb/HeaderBiddingTransaction$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/hb/HeaderBiddingTransaction;->startTransaction(Ljava/util/Map;J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/hb/Bidder;

.field final synthetic b:Lcom/anythink/hb/data/BidRequestInfo;

.field final synthetic c:J

.field final synthetic d:Lcom/anythink/hb/HeaderBiddingTransaction;


# direct methods
.method constructor <init>(Lcom/anythink/hb/HeaderBiddingTransaction;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;J)V
    .registers 6

    .prologue
    .line 72
    iput-object p1, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->d:Lcom/anythink/hb/HeaderBiddingTransaction;

    iput-object p2, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->a:Lcom/anythink/hb/Bidder;

    iput-object p3, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->b:Lcom/anythink/hb/data/BidRequestInfo;

    iput-wide p4, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->a:Lcom/anythink/hb/Bidder;

    iget-object v2, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->b:Lcom/anythink/hb/data/BidRequestInfo;

    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->d:Lcom/anythink/hb/HeaderBiddingTransaction;

    invoke-static {v0}, Lcom/anythink/hb/HeaderBiddingTransaction;->a(Lcom/anythink/hb/HeaderBiddingTransaction;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->c:J

    iget-object v6, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->d:Lcom/anythink/hb/HeaderBiddingTransaction;

    invoke-interface/range {v1 .. v6}, Lcom/anythink/hb/Bidder;->bid(Lcom/anythink/hb/data/BidRequestInfo;Ljava/lang/String;JLcom/anythink/hb/callback/BiddingCallback;)V
    :try_end_11
    .catch Lcom/anythink/hb/exception/BiddingException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_38

    .line 82
    :goto_11
    return-void

    .line 77
    :catch_12
    move-exception v0

    .line 78
    invoke-static {}, Lcom/anythink/hb/HeaderBiddingTransaction;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->a:Lcom/anythink/hb/Bidder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bidding failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/hb/exception/BiddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/hb/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 79
    :catch_38
    move-exception v0

    .line 80
    invoke-static {}, Lcom/anythink/hb/HeaderBiddingTransaction;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/hb/HeaderBiddingTransaction$1;->a:Lcom/anythink/hb/Bidder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bidding exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/hb/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method
