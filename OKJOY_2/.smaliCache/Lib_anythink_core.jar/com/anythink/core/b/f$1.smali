.class final Lcom/anythink/core/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/MediationBidManager$BidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/f;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBidFail(Ljava/lang/String;)V
    .registers 2

    .line 89
    return-void
.end method

.method public final onBidSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/anythink/core/b/f$1;->a:Lcom/anythink/core/b/f;

    invoke-static {v0, p1}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/f;Ljava/util/List;)V

    .line 84
    return-void
.end method
