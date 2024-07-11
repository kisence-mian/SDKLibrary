.class public final Lcom/tencent/bugly/proguard/ad;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public static a(I)Lcom/tencent/bugly/proguard/ae;
    .registers 2

    .line 13
    nop

    .line 14
    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    .line 16
    new-instance p0, Lcom/tencent/bugly/proguard/ag;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ag;-><init>()V

    goto :goto_14

    .line 17
    :cond_a
    const/4 v0, 0x2

    if-ne p0, v0, :cond_13

    .line 19
    new-instance p0, Lcom/tencent/bugly/proguard/af;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/af;-><init>()V

    goto :goto_14

    .line 17
    :cond_13
    const/4 p0, 0x0

    .line 22
    :goto_14
    return-object p0
.end method
