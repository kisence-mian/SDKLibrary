.class Lcom/umeng/commonsdk/statistics/proto/a$c;
.super Lcom/umeng/analytics/pro/ca;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/ca<",
        "Lcom/umeng/commonsdk/statistics/proto/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 509
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V
    .registers 2

    .line 509
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 509
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/a$c;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 514
    check-cast p1, Lcom/umeng/analytics/pro/bv;

    .line 515
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Ljava/lang/String;)V

    .line 516
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Ljava/lang/String;)V

    .line 517
    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bv;->a(J)V

    .line 518
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 519
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 522
    :cond_20
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bv;->a(Ljava/util/BitSet;I)V

    .line 523
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 524
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bv;->a(Ljava/lang/String;)V

    .line 526
    :cond_2f
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 509
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/a$c;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 531
    check-cast p1, Lcom/umeng/analytics/pro/bv;

    .line 532
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->a(Z)V

    .line 534
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 535
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->c(Z)V

    .line 536
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    .line 537
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    .line 538
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bv;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 539
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 540
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 541
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->b(Z)V

    .line 543
    :cond_32
    return-void
.end method
