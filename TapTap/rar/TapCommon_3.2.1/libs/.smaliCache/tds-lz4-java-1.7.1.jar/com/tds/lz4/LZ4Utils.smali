.class final enum Lcom/tds/lz4/LZ4Utils;
.super Ljava/lang/Enum;
.source "LZ4Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/lz4/LZ4Utils$Match;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/lz4/LZ4Utils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/lz4/LZ4Utils;

.field private static final MAX_INPUT_SIZE:I = 0x7e000000


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/lz4/LZ4Utils;

    sput-object v0, Lcom/tds/lz4/LZ4Utils;->$VALUES:[Lcom/tds/lz4/LZ4Utils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method static copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V
    .registers 3
    .param p0, "m1"    # Lcom/tds/lz4/LZ4Utils$Match;
    .param p1, "m2"    # Lcom/tds/lz4/LZ4Utils$Match;

    .line 68
    iget v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    iput v0, p1, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 69
    iget v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iput v0, p1, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    .line 70
    iget v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iput v0, p1, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    .line 71
    return-void
.end method

.method static hash(I)I
    .registers 2
    .param p0, "i"    # I

    .line 42
    const v0, -0x61c8864f

    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method static hash64k(I)I
    .registers 2
    .param p0, "i"    # I

    .line 46
    const v0, -0x61c8864f

    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x13

    return v0
.end method

.method static hashHC(I)I
    .registers 2
    .param p0, "i"    # I

    .line 50
    const v0, -0x61c8864f

    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x11

    return v0
.end method

.method static maxCompressedLength(I)I
    .registers 4
    .param p0, "length"    # I

    .line 33
    if-ltz p0, :cond_14

    .line 35
    const/high16 v0, 0x7e000000

    if-ge p0, v0, :cond_c

    .line 38
    div-int/lit16 v0, p0, 0xff

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x10

    return v0

    .line 36
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be < 2113929216"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be >= 0, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/lz4/LZ4Utils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/tds/lz4/LZ4Utils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/lz4/LZ4Utils;

    return-object v0
.end method

.method public static values()[Lcom/tds/lz4/LZ4Utils;
    .registers 1

    .line 27
    sget-object v0, Lcom/tds/lz4/LZ4Utils;->$VALUES:[Lcom/tds/lz4/LZ4Utils;

    invoke-virtual {v0}, [Lcom/tds/lz4/LZ4Utils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/lz4/LZ4Utils;

    return-object v0
.end method
