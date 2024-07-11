.class public final Lcom/tapjoy/internal/em;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/iu;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/iu;)V
    .registers 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/iu;

    .line 191
    return-void
.end method

.method static a(I)I
    .registers 2

    .line 112
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 113
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 114
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    .line 115
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    .line 116
    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method static a(ILcom/tapjoy/internal/eh;)I
    .registers 2

    .line 63
    shl-int/lit8 p0, p0, 0x3

    iget p1, p1, Lcom/tapjoy/internal/eh;->e:I

    or-int/2addr p0, p1

    return p0
.end method

.method static a(J)I
    .registers 7

    .line 121
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    .line 122
    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    const/4 p0, 0x2

    return p0

    .line 123
    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 p0, 0x3

    return p0

    .line 124
    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_28

    const/4 p0, 0x4

    return p0

    .line 125
    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_34

    const/4 p0, 0x5

    return p0

    .line 126
    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_40

    const/4 p0, 0x6

    return p0

    .line 127
    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_49

    const/4 p0, 0x7

    return p0

    .line 128
    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_53

    const/16 p0, 0x8

    return p0

    .line 129
    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_5d

    const/16 p0, 0x9

    return p0

    .line 130
    :cond_5d
    const/16 p0, 0xa

    return p0
.end method

.method static b(I)I
    .registers 2

    .line 144
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method static b(J)J
    .registers 5

    .line 171
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/iw;)V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/iu;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/iu;->b(Lcom/tapjoy/internal/iw;)Lcom/tapjoy/internal/iu;

    .line 195
    return-void
.end method

.method public final c(I)V
    .registers 4

    .line 221
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_10

    .line 222
    iget-object v0, p0, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/iu;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/iu;->e(I)Lcom/tapjoy/internal/iu;

    .line 223
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 225
    :cond_10
    iget-object v0, p0, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/iu;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/iu;->e(I)Lcom/tapjoy/internal/iu;

    .line 226
    return-void
.end method

.method public final c(J)V
    .registers 8

    .line 230
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_16

    .line 231
    iget-object v0, p0, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/iu;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/iu;->e(I)Lcom/tapjoy/internal/iu;

    .line 232
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 234
    :cond_16
    iget-object v0, p0, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/iu;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Lcom/tapjoy/internal/iu;->e(I)Lcom/tapjoy/internal/iu;

    .line 235
    return-void
.end method

.method public final d(I)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/iu;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/iu;->d(I)Lcom/tapjoy/internal/iu;

    .line 240
    return-void
.end method

.method public final d(J)V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/iu;

    invoke-interface {v0, p1, p2}, Lcom/tapjoy/internal/iu;->f(J)Lcom/tapjoy/internal/iu;

    .line 245
    return-void
.end method
