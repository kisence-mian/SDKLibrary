.class public Lcom/ss/android/socialbase/downloader/b/f;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# direct methods
.method public static a(I)Z
    .registers 2

    .prologue
    .line 31
    if-gez p0, :cond_a

    const/4 v0, -0x2

    if-eq p0, v0, :cond_a

    const/4 v0, -0x5

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(I)Z
    .registers 2

    .prologue
    .line 35
    if-lez p0, :cond_b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_b

    const/16 v0, 0x8

    if-eq p0, v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static c(I)Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, -0x3

    if-eq p0, v0, :cond_f

    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    const/4 v0, -0x4

    if-eq p0, v0, :cond_f

    const/4 v0, -0x2

    if-ne p0, v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static d(I)Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, -0x3

    if-eq p0, v0, :cond_9

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 v0, -0x4

    if-ne p0, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static e(I)Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, -0x3

    if-eq p0, v0, :cond_16

    const/4 v0, -0x1

    if-eq p0, v0, :cond_16

    const/4 v0, -0x4

    if-eq p0, v0, :cond_16

    const/4 v0, -0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    const/4 v0, 0x7

    if-eq p0, v0, :cond_16

    const/16 v0, 0x8

    if-ne p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static f(I)Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    const/4 v0, -0x2

    if-eq p0, v0, :cond_f

    const/4 v0, -0x7

    if-eq p0, v0, :cond_f

    const/4 v0, -0x4

    if-eq p0, v0, :cond_f

    const/4 v0, -0x5

    if-ne p0, v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static g(I)Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    const/4 v0, -0x7

    if-ne p0, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
