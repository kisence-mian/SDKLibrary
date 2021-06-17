.class Lcom/umeng/commonsdk/statistics/proto/e$a;
.super Lcom/umeng/analytics/pro/bz;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/bz<",
        "Lcom/umeng/commonsdk/statistics/proto/e;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 355
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V
    .registers 2

    .line 355
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 355
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/e$a;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/e;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 362
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    .line 363
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-nez v1, :cond_36

    .line 364
    nop

    .line 396
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->k()V

    .line 400
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->g()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 404
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->k()V

    .line 405
    return-void

    .line 401
    :cond_19
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    .line 366
    :cond_36
    iget-short v1, v0, Lcom/umeng/analytics/pro/bk;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_88

    .line 392
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_82

    .line 384
    :pswitch_44
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v2, :cond_52

    .line 385
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    .line 386
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->c(Z)V

    goto :goto_82

    .line 388
    :cond_52
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 390
    goto :goto_82

    .line 376
    :pswitch_58
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_68

    .line 377
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    .line 378
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->b(Z)V

    goto :goto_82

    .line 380
    :cond_68
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 382
    goto :goto_82

    .line 368
    :pswitch_6e
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v2, :cond_7c

    .line 369
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 370
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->a(Z)V

    goto :goto_82

    .line 372
    :cond_7c
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 374
    nop

    .line 394
    :goto_82
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->m()V

    goto/16 :goto_3

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_58
        :pswitch_44
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 355
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/e$a;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/e;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 409
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->k()V

    .line 411
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->l()Lcom/umeng/analytics/pro/bu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    .line 412
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 413
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 414
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->m()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 415
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 419
    :cond_23
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->n()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 420
    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bp;->a(J)V

    .line 421
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 422
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 423
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->o()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 424
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 427
    :cond_45
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    .line 428
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    .line 429
    return-void
.end method
