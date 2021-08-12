.class public Lcom/bytedance/sdk/openadsdk/core/y;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"


# direct methods
.method private static a(Landroid/content/Context;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 64
    if-eqz p0, :cond_f

    .line 65
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    return p0

    .line 67
    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/view/View;)Z
    .registers 1

    .line 77
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static a(Landroid/view/View;I)Z
    .registers 10

    .line 33
    const/4 v0, 0x0

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_43

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_43

    .line 37
    :cond_10
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 41
    return v0

    .line 44
    :cond_1c
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-long v2, v2

    .line 45
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-long v6, p0

    mul-long/2addr v4, v6

    .line 48
    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-lez p0, :cond_42

    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    int-to-long p0, p1

    mul-long/2addr p0, v4

    cmp-long p0, v2, p0

    if-ltz p0, :cond_42

    const/4 v0, 0x1

    :cond_42
    return v0

    .line 35
    :cond_43
    :goto_43
    return v0
.end method

.method public static a(Landroid/view/View;II)Z
    .registers 4

    .line 130
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Landroid/view/View;II)I

    move-result p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    if-nez p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    .line 131
    :catchall_9
    move-exception p0

    .line 132
    return v0
.end method

.method private static b(Landroid/view/View;II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 115
    nop

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 117
    const/4 p0, 0x4

    goto :goto_26

    .line 118
    :cond_d
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 119
    const/4 p0, 0x1

    goto :goto_26

    .line 120
    :cond_15
    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 121
    const/4 p0, 0x6

    goto :goto_26

    .line 122
    :cond_1d
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;I)Z

    move-result p0

    if-nez p0, :cond_25

    .line 123
    const/4 p0, 0x3

    goto :goto_26

    .line 122
    :cond_25
    const/4 p0, 0x0

    .line 125
    :goto_26
    return p0
.end method

.method private static b(Landroid/view/View;I)Z
    .registers 4

    .line 81
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/y;->c(Landroid/view/View;I)I

    move-result v0

    .line 82
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/y;->d(Landroid/view/View;I)I

    move-result p1

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lt v1, v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lt p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private static c(Landroid/view/View;I)I
    .registers 4

    .line 94
    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fe6666666666666L    # 0.7

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    .line 97
    :cond_18
    const/16 p0, 0x14

    return p0
.end method

.method private static d(Landroid/view/View;I)I
    .registers 3

    .line 107
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/content/Context;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 110
    :cond_12
    const/16 p0, 0x14

    return p0
.end method
