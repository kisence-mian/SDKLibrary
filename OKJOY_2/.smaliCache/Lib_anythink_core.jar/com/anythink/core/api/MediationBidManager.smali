.class public abstract Lcom/anythink/core/api/MediationBidManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/api/MediationBidManager$BidListener;
    }
.end annotation


# instance fields
.field protected mRequestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract notifyWinnerDisplay(Ljava/lang/String;Lcom/anythink/core/c/c$b;)V
.end method

.method public setBidRequestUrl(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/anythink/core/api/MediationBidManager;->mRequestUrl:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public abstract startBid(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/api/MediationBidManager$BidListener;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Lcom/anythink/core/api/MediationBidManager$BidListener;",
            "J)V"
        }
    .end annotation
.end method
