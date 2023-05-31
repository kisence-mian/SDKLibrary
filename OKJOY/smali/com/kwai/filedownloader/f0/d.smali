.class public Lcom/kwai/filedownloader/f0/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(I)Z
    .registers 2

    if-lez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(II)Z
    .registers 6

    const/4 v3, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_c

    const/4 v2, 0x5

    if-eq p0, v2, :cond_c

    if-ne p0, p1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcom/kwai/filedownloader/f0/d;->b(I)Z

    move-result v2

    if-nez v2, :cond_b

    if-lt p0, v1, :cond_1e

    if-gt p0, v3, :cond_1e

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1e

    const/16 v2, 0xb

    if-le p1, v2, :cond_b

    :cond_1e
    packed-switch p0, :pswitch_data_46

    :pswitch_21
    move v0, v1

    goto :goto_b

    :pswitch_23
    if-eqz p1, :cond_b

    if-eq p1, v1, :cond_b

    move v0, v1

    goto :goto_b

    :pswitch_29
    if-eq p1, v1, :cond_b

    if-eq p1, v3, :cond_b

    move v0, v1

    goto :goto_b

    :pswitch_2f
    if-eqz p1, :cond_b

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    if-eq p1, v3, :cond_b

    move v0, v1

    goto :goto_b

    :pswitch_3a
    if-eqz p1, :cond_b

    if-eq p1, v1, :cond_b

    if-eq p1, v3, :cond_b

    move v0, v1

    goto :goto_b

    :pswitch_42
    if-eqz p1, :cond_b

    move v0, v1

    goto :goto_b

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3a
        :pswitch_2f
        :pswitch_21
        :pswitch_29
        :pswitch_23
    .end packed-switch
.end method

.method public static a(Lcom/kwai/filedownloader/a;)Z
    .registers 3

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->i()B

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->i()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static b(I)Z
    .registers 2

    if-gez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static b(II)Z
    .registers 8

    const/4 v5, 0x3

    const/4 v4, -0x3

    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, v5, :cond_c

    if-eq p0, v3, :cond_c

    if-ne p0, p1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcom/kwai/filedownloader/f0/d;->b(I)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, -0x2

    if-ne p1, v2, :cond_17

    move v0, v1

    goto :goto_b

    :cond_17
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1c

    move v0, v1

    goto :goto_b

    :cond_1c
    packed-switch p0, :pswitch_data_4a

    :pswitch_1f
    goto :goto_b

    :pswitch_20
    const/16 v2, 0xa

    if-ne p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    :pswitch_26
    const/4 v2, -0x4

    if-eq p1, v2, :cond_2d

    if-eq p1, v4, :cond_2d

    if-ne p1, v1, :cond_b

    :cond_2d
    move v0, v1

    goto :goto_b

    :pswitch_2f
    const/16 v2, 0xb

    if-ne p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    :pswitch_35
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3a

    if-ne p1, v3, :cond_b

    :cond_3a
    move v0, v1

    goto :goto_b

    :pswitch_3c
    if-eq p1, v4, :cond_42

    if-eq p1, v5, :cond_42

    if-ne p1, v3, :cond_b

    :cond_42
    move v0, v1

    goto :goto_b

    :pswitch_44
    const/4 v2, 0x6

    if-ne p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_44
        :pswitch_3c
        :pswitch_3c
        :pswitch_1f
        :pswitch_35
        :pswitch_35
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_2f
        :pswitch_26
    .end packed-switch
.end method
