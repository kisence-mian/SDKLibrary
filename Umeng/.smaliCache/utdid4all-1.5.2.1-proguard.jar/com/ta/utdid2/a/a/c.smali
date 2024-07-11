.class public Lcom/ta/utdid2/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getBytes(I)[B
    .registers 5
    .param p0, "i"    # I

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 7
    nop

    .line 8
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 9
    shr-int/lit8 v1, p0, 0x8

    .line 10
    rem-int/lit16 v2, v1, 0x100

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 11
    shr-int/lit8 v1, v1, 0x8

    .line 12
    rem-int/lit16 v2, v1, 0x100

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 13
    shr-int/lit8 v1, v1, 0x8

    .line 14
    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 15
    return-object v0
.end method
