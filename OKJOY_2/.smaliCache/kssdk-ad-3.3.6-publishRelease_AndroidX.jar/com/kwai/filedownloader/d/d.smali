.class public Lcom/kwai/filedownloader/d/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Z
    .registers 1

    if-gez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static a(II)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_a

    const/4 v1, 0x5

    if-eq p0, v1, :cond_a

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    invoke-static {p0}, Lcom/kwai/filedownloader/d/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    const/4 v1, 0x1

    if-lt p0, v1, :cond_20

    const/4 v2, 0x6

    if-gt p0, v2, :cond_20

    const/16 v2, 0xa

    if-lt p1, v2, :cond_20

    const/16 v2, 0xb

    if-gt p1, v2, :cond_20

    return v0

    :cond_20
    packed-switch p0, :pswitch_data_3e

    :pswitch_23
    return v1

    :pswitch_24
    packed-switch p1, :pswitch_data_4e

    return v1

    :pswitch_28
    return v0

    :pswitch_29
    sparse-switch p1, :sswitch_data_56

    return v1

    :sswitch_2d
    return v0

    :pswitch_2e
    packed-switch p1, :pswitch_data_60

    :pswitch_31
    return v1

    :pswitch_32
    return v0

    :pswitch_33
    sparse-switch p1, :sswitch_data_72

    return v1

    :sswitch_37
    return v0

    :pswitch_38
    packed-switch p1, :pswitch_data_80

    return v1

    :pswitch_3c
    return v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_23
        :pswitch_29
        :pswitch_24
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_2d
        0x6 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_32
    .end packed-switch

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_37
        0x1 -> :sswitch_37
        0x6 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_3c
    .end packed-switch
.end method

.method public static a(Lcom/kwai/filedownloader/a;)Z
    .registers 2

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->v()B

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->v()B

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static b(I)Z
    .registers 1

    if-lez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static b(II)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_a

    const/4 v1, 0x5

    if-eq p0, v1, :cond_a

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    invoke-static {p0}, Lcom/kwai/filedownloader/d/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    const/4 v1, -0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_16

    return v2

    :cond_16
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1a

    return v2

    :cond_1a
    packed-switch p0, :pswitch_data_3c

    :pswitch_1d
    return v0

    :pswitch_1e
    sparse-switch p1, :sswitch_data_58

    return v0

    :sswitch_22
    return v2

    :pswitch_23
    packed-switch p1, :pswitch_data_66

    return v0

    :pswitch_27
    return v2

    :pswitch_28
    sparse-switch p1, :sswitch_data_6c

    return v0

    :sswitch_2c
    return v2

    :pswitch_2d
    sparse-switch p1, :sswitch_data_76

    return v0

    :sswitch_31
    return v2

    :pswitch_32
    packed-switch p1, :pswitch_data_84

    return v0

    :pswitch_36
    return v2

    :pswitch_37
    packed-switch p1, :pswitch_data_8a

    return v0

    :pswitch_3b
    return v2

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_2d
        :pswitch_1d
        :pswitch_28
        :pswitch_28
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_23
        :pswitch_1e
    .end packed-switch

    :sswitch_data_58
    .sparse-switch
        -0x4 -> :sswitch_22
        -0x3 -> :sswitch_22
        0x1 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0xb
        :pswitch_27
    .end packed-switch

    :sswitch_data_6c
    .sparse-switch
        0x2 -> :sswitch_2c
        0x5 -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_76
    .sparse-switch
        -0x3 -> :sswitch_31
        0x3 -> :sswitch_31
        0x5 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x6
        :pswitch_36
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0xa
        :pswitch_3b
    .end packed-switch
.end method
