.class public Lcom/facebook/bidding/a/h/a/b;
.super Lcom/facebook/bidding/a/h/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/bidding/a/h/a/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/facebook/bidding/a/h/a/c;->a:Lcom/facebook/bidding/a/h/a/c;

    iput-object p1, p0, Lcom/facebook/bidding/a/h/a/b;->c:Lcom/facebook/bidding/a/h/a/c;

    return-void
.end method
