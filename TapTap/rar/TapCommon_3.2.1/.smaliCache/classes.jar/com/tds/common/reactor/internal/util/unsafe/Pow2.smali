.class public final Lcom/tds/common/reactor/internal/util/unsafe/Pow2;
.super Ljava/lang/Object;
.source "Pow2.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isPowerOfTwo(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 42
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static roundToPowerOfTwo(I)I
    .registers 3
    .param p0, "value"    # I

    .line 32
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method
