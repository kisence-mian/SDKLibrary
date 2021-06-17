.class Lcom/umeng/commonsdk/statistics/proto/d$c;
.super Lcom/umeng/analytics/pro/ca;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/ca<",
        "Lcom/umeng/commonsdk/statistics/proto/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 490
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V
    .registers 2

    .line 490
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d$c;-><init>()V

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

    .line 490
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$c;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 495
    check-cast p1, Lcom/umeng/analytics/pro/bv;

    .line 497
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(I)V

    .line 498
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 499
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/pro/bv;->a(Ljava/lang/String;)V

    .line 500
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->write(Lcom/umeng/analytics/pro/bp;)V

    .line 501
    goto :goto_15

    .line 503
    :cond_34
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(I)V

    .line 504
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bv;->a(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 490
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d$c;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 510
    check-cast p1, Lcom/umeng/analytics/pro/bv;

    .line 512
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    .line 514
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->w()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lcom/umeng/analytics/pro/bm;-><init>(BBI)V

    .line 515
    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lcom/umeng/analytics/pro/bm;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 516
    const/4 v1, 0x0

    :goto_1b
    iget v2, v0, Lcom/umeng/analytics/pro/bm;->c:I

    if-ge v1, v2, :cond_33

    .line 519
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->z()Ljava/lang/String;

    move-result-object v2

    .line 520
    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v3}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>()V

    .line 521
    invoke-virtual {v3, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->read(Lcom/umeng/analytics/pro/bp;)V

    .line 522
    iget-object v4, p2, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 525
    :cond_33
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Z)V

    .line 526
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    .line 527
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    .line 528
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    .line 529
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->c(Z)V

    .line 530
    return-void
.end method
