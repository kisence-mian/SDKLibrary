.class public Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Ljava/io/Writer;

.field private d:[I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 146
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a:[Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_22

    .line 148
    sget-object v2, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 150
    :cond_22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 151
    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 152
    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    .line 153
    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 154
    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 155
    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 156
    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 157
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b:[Ljava/lang/String;

    .line 158
    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    .line 159
    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    .line 160
    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    .line 161
    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    .line 162
    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d:[I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    .line 171
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(I)V

    .line 183
    const-string v0, ":"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->g:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->k:Z

    .line 199
    if-eqz p1, :cond_1c

    .line 202
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    .line 203
    return-void

    .line 200
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()I
    .registers 3

    .line 365
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    if-eqz v0, :cond_b

    .line 368
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    return v0

    .line 366
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(IC)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->m()V

    .line 327
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(I)V

    .line 328
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 329
    return-object p0
.end method

.method private a(IIC)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a()I

    move-result v0

    .line 339
    if-eq v0, p2, :cond_11

    if-ne v0, p1, :cond_9

    goto :goto_11

    .line 340
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_11
    :goto_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j:Ljava/lang/String;

    if-nez p1, :cond_26

    .line 346
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    .line 347
    if-ne v0, p2, :cond_20

    .line 348
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->k()V

    .line 350
    :cond_20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    .line 351
    return-object p0

    .line 343
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dangling name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .registers 5

    .line 355
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d:[I

    array-length v2, v1

    if-ne v0, v2, :cond_f

    .line 356
    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d:[I

    .line 358
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    aput p1, v0, v1

    .line 359
    return-void
.end method

.method private b(I)V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 376
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->i:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a:[Ljava/lang/String;

    .line 565
    :goto_9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 566
    nop

    .line 567
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 568
    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v3, v1, :cond_46

    .line 569
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 571
    const/16 v6, 0x80

    if-ge v5, v6, :cond_26

    .line 572
    aget-object v5, v0, v5

    .line 573
    if-nez v5, :cond_33

    .line 574
    goto :goto_43

    .line 576
    :cond_26
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_2d

    .line 577
    const-string v5, "\\u2028"

    goto :goto_33

    .line 578
    :cond_2d
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_43

    .line 579
    const-string v5, "\\u2029"

    .line 583
    :cond_33
    :goto_33
    if-ge v4, v3, :cond_3c

    .line 584
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    sub-int v7, v3, v4

    invoke-virtual {v6, p1, v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 586
    :cond_3c
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 587
    add-int/lit8 v4, v3, 0x1

    .line 568
    :cond_43
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 589
    :cond_46
    if-ge v4, v1, :cond_4e

    .line 590
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    sub-int/2addr v1, v4

    invoke-virtual {v0, p1, v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 592
    :cond_4e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 593
    return-void
.end method

.method private j()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 400
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->l()V

    .line 401
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j:Ljava/lang/String;

    .line 404
    :cond_f
    return-void
.end method

.method private k()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 597
    return-void

    .line 600
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 601
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    const/4 v1, 0x1

    :goto_f
    if-ge v1, v0, :cond_1b

    .line 602
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 604
    :cond_1b
    return-void
.end method

.method private l()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a()I

    move-result v0

    .line 612
    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    .line 613
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_12

    .line 614
    :cond_f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 617
    :goto_12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->k()V

    .line 618
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(I)V

    .line 619
    return-void

    .line 615
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 655
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :pswitch_f
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->h:Z

    if-eqz v0, :cond_14

    goto :goto_1c

    .line 631
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :goto_1c
    :pswitch_1c
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(I)V

    .line 637
    goto :goto_40

    .line 650
    :pswitch_21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 651
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(I)V

    .line 652
    goto :goto_40

    .line 645
    :pswitch_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 646
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->k()V

    .line 647
    goto :goto_40

    .line 640
    :pswitch_38
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(I)V

    .line 641
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->k()V

    .line 642
    nop

    .line 657
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2d
        :pswitch_7
        :pswitch_21
        :pswitch_7
        :pswitch_1c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j()V

    .line 509
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->m()V

    .line 510
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 511
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    if-nez p1, :cond_7

    .line 477
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 479
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j()V

    .line 480
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->m()V

    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "true"

    goto :goto_1a

    :cond_18
    const-string p1, "false"

    :goto_1a
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 482
    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    if-nez p1, :cond_7

    .line 523
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 526
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j()V

    .line 527
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->h:Z

    if-nez v1, :cond_44

    .line 529
    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_44

    .line 530
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->m()V

    .line 533
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 534
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    if-eqz p1, :cond_1b

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 391
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    if-eqz v0, :cond_d

    .line 394
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j:Ljava/lang/String;

    .line 395
    return-object p0

    .line 392
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 386
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j()V

    .line 465
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->m()V

    .line 466
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    if-eqz p1, :cond_d

    const-string p1, "true"

    goto :goto_f

    :cond_d
    const-string p1, "false"

    :goto_f
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 467
    return-object p0
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j()V

    .line 289
    const/4 v0, 0x1

    const/16 v1, 0x5b

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(IC)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    if-nez p1, :cond_7

    .line 414
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 416
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j()V

    .line 417
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->m()V

    .line 418
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d(Ljava/lang/String;)V

    .line 419
    return-object p0
.end method

.method public final b(Z)V
    .registers 2

    .line 236
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->h:Z

    .line 237
    return-void
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x5d

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(IIC)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 215
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f:Ljava/lang/String;

    .line 216
    const-string p1, ":"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->g:Ljava/lang/String;

    goto :goto_14

    .line 218
    :cond_e
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f:Ljava/lang/String;

    .line 219
    const-string p1, ": "

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->g:Ljava/lang/String;

    .line 221
    :goto_14
    return-void
.end method

.method public final c(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->i:Z

    .line 255
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 556
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    .line 557
    const/4 v1, 0x1

    if-gt v0, v1, :cond_18

    if-ne v0, v1, :cond_14

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    .line 560
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    .line 561
    return-void

    .line 558
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j()V

    .line 309
    const/4 v0, 0x3

    const/16 v1, 0x7b

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(IC)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .registers 2

    .line 270
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->k:Z

    .line 271
    return-void
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x7d

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(IIC)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 446
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->k:Z

    if-eqz v0, :cond_c

    .line 447
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j()V

    goto :goto_10

    .line 449
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->j:Ljava/lang/String;

    .line 450
    return-object p0

    .line 453
    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->m()V

    .line 454
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 455
    return-object p0
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e:I

    if-eqz v0, :cond_a

    .line 545
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 546
    return-void

    .line 543
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->h:Z

    return v0
.end method

.method public final h()Z
    .registers 2

    .line 262
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->i:Z

    return v0
.end method

.method public final i()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->k:Z

    return v0
.end method
