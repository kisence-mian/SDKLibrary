.class final Lcom/anythink/hb/ATHeadBiddingHandler$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/hb/callback/BidRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/hb/ATHeadBiddingHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/hb/ATHeadBiddingHandler$1;


# direct methods
.method constructor <init>(Lcom/anythink/hb/ATHeadBiddingHandler$1;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1$1;->a:Lcom/anythink/hb/ATHeadBiddingHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBidRequestCallback(Ljava/lang/String;Lcom/anythink/hb/data/AuctionResult;)V
    .registers 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1$1;->a:Lcom/anythink/hb/ATHeadBiddingHandler$1;

    iget-object v0, v0, Lcom/anythink/hb/ATHeadBiddingHandler$1;->b:Lcom/anythink/hb/ATHeadBiddingHandler;

    iget-object v1, p0, Lcom/anythink/hb/ATHeadBiddingHandler$1$1;->a:Lcom/anythink/hb/ATHeadBiddingHandler$1;

    iget-object v1, v1, Lcom/anythink/hb/ATHeadBiddingHandler$1;->a:Lcom/anythink/core/b/g$a;

    invoke-static {v0, p2, v1}, Lcom/anythink/hb/ATHeadBiddingHandler;->a(Lcom/anythink/hb/ATHeadBiddingHandler;Lcom/anythink/hb/data/AuctionResult;Lcom/anythink/core/b/g$a;)V

    .line 164
    return-void
.end method
