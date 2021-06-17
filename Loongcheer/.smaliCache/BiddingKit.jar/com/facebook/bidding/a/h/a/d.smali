.class public Lcom/facebook/bidding/a/h/a/d;
.super Lcom/facebook/bidding/a/h/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/bidding/a/h/a/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/facebook/bidding/a/h/a/c;->b:Lcom/facebook/bidding/a/h/a/c;

    iput-object p1, p0, Lcom/facebook/bidding/a/h/a/d;->c:Lcom/facebook/bidding/a/h/a/c;

    iput-object p3, p0, Lcom/facebook/bidding/a/h/a/d;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/bidding/a/h/a/d;->e:[B

    return-void
.end method
