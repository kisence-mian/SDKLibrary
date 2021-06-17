.class Lcom/umeng/commonsdk/statistics/proto/b$a;
.super Lcom/umeng/analytics/pro/bz;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/bz<",
        "Lcom/umeng/commonsdk/statistics/proto/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 351
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/b$1;)V
    .registers 2

    .line 351
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/b$a;-><init>()V

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

    .line 351
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/b$a;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/b;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 356
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 358
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    .line 359
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-nez v1, :cond_59

    .line 360
    nop

    .line 392
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->k()V

    .line 396
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->g()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 400
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->j()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 404
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->k()V

    .line 405
    return-void

    .line 401
    :cond_1f
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'version\' was not found in serialized data! Struct: "

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

    .line 397
    :cond_3c
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 398
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_59
    iget-short v1, v0, Lcom/umeng/analytics/pro/bk;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_ac

    .line 388
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_a7

    .line 380
    :pswitch_65
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_75

    .line 381
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    .line 382
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/b;->c(Z)V

    goto :goto_a7

    .line 384
    :cond_75
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 386
    goto :goto_a7

    .line 372
    :pswitch_7b
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v3, 0xa

    if-ne v1, v3, :cond_8b

    .line 373
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    .line 374
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/b;->b(Z)V

    goto :goto_a7

    .line 376
    :cond_8b
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 378
    goto :goto_a7

    .line 364
    :pswitch_91
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_a1

    .line 365
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 366
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/b;->a(Z)V

    goto :goto_a7

    .line 368
    :cond_a1
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 370
    nop

    .line 390
    :goto_a7
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->m()V

    goto/16 :goto_3

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_91
        :pswitch_7b
        :pswitch_65
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 351
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/b$a;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/b;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 409
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->k()V

    .line 411
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/b;->l()Lcom/umeng/analytics/pro/bu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    .line 412
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 413
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/b;->m()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 414
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 417
    :cond_1d
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/b;->n()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 418
    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bp;->a(J)V

    .line 419
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 420
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/b;->o()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 421
    iget p2, p2, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bp;->a(I)V

    .line 422
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 423
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    .line 424
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    .line 425
    return-void
.end method
