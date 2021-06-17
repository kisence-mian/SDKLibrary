.class Lcom/umeng/commonsdk/statistics/proto/Response$c;
.super Lcom/umeng/analytics/pro/ca;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/ca<",
        "Lcom/umeng/commonsdk/statistics/proto/Response;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 446
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V
    .registers 2

    .line 446
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response$c;-><init>()V

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

    .line 446
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$c;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 451
    check-cast p1, Lcom/umeng/analytics/pro/bv;

    .line 452
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(I)V

    .line 453
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 454
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 455
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 457
    :cond_16
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 458
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 460
    :cond_20
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bv;->a(Ljava/util/BitSet;I)V

    .line 461
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 462
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Ljava/lang/String;)V

    .line 464
    :cond_2f
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 465
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->write(Lcom/umeng/analytics/pro/bp;)V

    .line 467
    :cond_3a
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 446
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$c;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 472
    check-cast p1, Lcom/umeng/analytics/pro/bv;

    .line 473
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 474
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    .line 475
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/pro/bv;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 476
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 477
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bv;->z()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 478
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->setMsgIsSet(Z)V

    .line 480
    :cond_21
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 481
    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 482
    iget-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->read(Lcom/umeng/analytics/pro/bp;)V

    .line 483
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->setImprintIsSet(Z)V

    .line 485
    :cond_36
    return-void
.end method
