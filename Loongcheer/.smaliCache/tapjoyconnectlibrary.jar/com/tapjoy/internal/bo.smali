.class public final Lcom/tapjoy/internal/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final a:Ljava/io/Writer;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/bl;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    .line 143
    sget-object v1, Lcom/tapjoy/internal/bl;->f:Lcom/tapjoy/internal/bl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v0, ":"

    iput-object v0, p0, Lcom/tapjoy/internal/bo;->d:Ljava/lang/String;

    .line 165
    if-eqz p1, :cond_18

    .line 168
    iput-object p1, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    .line 169
    return-void

    .line 166
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(D)Lcom/tapjoy/internal/bo;
    .registers 4

    .line 358
    iget-boolean v0, p0, Lcom/tapjoy/internal/bo;->e:Z

    if-nez v0, :cond_21

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_21

    .line 359
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Numeric values must be finite, but was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_21
    :goto_21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bo;->b(Z)V

    .line 362
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 363
    return-object p0
.end method

.method private a(Lcom/tapjoy/internal/bl;Lcom/tapjoy/internal/bl;Ljava/lang/String;)Lcom/tapjoy/internal/bo;
    .registers 6

    .line 267
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->e()Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 268
    if-eq v0, p2, :cond_20

    if-ne v0, p1, :cond_9

    goto :goto_20

    .line 269
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Nesting problem: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 273
    if-ne v0, p2, :cond_30

    .line 274
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->g()V

    .line 276
    :cond_30
    iget-object p1, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 277
    return-object p0
.end method

.method private a(Lcom/tapjoy/internal/bl;Ljava/lang/String;)Lcom/tapjoy/internal/bo;
    .registers 4

    .line 255
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bo;->b(Z)V

    .line 256
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object p1, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 258
    return-object p0
.end method

.method private a(Ljava/util/Date;)Lcom/tapjoy/internal/bo;
    .registers 2

    .line 641
    if-nez p1, :cond_7

    .line 642
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->f()Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 644
    :cond_7
    invoke-static {p1}, Lcom/tapjoy/internal/v;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/bo;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1
.end method

.method private a(Z)Lcom/tapjoy/internal/bo;
    .registers 3

    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bo;->b(Z)V

    .line 344
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    if-eqz p1, :cond_b

    const-string p1, "true"

    goto :goto_d

    :cond_b
    const-string p1, "false"

    :goto_d
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 345
    return-object p0
.end method

.method private a([Ljava/lang/Object;)Lcom/tapjoy/internal/bo;
    .registers 5

    .line 592
    if-nez p1, :cond_7

    .line 593
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->f()Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 595
    :cond_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/bo;->a()Lcom/tapjoy/internal/bo;

    .line 596
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    .line 597
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/bo;->a(Ljava/lang/Object;)Lcom/tapjoy/internal/bo;

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 599
    :cond_16
    invoke-virtual {p0}, Lcom/tapjoy/internal/bo;->b()Lcom/tapjoy/internal/bo;

    .line 600
    return-object p0
.end method

.method private a(Lcom/tapjoy/internal/bl;)V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method private b(Ljava/util/Map;)Lcom/tapjoy/internal/bo;
    .registers 2

    .line 624
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/bo;->a(Ljava/util/Map;)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1
.end method

.method private b(Z)V
    .registers 4

    .line 521
    sget-object v0, Lcom/tapjoy/internal/bo$1;->a:[I

    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->e()Lcom/tapjoy/internal/bl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/bl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    .line 548
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Nesting problem: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 545
    :pswitch_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must have only one top-level value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :pswitch_2e
    iget-object p1, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    iget-object v0, p0, Lcom/tapjoy/internal/bo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 541
    sget-object p1, Lcom/tapjoy/internal/bl;->e:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bl;)V

    .line 542
    return-void

    .line 535
    :pswitch_3b
    iget-object p1, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 536
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->g()V

    .line 537
    return-void

    .line 530
    :pswitch_46
    sget-object p1, Lcom/tapjoy/internal/bl;->b:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bl;)V

    .line 531
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->g()V

    .line 532
    return-void

    .line 523
    :pswitch_4f
    iget-boolean v0, p0, Lcom/tapjoy/internal/bo;->e:Z

    if-nez v0, :cond_5e

    if-eqz p1, :cond_56

    goto :goto_5e

    .line 524
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must start with an array or an object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 526
    :cond_5e
    :goto_5e
    sget-object p1, Lcom/tapjoy/internal/bl;->g:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bl;)V

    .line 527
    return-void

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_46
        :pswitch_3b
        :pswitch_2e
        :pswitch_26
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)V
    .registers 10

    .line 425
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_79

    .line 427
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 440
    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_80

    .line 473
    const/16 v7, 0x1f

    if-gt v4, v7, :cond_71

    .line 474
    iget-object v7, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_76

    .line 469
    :sswitch_2f
    iget-object v7, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 470
    goto :goto_76

    .line 443
    :sswitch_41
    iget-object v5, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const/16 v6, 0x5c

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 445
    goto :goto_71

    .line 460
    :sswitch_49
    iget-object v4, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 461
    goto :goto_76

    .line 464
    :sswitch_51
    iget-object v4, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const-string v5, "\\f"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 465
    goto :goto_76

    .line 456
    :sswitch_59
    iget-object v4, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 457
    goto :goto_76

    .line 448
    :sswitch_61
    iget-object v4, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 449
    goto :goto_76

    .line 452
    :sswitch_69
    iget-object v4, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 453
    goto :goto_76

    .line 476
    :cond_71
    :goto_71
    iget-object v5, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(I)V

    .line 426
    :goto_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 482
    :cond_79
    iget-object p1, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 483
    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        0x8 -> :sswitch_69
        0x9 -> :sswitch_61
        0xa -> :sswitch_59
        0xc -> :sswitch_51
        0xd -> :sswitch_49
        0x22 -> :sswitch_41
        0x5c -> :sswitch_41
        0x2028 -> :sswitch_2f
        0x2029 -> :sswitch_2f
    .end sparse-switch
