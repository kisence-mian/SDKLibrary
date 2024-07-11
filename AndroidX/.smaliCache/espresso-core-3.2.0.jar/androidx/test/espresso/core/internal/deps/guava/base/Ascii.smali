.class public final Landroidx/test/espresso/core/internal/deps/guava/base/Ascii;
.super Ljava/lang/Object;
.source "Ascii.java"


# direct methods
.method public static isUpperCase(C)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 514
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 408
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2f

    .line 409
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Ascii;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 411
    :goto_15
    if-ge v1, v0, :cond_27

    .line 412
    aget-char v2, p0, v1

    .line 413
    invoke-static {v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Ascii;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 414
    xor-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, p0, v1

    .line 411
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 417
    :cond_27
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 408
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 420
    :cond_2f
    return-object p0
.end method
