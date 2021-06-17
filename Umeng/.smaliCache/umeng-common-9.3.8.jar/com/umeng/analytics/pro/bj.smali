.class public Lcom/umeng/analytics/pro/bj;
.super Lcom/umeng/analytics/pro/bp;
.source "TCompactProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/bj$b;,
        Lcom/umeng/analytics/pro/bj$a;
    }
.end annotation


# static fields
.field private static final d:Lcom/umeng/analytics/pro/bu;

.field private static final e:Lcom/umeng/analytics/pro/bk;

.field private static final f:[B

.field private static final h:B = -0x7et

.field private static final i:B = 0x1t

.field private static final j:B = 0x1ft

.field private static final k:B = -0x20t

.field private static final l:I = 0x5


# instance fields
.field a:[B

.field b:[B

.field c:[B

.field private m:Lcom/umeng/analytics/pro/ao;

.field private n:S

.field private o:Lcom/umeng/analytics/pro/bk;

.field private p:Ljava/lang/Boolean;

.field private final q:J

.field private r:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 42
    new-instance v0, Lcom/umeng/analytics/pro/bu;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/pro/bj;->d:Lcom/umeng/analytics/pro/bu;

    .line 43
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bj;->e:Lcom/umeng/analytics/pro/bk;

    .line 45
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/umeng/analytics/pro/bj;->f:[B

    .line 48
    aput-byte v2, v0, v2

    .line 49
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 50
    const/4 v1, 0x3

    aput-byte v1, v0, v1

    .line 51
    const/4 v1, 0x6

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    .line 52
    const/4 v3, 0x5

    const/16 v4, 0x8

    aput-byte v3, v0, v4

    .line 53
    const/16 v3, 0xa

    aput-byte v1, v0, v3

    .line 54
    const/4 v1, 0x7

    aput-byte v1, v0, v2

    .line 55
    const/16 v1, 0xb

    aput-byte v4, v0, v1

    .line 56
    const/16 v2, 0xf

    const/16 v4, 0x9

    aput-byte v4, v0, v2

    .line 57
    const/16 v2, 0xe

    aput-byte v3, v0, v2

    .line 58
    const/16 v2, 0xd

    aput-byte v1, v0, v2

    .line 59
    const/16 v1, 0xc

    aput-byte v1, v0, v1

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/cd;)V
    .registers 4

    .line 151
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/bj;-><init>(Lcom/umeng/analytics/pro/cd;J)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/cd;J)V
    .registers 5

    .line 141
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bp;-><init>(Lcom/umeng/analytics/pro/cd;)V

    .line 110
    new-instance p1, Lcom/umeng/analytics/pro/ao;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Lcom/umeng/analytics/pro/ao;-><init>(I)V

    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->m:Lcom/umeng/analytics/pro/ao;

    .line 112
    const/4 p1, 0x0

    iput-short p1, p0, Lcom/umeng/analytics/pro/bj;->n:S

    .line 118
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->o:Lcom/umeng/analytics/pro/bk;

    .line 124
    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->p:Ljava/lang/Boolean;

    .line 379
    const/4 p1, 0x5

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->a:[B

    .line 400
    const/16 p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->b:[B

    .line 450
    const/4 p1, 0x1

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/umeng/analytics/pro/bj;->r:[B

    .line 593
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->c:[B

    .line 142
    iput-wide p2, p0, Lcom/umeng/analytics/pro/bj;->q:J

    .line 143
    return-void
.end method

.method private E()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 715
    nop

    .line 716
    nop

    .line 717
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cd;->h()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x5

    if-lt v0, v3, :cond_34

    .line 718
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cd;->f()[B

    move-result-object v0

    .line 719
    iget-object v3, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/cd;->g()I

    move-result v3

    .line 720
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 722
    :goto_1c
    add-int v6, v3, v1

    aget-byte v6, v0, v6

    .line 723
    and-int/lit8 v7, v6, 0x7f

    shl-int/2addr v7, v5

    or-int/2addr v4, v7

    .line 724
    and-int/2addr v6, v2

    if-eq v6, v2, :cond_2f

    .line 728
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/cd;->a(I)V

    .line 729
    goto :goto_41

    .line 725
    :cond_2f
    add-int/lit8 v5, v5, 0x7

    .line 726
    add-int/lit8 v1, v1, 0x1

    .line 727
    goto :goto_1c

    .line 717
    :cond_34
    const/4 v0, 0x0

    .line 731
    :goto_35
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->u()B

    move-result v3

    .line 732
    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v0

    or-int/2addr v1, v4

    .line 733
    and-int/2addr v3, v2

    if-eq v3, v2, :cond_42

    move v4, v1

    .line 737
    :goto_41
    return v4

    .line 734
    :cond_42
    add-int/lit8 v0, v0, 0x7

    .line 735
    goto :goto_35
.end method

.method private F()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 745
    nop

    .line 746
    nop

    .line 747
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cd;->h()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    const-wide/16 v3, 0x0

    const/16 v5, 0xa

    if-lt v0, v5, :cond_38

    .line 748
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cd;->f()[B

    move-result-object v0

    .line 749
    iget-object v5, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v5}, Lcom/umeng/analytics/pro/cd;->g()I

    move-result v5

    .line 750
    move-wide v6, v3

    const/4 v3, 0x0

    .line 752
    :goto_1f
    add-int v4, v5, v1

    aget-byte v4, v0, v4

    .line 753
    and-int/lit8 v8, v4, 0x7f

    int-to-long v8, v8

    shl-long/2addr v8, v3

    or-long/2addr v6, v8

    .line 754
    and-int/2addr v4, v2

    if-eq v4, v2, :cond_33

    .line 758
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/cd;->a(I)V

    .line 759
    goto :goto_45

    .line 755
    :cond_33
    add-int/lit8 v3, v3, 0x7

    .line 756
    add-int/lit8 v1, v1, 0x1

    .line 757
    goto :goto_1f

    .line 761
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->u()B

    move-result v0

    .line 762
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    .line 763
    and-int/2addr v0, v2

    if-eq v0, v2, :cond_46

    move-wide v6, v3

    .line 767
    :goto_45
    return-wide v6

    .line 764
    :cond_46
    add-int/lit8 v1, v1, 0x7

    .line 765
    goto :goto_38
.end method

.method private a([B)J
    .registers 9

    .line 794
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x0

    aget-byte p1, p1, v4

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a(J[BI)V
    .registers 10

    .line 436
    add-int/lit8 v0, p4, 0x0

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p3, v0

    .line 437
    add-int/lit8 v0, p4, 0x1

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p3, v0

    .line 438
    add-int/lit8 v0, p4, 0x2

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p3, v0

    .line 439
    add-int/lit8 v0, p4, 0x3

    const/16 v3, 0x18

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p3, v0

    .line 440
    add-int/lit8 v0, p4, 0x4

    const/16 v3, 0x20

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p3, v0

    .line 441
    add-int/lit8 v0, p4, 0x5

    const/16 v3, 0x28

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p3, v0

    .line 442
    add-int/lit8 v0, p4, 0x6

    const/16 v3, 0x30

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p3, v0

    .line 443
    add-int/lit8 p4, p4, 0x7

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    and-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, p3, p4

    .line 444
    return-void
.end method

.method private a(Lcom/umeng/analytics/pro/bk;B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 218
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    iget-byte p2, p1, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/bj;->e(B)B

    move-result p2

    .line 221
    :cond_9
    iget-short v0, p1, Lcom/umeng/analytics/pro/bk;->c:S

    iget-short v1, p0, Lcom/umeng/analytics/pro/bj;->n:S

    if-le v0, v1, :cond_24

    iget-short v0, p1, Lcom/umeng/analytics/pro/bk;->c:S

    iget-short v1, p0, Lcom/umeng/analytics/pro/bj;->n:S

    sub-int/2addr v0, v1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_24

    .line 223
    iget-short v0, p1, Lcom/umeng/analytics/pro/bk;->c:S

    iget-short v1, p0, Lcom/umeng/analytics/pro/bj;->n:S

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/bj;->d(I)V

    goto :goto_2c

    .line 226
    :cond_24
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/bj;->b(B)V

    .line 227
    iget-short p2, p1, Lcom/umeng/analytics/pro/bk;->c:S

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/bj;->a(S)V

    .line 230
    :goto_2c
    iget-short p1, p1, Lcom/umeng/analytics/pro/bk;->c:S

    iput-short p1, p0, Lcom/umeng/analytics/pro/bj;->n:S

    .line 232
    return-void
.end method

.method private a([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 343
    invoke-direct {p0, p3}, Lcom/umeng/analytics/pro/bj;->b(I)V

    .line 344
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/analytics/pro/cd;->b([BII)V

    .line 345
    return-void
.end method

.method private b(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->r:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 453
    iget-object p1, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->r:[B

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/cd;->b([B)V

    .line 454
    return-void
.end method

.method private b(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 383
    :goto_2
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_16

    .line 384
    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->a:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    .line 386
    nop

    .line 394
    iget-object p1, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    iget-object v1, p0, Lcom/umeng/analytics/pro/bj;->a:[B

    invoke-virtual {p1, v1, v0, v3}, Lcom/umeng/analytics/pro/cd;->b([BII)V

    .line 395
    return-void

    .line 389
    :cond_16
    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->a:[B

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 391
    ushr-int/lit8 p1, p1, 0x7

    move v1, v3

    goto :goto_2
.end method

.method private b(J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 402
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 404
    :goto_2
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1c

    .line 405
    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->b:[B

    add-int/lit8 v3, v1, 0x1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v2, v1

    .line 406
    nop

    .line 412
    iget-object p1, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    iget-object p2, p0, Lcom/umeng/analytics/pro/bj;->b:[B

    invoke-virtual {p1, p2, v0, v3}, Lcom/umeng/analytics/pro/cd;->b([BII)V

    .line 413
    return-void

    .line 408
    :cond_1c
    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->b:[B

    add-int/lit8 v3, v1, 0x1

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v2, v1

    .line 409
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    move v1, v3

    goto :goto_2
.end method

.method private c(I)I
    .registers 3

    .line 428
    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    return p1
.end method

.method private c(J)J
    .registers 6

    .line 420
    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private c(B)Z
    .registers 4

    .line 810
    and-int/lit8 p1, p1, 0xf

    .line 811
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method private d(B)B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bq;
        }
    .end annotation

    .line 819
    const/16 v0, 0xf

    and-int/2addr p1, v0

    int-to-byte p1, p1

    packed-switch p1, :pswitch_data_3e

    .line 846
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t know what type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :pswitch_20
    const/16 p1, 0xc

    return p1

    .line 842
    :pswitch_23
    const/16 p1, 0xd

    return p1

    .line 840
    :pswitch_26
    const/16 p1, 0xe

    return p1

    .line 838
    :pswitch_29
    return v0

    .line 836
    :pswitch_2a
    const/16 p1, 0xb

    return p1

    .line 834
    :pswitch_2d
    const/4 p1, 0x4

    return p1

    .line 832
    :pswitch_2f
    const/16 p1, 0xa

    return p1

    .line 830
    :pswitch_32
    const/16 p1, 0x8

    return p1

    .line 828
    :pswitch_35
    const/4 p1, 0x6

    return p1

    .line 826
    :pswitch_37
    const/4 p1, 0x3

    return p1

    .line 824
    :pswitch_39
    const/4 p1, 0x2

    return p1

    .line 821
    :pswitch_3b
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_39
        :pswitch_39
        :pswitch_37
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2d
        :pswitch_2a
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method private d(J)J
    .registers 7

    .line 785
    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long/2addr p1, v2

    neg-long p1, p1

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private d(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 460
    int-to-byte p1, p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->b(B)V

    .line 461
    return-void
.end method

.method private e(B)B
    .registers 3

    .line 854
    sget-object v0, Lcom/umeng/analytics/pro/bj;->f:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method private e(I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 680
    const/4 v0, 0x0

    if-nez p1, :cond_6

    new-array p1, v0, [B

    return-object p1

    .line 682
    :cond_6
    new-array v1, p1, [B

    .line 683
    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v2, v1, v0, p1}, Lcom/umeng/analytics/pro/cd;->d([BII)I

    .line 684
    return-object v1
.end method

.method private f(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bq;
        }
    .end annotation

    .line 688
    if-ltz p1, :cond_2a

    .line 691
    iget-wide v0, p0, Lcom/umeng/analytics/pro/bj;->q:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    int-to-long v2, p1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_10

    goto :goto_29

    .line 692
    :cond_10
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length exceeded max allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_29
    :goto_29
    return-void

    .line 689
    :cond_2a
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(I)I
    .registers 3

    .line 778
    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public A()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 667
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj;->E()I

    move-result v0

    .line 668
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->f(I)V

    .line 669
    const/4 v1, 0x0

    if-nez v0, :cond_11

    new-array v0, v1, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 671
    :cond_11
    new-array v2, v0, [B

    .line 672
    iget-object v3, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v3, v2, v1, v0}, Lcom/umeng/analytics/pro/cd;->d([BII)I

    .line 673
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public B()V
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->m:Lcom/umeng/analytics/pro/ao;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ao;->c()V

    .line 157
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/umeng/analytics/pro/bj;->n:S

    .line 158
    return-void
.end method

.method public a()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 352
    return-void
.end method

.method public a(B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->b(B)V

    .line 290
    return-void
.end method

.method protected a(BI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 367
    const/16 v0, 0xe

    if-gt p2, v0, :cond_f

    .line 368
    shl-int/lit8 p2, p2, 0x4

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->e(B)B

    move-result p1

    or-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->d(I)V

    goto :goto_1b

    .line 370
    :cond_f
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->e(B)B

    move-result p1

    or-int/lit16 p1, p1, 0xf0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->d(I)V

    .line 371
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/bj;->b(I)V

    .line 373
    :goto_1b
    return-void
.end method

.method public a(D)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 317
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 318
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/umeng/analytics/pro/bj;->a(J[BI)V

    .line 319
    iget-object p1, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/cd;->b([B)V

    .line 320
    return-void

    nop

    :array_16
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public a(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->c(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->b(I)V

    .line 304
    return-void
.end method

.method public a(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/bj;->c(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/bj;->b(J)V

    .line 311
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 201
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bk;->b:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 203
    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->o:Lcom/umeng/analytics/pro/bk;

    goto :goto_c

    .line 205
    :cond_8
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/bj;->a(Lcom/umeng/analytics/pro/bk;B)V

    .line 207
    :goto_c
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 258
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bl;->a:B

    iget p1, p1, Lcom/umeng/analytics/pro/bl;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/umeng/analytics/pro/bj;->a(BI)V

    .line 259
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 246
    iget v0, p1, Lcom/umeng/analytics/pro/bm;->c:I

    if-nez v0, :cond_9

    .line 247
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->d(I)V

    goto :goto_20

    .line 249
    :cond_9
    iget v0, p1, Lcom/umeng/analytics/pro/bm;->c:I

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->b(I)V

    .line 250
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bm;->a:B

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->e(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    iget-byte p1, p1, Lcom/umeng/analytics/pro/bm;->b:B

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->e(B)B

    move-result p1

    or-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->d(I)V

    .line 252
    :goto_20
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bn;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 169
    const/16 v0, -0x7e

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->b(B)V

    .line 170
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bn;->b:B

    shl-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, -0x20

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->d(I)V

    .line 171
    iget v0, p1, Lcom/umeng/analytics/pro/bn;->c:I

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->b(I)V

    .line 172
    iget-object p1, p1, Lcom/umeng/analytics/pro/bn;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bj;->a(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bt;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 265
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bt;->a:B

    iget p1, p1, Lcom/umeng/analytics/pro/bt;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/umeng/analytics/pro/bj;->a(BI)V

    .line 266
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 181
    iget-object p1, p0, Lcom/umeng/analytics/pro/bj;->m:Lcom/umeng/analytics/pro/ao;

    iget-short v0, p0, Lcom/umeng/analytics/pro/bj;->n:S

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ao;->a(S)V

    .line 182
    const/4 p1, 0x0

    iput-short p1, p0, Lcom/umeng/analytics/pro/bj;->n:S

    .line 183
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 327
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 328
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/bj;->a([BII)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_d

    .line 331
    nop

    .line 332
    return-void

    .line 329
    :catch_d
    move-exception p1

    .line 330
    new-instance p1, Lcom/umeng/analytics/pro/aw;

    const-string v0, "UTF-8 not supported!"

    invoke-direct {p1, v0}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 339
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr v2, p1

    invoke-direct {p0, v1, v2, v0}, Lcom/umeng/analytics/pro/bj;->a([BII)V

    .line 340
    return-void
.end method

.method public a(S)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->c(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;->b(I)V

    .line 297
    return-void
.end method

.method public a(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->o:Lcom/umeng/analytics/pro/bk;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_11

    .line 277
    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x2

    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/bj;->a(Lcom/umeng/analytics/pro/bk;B)V

    .line 278
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->o:Lcom/umeng/analytics/pro/bk;

    goto :goto_18

    .line 281
    :cond_11
    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x2

    :goto_15
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/bj;->b(B)V

    .line 283
    :goto_18
    return-void
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->m:Lcom/umeng/analytics/pro/ao;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ao;->a()S

    move-result v0

    iput-short v0, p0, Lcom/umeng/analytics/pro/bj;->n:S

    .line 192
    return-void
.end method

.method public c()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 356
    return-void
.end method

.method public d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->b(B)V

    .line 239
    return-void
.end method

.method public e()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 353
    return-void
.end method

.method public f()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 354
    return-void
.end method

.method public g()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 355
    return-void
.end method

.method public h()Lcom/umeng/analytics/pro/bn;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->u()B

    move-result v0

    .line 473
    const/16 v1, -0x7e

    if-ne v0, v1, :cond_3e

    .line 476
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->u()B

    move-result v0

    .line 477
    and-int/lit8 v1, v0, 0x1f

    int-to-byte v1, v1

    .line 478
    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 481
    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    .line 482
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj;->E()I

    move-result v1

    .line 483
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->z()Ljava/lang/String;

    move-result-object v2

    .line 484
    new-instance v3, Lcom/umeng/analytics/pro/bn;

    invoke-direct {v3, v2, v0, v1}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BI)V

    return-object v3

    .line 479
    :cond_25
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected version 1 but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_3e
    new-instance v2, Lcom/umeng/analytics/pro/bq;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected protocol id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public i()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 700
    return-void
.end method

.method public j()Lcom/umeng/analytics/pro/bu;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->m:Lcom/umeng/analytics/pro/ao;

    iget-short v1, p0, Lcom/umeng/analytics/pro/bj;->n:S

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/ao;->a(S)V

    .line 493
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/umeng/analytics/pro/bj;->n:S

    .line 494
    sget-object v0, Lcom/umeng/analytics/pro/bj;->d:Lcom/umeng/analytics/pro/bu;

    return-object v0
.end method

.method public k()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->m:Lcom/umeng/analytics/pro/ao;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ao;->a()S

    move-result v0

    iput-short v0, p0, Lcom/umeng/analytics/pro/bj;->n:S

    .line 504
    return-void
.end method

.method public l()Lcom/umeng/analytics/pro/bk;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->u()B

    move-result v0

    .line 513
    if-nez v0, :cond_9

    .line 514
    sget-object v0, Lcom/umeng/analytics/pro/bj;->e:Lcom/umeng/analytics/pro/bk;

    return-object v0

    .line 520
    :cond_9
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    .line 521
    if-nez v1, :cond_15

    .line 523
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->v()S

    move-result v1

    goto :goto_19

    .line 526
    :cond_15
    iget-short v2, p0, Lcom/umeng/analytics/pro/bj;->n:S

    add-int/2addr v2, v1

    int-to-short v1, v2

    .line 529
    :goto_19
    new-instance v2, Lcom/umeng/analytics/pro/bk;

    and-int/lit8 v3, v0, 0xf

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/bj;->d(B)B

    move-result v4

    const-string v5, ""

    invoke-direct {v2, v5, v4, v1}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    .line 532
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->c(B)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 534
    const/4 v0, 0x1

    if-ne v3, v0, :cond_33

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_35

    :cond_33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_35
    iput-object v0, p0, Lcom/umeng/analytics/pro/bj;->p:Ljava/lang/Boolean;

    .line 538
    :cond_37
    iget-short v0, v2, Lcom/umeng/analytics/pro/bk;->c:S

    iput-short v0, p0, Lcom/umeng/analytics/pro/bj;->n:S

    .line 539
    return-object v2
.end method

.method public m()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 701
    return-void
.end method

.method public n()Lcom/umeng/analytics/pro/bm;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 548
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj;->E()I

    move-result v0

    .line 549
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->u()B

    move-result v1

    .line 550
    :goto_c
    new-instance v2, Lcom/umeng/analytics/pro/bm;

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/bj;->d(B)B

    move-result v3

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/bj;->d(B)B

    move-result v1

    invoke-direct {v2, v3, v1, v0}, Lcom/umeng/analytics/pro/bm;-><init>(BBI)V

    return-object v2
.end method

.method public o()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 702
    return-void
.end method

.method public p()Lcom/umeng/analytics/pro/bl;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->u()B

    move-result v0

    .line 561
    shr-int/lit8 v1, v0, 0x4

    const/16 v2, 0xf

    and-int/2addr v1, v2

    .line 562
    if-ne v1, v2, :cond_f

    .line 563
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj;->E()I

    move-result v1

    .line 565
    :cond_f
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->d(B)B

    move-result v0

    .line 566
    new-instance v2, Lcom/umeng/analytics/pro/bl;

    invoke-direct {v2, v0, v1}, Lcom/umeng/analytics/pro/bl;-><init>(BI)V

    return-object v2
.end method

.method public q()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 703
    return-void
.end method

.method public r()Lcom/umeng/analytics/pro/bt;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 576
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->p()Lcom/umeng/analytics/pro/bl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bt;-><init>(Lcom/umeng/analytics/pro/bl;)V

    return-object v0
.end method

.method public s()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 704
    return-void
.end method

.method public t()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 586
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 587
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/analytics/pro/bj;->p:Ljava/lang/Boolean;

    .line 588
    return v0

    .line 590
    :cond_c
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bj;->u()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public u()B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cd;->h()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1d

    .line 600
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cd;->f()[B

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/cd;->g()I

    move-result v2

    aget-byte v0, v0, v2

    .line 601
    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v2, v1}, Lcom/umeng/analytics/pro/cd;->a(I)V

    goto :goto_29

    .line 603
    :cond_1d
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->c:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/umeng/analytics/pro/cd;->d([BII)I

    .line 604
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->c:[B

    aget-byte v0, v0, v3

    .line 606
    :goto_29
    return v0
.end method

.method public v()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->g(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public w()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 620
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->g(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 627
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj;->F()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/bj;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 634
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 635
    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/umeng/analytics/pro/cd;->d([BII)I

    .line 636
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/bj;->a([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 643
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bj;->E()I

    move-result v0

    .line 644
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->f(I)V

    .line 646
    if-nez v0, :cond_c

    .line 647
    const-string v0, ""

    return-object v0

    .line 651
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cd;->h()I

    move-result v1
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_12} :catch_37

    const-string v2, "UTF-8"

    if-lt v1, v0, :cond_2d

    .line 652
    :try_start_16
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/cd;->f()[B

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/cd;->g()I

    move-result v4

    invoke-direct {v1, v3, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/umeng/analytics/pro/bj;->g:Lcom/umeng/analytics/pro/cd;

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/pro/cd;->a(I)V

    .line 654
    return-object v1

    .line 656
    :cond_2d
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bj;->e(I)[B

    move-result-object v0

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_36} :catch_37

    return-object v1

    .line 658
    :catch_37
    move-exception v0

    .line 659
    new-instance v0, Lcom/umeng/analytics/pro/aw;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    throw v0
.end method