.end method

.method private e()Lcom/tapjoy/internal/bl;
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bl;

    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/bo;
    .registers 3

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bo;->b(Z)V

    .line 333
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 334
    return-object p0
.end method

.method private g()V
    .registers 4

    .line 486
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 487
    return-void

    .line 490
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x1

    :goto_d
    iget-object v1, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 492
    iget-object v1, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    iget-object v2, p0, Lcom/tapjoy/internal/bo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 494
    :cond_1f
    return-void
.end method

.method private h()V
    .registers 4

    .line 501
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->e()Lcom/tapjoy/internal/bl;

    move-result-object v0

    .line 502
    sget-object v1, Lcom/tapjoy/internal/bl;->e:Lcom/tapjoy/internal/bl;

    if-ne v0, v1, :cond_10

    .line 503
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_14

    .line 504
    :cond_10
    sget-object v1, Lcom/tapjoy/internal/bl;->c:Lcom/tapjoy/internal/bl;

    if-ne v0, v1, :cond_1d

    .line 507
    :goto_14
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->g()V

    .line 508
    sget-object v0, Lcom/tapjoy/internal/bl;->d:Lcom/tapjoy/internal/bl;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bl;)V

    .line 509
    return-void

    .line 505
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/bo;
    .registers 3

    .line 219
    sget-object v0, Lcom/tapjoy/internal/bl;->a:Lcom/tapjoy/internal/bl;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bl;Ljava/lang/String;)Lcom/tapjoy/internal/bo;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/tapjoy/internal/bo;
    .registers 4

    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bo;->b(Z)V

    .line 373
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bo;
    .registers 3

    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bo;->b(Z)V

    .line 605
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    invoke-interface {p1, v0}, Lcom/tapjoy/internal/bg;->a(Ljava/io/Writer;)V

    .line 606
    return-object p0
.end method

