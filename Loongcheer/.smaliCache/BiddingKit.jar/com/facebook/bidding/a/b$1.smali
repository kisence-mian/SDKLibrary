.class final Lcom/facebook/bidding/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/bidding/a/b;->a(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/bidding/FBAdBidRequest;

.field final synthetic b:Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;


# direct methods
.method constructor <init>(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/bidding/a/b$1;->a:Lcom/facebook/bidding/FBAdBidRequest;

    iput-object p2, p0, Lcom/facebook/bidding/a/b$1;->b:Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/bidding/a/b$1;->a:Lcom/facebook/bidding/FBAdBidRequest;

    invoke-static {v0}, Lcom/facebook/bidding/a/e/a;->a(Lcom/facebook/bidding/FBAdBidRequest;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bidding/a/b$1;->a:Lcom/facebook/bidding/FBAdBidRequest;

    invoke-virtual {v1}, Lcom/facebook/bidding/FBAdBidRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/bidding/a/b$1;->a:Lcom/facebook/bidding/FBAdBidRequest;

    invoke-virtual {v2}, Lcom/facebook/bidding/FBAdBidRequest;->getTimeoutMS()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/facebook/bidding/a/c/a;->a(Landroid/content/Context;ILjava/lang/String;)Lcom/facebook/bidding/a/h/a/g;

    move-result-object v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/bidding/a/b$1;->a:Lcom/facebook/bidding/FBAdBidRequest;

    invoke-static {v0}, Lcom/facebook/bidding/a/b;->a(Lcom/facebook/bidding/FBAdBidRequest;)Lcom/facebook/bidding/FBAdBidResponse;

    move-result-object v0

    goto :goto_31

    :cond_1f
    iget-object v1, p0, Lcom/facebook/bidding/a/b$1;->a:Lcom/facebook/bidding/FBAdBidRequest;

    invoke-static {v1, v0}, Lcom/facebook/bidding/a/b;->a(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/a/h/a/g;)Lcom/facebook/bidding/FBAdBidResponse;

    move-result-object v0
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_31

    :catch_26
    move-exception v0

    iget-object v1, p0, Lcom/facebook/bidding/a/b$1;->a:Lcom/facebook/bidding/FBAdBidRequest;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/bidding/a/b;->a(Lcom/facebook/bidding/FBAdBidRequest;Ljava/lang/String;)Lcom/facebook/bidding/FBAdBidResponse;

    move-result-object v0

    :goto_31
    iget-object v1, p0, Lcom/facebook/bidding/a/b$1;->b:Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;

    invoke-interface {v1, v0}, Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;->handleBidResponse(Lcom/facebook/bidding/FBAdBidResponse;)V

    return-void
.end method
