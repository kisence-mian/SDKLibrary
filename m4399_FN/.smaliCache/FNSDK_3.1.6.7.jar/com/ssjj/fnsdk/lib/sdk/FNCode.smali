.class public Lcom/ssjj/fnsdk/lib/sdk/FNCode;
.super Ljava/lang/Object;


# static fields
.field public static final CANCEL:I = -0x2

.field public static final FAIL:I = -0x1

.field public static final SUCC:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCancel(I)Z
    .registers 2

    const/4 v0, -0x2

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isFail(I)Z
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isSucc(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
