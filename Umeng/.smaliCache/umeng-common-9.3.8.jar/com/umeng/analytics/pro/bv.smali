.class public final Lcom/umeng/analytics/pro/bv;
.super Lcom/umeng/analytics/pro/bj;
.source "TTupleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/bv$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/cd;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bj;-><init>(Lcom/umeng/analytics/pro/cd;)V

    .line 41
    return-void
.end method

.method public static a([B)Ljava/util/BitSet;
    .registers 6

    .line 71
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 72
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_1f

    .line 73
    array-length v2, p0

    div-int/lit8 v3, v1, 0x8

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    rem-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-lez v2, :cond_1c

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 72
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 77
    :cond_1f
    return-object v0
.end method

.method public static b(Ljava/util/BitSet;I)[B
    .registers 8

    .line 92
    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-array v0, p1, [B

    .line 93
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 94
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 95
    div-int/lit8 v2, v1, 0x8

    sub-int v2, p1, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v4, v0, v2

    rem-int/lit8 v5, v1, 0x8

    shl-int/2addr v3, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 93
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 98
    :cond_2d
    return-object v0
.end method


# virtual methods
.method public D()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/bx;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/umeng/analytics/pro/ca;

    return-object v0
.end method

.method public a(Ljava/util/BitSet;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 50
    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/bv;->b(Ljava/util/BitSet;I)[B

    move-result-object p1

    .line 51
    array-length p2, p1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_10

    aget-byte v1, p1, v0

    .line 52
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/bv;->a(B)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 54
    :cond_10
    return-void
.end method

.method public b(I)Ljava/util/BitSet;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 57
    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 58
    new-array v0, p1, [B

    .line 59
    const/4 v1, 0x0

    :goto_f
    if-ge v1, p1, :cond_1a

    .line 60
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bv;->u()B

    move-result v2

    aput-byte v2, v0, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 62
    :cond_1a
    invoke-static {v0}, Lcom/umeng/analytics/pro/bv;->a([B)Ljava/util/BitSet;

    move-result-object p1

    .line 63
    return-object p1
.end method
