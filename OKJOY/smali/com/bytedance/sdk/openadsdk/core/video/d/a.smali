.class public Lcom/bytedance/sdk/openadsdk/core/video/d/a;
.super Ljava/lang/Object;
.source "MediaHelper.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:I

    return-void
.end method

.method public static a(JJ)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_1c

    .line 14
    long-to-double v2, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    long-to-double v4, p2

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 16
    :goto_11
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 17
    return v0

    :cond_1c
    move v0, v1

    goto :goto_11
.end method

.method public static a(J)Ljava/lang/String;
    .registers 16

    .prologue
    const-wide/32 v6, 0xea60

    const-wide/16 v12, 0xa

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    div-long v2, p0, v6

    .line 24
    const-wide/32 v4, 0x36ee80

    rem-long v4, p0, v4

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 26
    cmp-long v1, v2, v12

    if-ltz v1, :cond_30

    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    :goto_1f
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    cmp-long v1, v4, v12

    if-ltz v1, :cond_42

    .line 38
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    :goto_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :cond_30
    cmp-long v1, v2, v10

    if-lez v1, :cond_3b

    .line 29
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 32
    :cond_3b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 39
    :cond_42
    cmp-long v1, v4, v10

    if-lez v1, :cond_4d

    .line 40
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 43
    :cond_4d
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2b
.end method

.method public static a(Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 51
    if-nez p0, :cond_3

    .line 71
    :goto_2
    return-void

    .line 54
    :cond_3
    if-eqz p1, :cond_a

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 57
    :cond_a
    sget v0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_16

    .line 58
    const/16 v0, 0xf06

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 64
    :cond_16
    sget v0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_21

    .line 65
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 68
    :cond_21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2
.end method
