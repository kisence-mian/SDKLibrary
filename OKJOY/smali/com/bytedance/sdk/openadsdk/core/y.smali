.class public Lcom/bytedance/sdk/openadsdk/core/y;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"


# direct methods
.method private static a(Landroid/content/Context;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 61
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 62
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isScreenOn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    :goto_17
    if-eqz v1, :cond_2a

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1f
    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 62
    :cond_28
    const/4 v1, 0x0

    goto :goto_17

    .line 63
    :cond_2a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1f
.end method

.method private static a(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 73
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static a(Landroid/view/View;I)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 33
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_10

    .line 48
    :cond_f
    :goto_f
    return v0

    .line 37
    :cond_10
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 44
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

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    .line 48
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_f

    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    int-to-long v6, p1

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static a(Landroid/view/View;II)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 126
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Landroid/view/View;II)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_9

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    .line 128
    :cond_8
    :goto_8
    return v0

    .line 127
    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method private static b(Landroid/view/View;II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 113
    const/4 v0, 0x4

    .line 121
    :cond_c
    :goto_c
    return v0

    .line 114
    :cond_d
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 115
    const/4 v0, 0x1

    goto :goto_c

    .line 116
    :cond_15
    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->b(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 117
    const/4 v0, 0x6

    goto :goto_c

    .line 118
    :cond_1d
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 119
    const/4 v0, 0x3

    goto :goto_c
.end method

.method private static b(Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/y;->c(Landroid/view/View;I)I

    move-result v0

    .line 78
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/y;->d(Landroid/view/View;I)I

    move-result v1

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lt v2, v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static c(Landroid/view/View;I)I
    .registers 6

    .prologue
    .line 90
    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 93
    :goto_17
    return v0

    :cond_18
    const/16 v0, 0x14

    goto :goto_17
.end method

.method private static d(Landroid/view/View;I)I
    .registers 3

    .prologue
    .line 103
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 106
    :goto_11
    return v0

    :cond_12
    const/16 v0, 0x14

    goto :goto_11
.end method