.method public final a(Ljava/lang/Number;)Lcom/tapjoy/internal/bo;
    .registers 4

    .line 387
    if-nez p1, :cond_7

    .line 388
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->f()Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 391
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-boolean v1, p0, Lcom/tapjoy/internal/bo;->e:Z

    if-nez v1, :cond_38

    .line 393
    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_38

    .line 394
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_38
    :goto_38
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->b(Z)V

    .line 397
    iget-object p1, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 398
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Lcom/tapjoy/internal/bo;
    .registers 5

    .line 554
    if-nez p1, :cond_7

    .line 555
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->f()Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 556
    :cond_7
    instance-of v0, p1, Lcom/tapjoy/internal/bm;

    if-eqz v0, :cond_3b

    .line 557
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 559
    iget-object v1, p0, Lcom/tapjoy/internal/bo;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1a

    .line 563
    return-object p0

    .line 560
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".writeToJson(JsonWriter) wrote incomplete value"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_3b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4a

    .line 565
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->a(Z)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 566
    :cond_4a
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_73

    .line 567
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5d

    .line 568
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/bo;->a(J)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 569
    :cond_5d
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6c

    .line 570
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/bo;->a(D)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 572
    :cond_6c
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/bo;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 574
    :cond_73
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 575
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/bo;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 576
    :cond_7e
    instance-of v0, p1, Lcom/tapjoy/internal/bg;

    if-eqz v0, :cond_89

    .line 577
    check-cast p1, Lcom/tapjoy/internal/bg;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bg;)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 578
    :cond_89
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_94

    .line 579
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/bo;->a(Ljava/util/Collection;)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 580
    :cond_94
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9f

    .line 581
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->b(Ljava/util/Map;)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 582
    :cond_9f
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_aa

    .line 583
    check-cast p1, Ljava/util/Date;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->a(Ljava/util/Date;)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 584
    :cond_aa
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_b7

    .line 585
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->a([Ljava/lang/Object;)Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 587
    :cond_b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/bo;
    .registers 3

    .line 302
    if-eqz p1, :cond_9

    .line 305
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->h()V

    .line 306
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->c(Ljava/lang/String;)V

    .line 307
    return-object p0

    .line 303
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/Collection;)Lcom/tapjoy/internal/bo;
    .registers 3

    .line 611
    if-nez p1, :cond_7

    .line 612
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->f()Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 614
    :cond_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/bo;->a()Lcom/tapjoy/internal/bo;

    .line 615
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 616
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bo;->a(Ljava/lang/Object;)Lcom/tapjoy/internal/bo;

    .line 617
    goto :goto_e

    .line 618
    :cond_1c
    invoke-virtual {p0}, Lcom/tapjoy/internal/bo;->b()Lcom/tapjoy/internal/bo;

    .line 619
    return-object p0
.end method

.method final a(Ljava/util/Map;)Lcom/tapjoy/internal/bo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tapjoy/internal/bo;"
        }
    .end annotation

    .line 628
    if-nez p1, :cond_7

    .line 629
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->f()Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 631
    :cond_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/bo;->c()Lcom/tapjoy/internal/bo;

    .line 632
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 633
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/bo;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bo;

    .line 634
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bo;->a(Ljava/lang/Object;)Lcom/tapjoy/internal/bo;

    .line 635
    goto :goto_12

    .line 636
    :cond_31
    invoke-virtual {p0}, Lcom/tapjoy/internal/bo;->d()Lcom/tapjoy/internal/bo;

    .line 637
    return-object p0
.end method

.method public final b()Lcom/tapjoy/internal/bo;
    .registers 4

    .line 228
    sget-object v0, Lcom/tapjoy/internal/bl;->a:Lcom/tapjoy/internal/bl;

    sget-object v1, Lcom/tapjoy/internal/bl;->b:Lcom/tapjoy/internal/bl;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bl;Lcom/tapjoy/internal/bl;Ljava/lang/String;)Lcom/tapjoy/internal/bo;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/bo;
    .registers 3

    .line 318
    if-nez p1, :cond_7

    .line 319
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->f()Lcom/tapjoy/internal/bo;

    move-result-object p1

    return-object p1

    .line 321
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bo;->b(Z)V

    .line 322
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/bo;->c(Ljava/lang/String;)V

    .line 323
    return-object p0
.end method

.method public final c()Lcom/tapjoy/internal/bo;
    .registers 3

    .line 238
    sget-object v0, Lcom/tapjoy/internal/bl;->c:Lcom/tapjoy/internal/bl;

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bl;Ljava/lang/String;)Lcom/tapjoy/internal/bo;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/tapjoy/internal/bo;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 419
    invoke-direct {p0}, Lcom/tapjoy/internal/bo;->e()Lcom/tapjoy/internal/bl;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bl;->g:Lcom/tapjoy/internal/bl;

    if-ne v0, v1, :cond_e

    .line 422
    return-void

    .line 420
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Lcom/tapjoy/internal/bo;
    .registers 4

    .line 247
    sget-object v0, Lcom/tapjoy/internal/bl;->c:Lcom/tapjoy/internal/bl;

    sget-object v1, Lcom/tapjoy/internal/bl;->e:Lcom/tapjoy/internal/bl;

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/tapjoy/internal/bo;->a(Lcom/tapjoy/internal/bl;Lcom/tapjoy/internal/bl;Ljava/lang/String;)Lcom/tapjoy/internal/bo;

    move-result-object v0

    return-object v0
.end method
