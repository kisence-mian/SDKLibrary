.class Lcom/tendcloud/tenddata/game/ck;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cj;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cj;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ck;->this$0:Lcom/tendcloud/tenddata/game/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tendcloud/tenddata/game/cj$a;Lcom/tendcloud/tenddata/game/cj$a;)I
    .registers 8

    .line 303
    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/cj$a;->score:D

    iget-wide v2, p2, Lcom/tendcloud/tenddata/game/cj$a;->score:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_a

    const/4 p1, 0x0

    return p1

    .line 304
    :cond_a
    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/cj$a;->score:D

    iget-wide p1, p2, Lcom/tendcloud/tenddata/game/cj$a;->score:D

    cmpg-double v2, v0, p1

    if-gez v2, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    :goto_15
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 301
    check-cast p1, Lcom/tendcloud/tenddata/game/cj$a;

    check-cast p2, Lcom/tendcloud/tenddata/game/cj$a;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/ck;->compare(Lcom/tendcloud/tenddata/game/cj$a;Lcom/tendcloud/tenddata/game/cj$a;)I

    move-result p1

    return p1
.end method
