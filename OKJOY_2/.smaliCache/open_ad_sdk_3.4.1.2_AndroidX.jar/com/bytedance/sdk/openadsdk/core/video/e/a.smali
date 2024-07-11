.class public Lcom/bytedance/sdk/openadsdk/core/video/e/a;
.super Ljava/lang/Object;
.source "MediaHelper.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a:I

    return-void
.end method

.method public static a(JJ)I
    .registers 8

    .line 12
    nop

    .line 13
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_13

    .line 14
    long-to-double p0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p0, v2

    long-to-double p2, p2

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, p2

    double-to-int p0, p0

    goto :goto_14

    .line 13
    :cond_13
    move p0, v1

    .line 16
    :goto_14
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p1, 0x64

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 17
    return p0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 11

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-wide/32 v1, 0xea60

    div-long v3, p0, v1

    .line 24
    const-wide/32 v5, 0x36ee80

    rem-long/2addr p0, v5

    rem-long/2addr p0, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    .line 26
    const-wide/16 v1, 0xa

    cmp-long v5, v3, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-ltz v5, :cond_1f

    .line 27
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 28
    :cond_1f
    cmp-long v5, v3, v6

    if-lez v5, :cond_2a

    .line 29
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 32
    :cond_2a
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    :goto_30
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    cmp-long v1, p0, v1

    if-ltz v1, :cond_3d

    .line 38
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 39
    :cond_3d
    cmp-long v1, p0, v6

    if-lez v1, :cond_48

    .line 40
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 43
    :cond_48
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;Z)V
    .registers 3

    .line 51
    if-nez p0, :cond_3

    .line 52
    return-void

    .line 54
    :cond_3
    if-eqz p1, :cond_a

    .line 55
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_23

    .line 57
    :cond_a
    sget p1, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_16

    .line 58
    const/16 p1, 0xf06

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_23

    .line 64
    :cond_16
    const/16 v0, 0x10

    if-lt p1, v0, :cond_1f

    .line 65
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_23

    .line 68
    :cond_1f
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 71
    :goto_23
    return-void
.end method
