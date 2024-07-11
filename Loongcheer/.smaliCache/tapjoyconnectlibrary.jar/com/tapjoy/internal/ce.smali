.class public final Lcom/tapjoy/internal/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/ce;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;[CII)Z
    .registers 8

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_8

    .line 31
    return v1

    .line 33
    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_19

    .line 34
    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_16

    .line 35
    return v1

    .line 33
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 38
    :cond_19
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a([CII)Ljava/lang/String;
    .registers 7

    .line 46
    nop

    .line 47
    const/4 v0, 0x0

    move v1, p2

    :goto_3
    add-int v2, p2, p3

    if-ge v1, v2, :cond_f

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    aget-char v2, p1, v1

    add-int/2addr v0, v2

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 52
    :cond_f
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 53
    ushr-int/lit8 v1, v0, 0x7

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 54
    iget-object v1, p0, Lcom/tapjoy/internal/ce;->a:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 56
    aget-object v1, v1, v0

    .line 57
    if-eqz v1, :cond_2c

    invoke-static {v1, p1, p2, p3}, Lcom/tapjoy/internal/ce;->a(Ljava/lang/String;[CII)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 58
    return-object v1

    .line 61
    :cond_2c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 62
    iget-object p1, p0, Lcom/tapjoy/internal/ce;->a:[Ljava/lang/String;

    aput-object v1, p1, v0

    .line 63
    return-object v1
.end method
