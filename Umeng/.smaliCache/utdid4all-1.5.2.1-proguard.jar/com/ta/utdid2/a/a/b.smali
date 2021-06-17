.class public Lcom/ta/utdid2/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/a/a/b$c;,
        Lcom/ta/utdid2/a/a/b$b;,
        Lcom/ta/utdid2/a/a/b$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ta/utdid2/a/a/b;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ta/utdid2/a/a/b;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .registers 4
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/ta/utdid2/a/a/b;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .registers 8
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 154
    new-instance v0, Lcom/ta/utdid2/a/a/b$b;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/a/a/b$b;-><init>(I[B)V

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/ta/utdid2/a/a/b$b;->a([BIIZ)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 161
    iget v1, v0, Lcom/ta/utdid2/a/a/b$b;->a:I

    iget-object v2, v0, Lcom/ta/utdid2/a/a/b$b;->a:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1c

    .line 162
    iget-object v0, v0, Lcom/ta/utdid2/a/a/b$b;->a:[B

    return-object v0

    .line 167
    :cond_1c
    iget v1, v0, Lcom/ta/utdid2/a/a/b$b;->a:I

    new-array v1, v1, [B

    .line 168
    iget-object v2, v0, Lcom/ta/utdid2/a/a/b$b;->a:[B

    iget v0, v0, Lcom/ta/utdid2/a/a/b$b;->a:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-object v1

    .line 157
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([BI)[B
    .registers 4
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 486
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/ta/utdid2/a/a/b;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .registers 9
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 501
    new-instance v0, Lcom/ta/utdid2/a/a/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/a/a/b$c;-><init>(I[B)V

    .line 504
    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 507
    iget-boolean v2, v0, Lcom/ta/utdid2/a/a/b$c;->b:Z

    if-eqz v2, :cond_15

    .line 508
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_22

    .line 509
    add-int/lit8 v1, v1, 0x4

    goto :goto_22

    .line 512
    :cond_15
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_52

    goto :goto_22

    .line 519
    :pswitch_1b
    add-int/lit8 v1, v1, 0x3

    goto :goto_22

    .line 516
    :pswitch_1e
    add-int/lit8 v1, v1, 0x2

    .line 517
    goto :goto_22

    .line 514
    :pswitch_21
    nop

    .line 525
    :cond_22
    :goto_22
    iget-boolean v2, v0, Lcom/ta/utdid2/a/a/b$c;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    if-lez p2, :cond_38

    .line 526
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v3

    iget-boolean v4, v0, Lcom/ta/utdid2/a/a/b$c;->d:Z

    if-eqz v4, :cond_34

    const/4 v4, 0x2

    goto :goto_35

    :cond_34
    const/4 v4, 0x1

    :goto_35
    mul-int v2, v2, v4

    add-int/2addr v1, v2

    .line 530
    :cond_38
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/ta/utdid2/a/a/b$c;->a:[B

    .line 531
    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/ta/utdid2/a/a/b$c;->a([BIIZ)Z

    .line 533
    sget-boolean v2, Lcom/ta/utdid2/a/a/b;->a:Z

    if-nez v2, :cond_4e

    iget v2, v0, Lcom/ta/utdid2/a/a/b$c;->a:I

    if-ne v2, v1, :cond_48

    goto :goto_4e

    :cond_48
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :cond_4e
    :goto_4e
    iget-object v0, v0, Lcom/ta/utdid2/a/a/b$c;->a:[B

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 450
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/utdid2/a/a/b;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 451
    :catch_c
    move-exception v0

    .line 453
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
