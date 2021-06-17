.class Lcom/tendcloud/tenddata/game/ch;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cg;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cg;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ch;->this$0:Lcom/tendcloud/tenddata/game/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tendcloud/tenddata/game/cg$d;Lcom/tendcloud/tenddata/game/cg$d;)I
    .registers 8

    .line 313
    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/cg$d;->score:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p2, Lcom/tendcloud/tenddata/game/cg$d;->score:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 314
    const/4 p1, 0x0

    return p1

    .line 317
    :cond_12
    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/cg$d;->score:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide p1, p2, Lcom/tendcloud/tenddata/game/cg$d;->score:D

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, -0x1

    :goto_25
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 311
    check-cast p1, Lcom/tendcloud/tenddata/game/cg$d;

    check-cast p2, Lcom/tendcloud/tenddata/game/cg$d;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/ch;->compare(Lcom/tendcloud/tenddata/game/cg$d;Lcom/tendcloud/tenddata/game/cg$d;)I

    move-result p1

    return p1
.end method
