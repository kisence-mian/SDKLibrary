.class final Lcom/tendcloud/tenddata/game/ca;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)I
    .registers 4

    .line 121
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "######0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 127
    goto :goto_16

    .line 124
    :catchall_10
    move-exception p0

    .line 125
    const/4 p1, 0x0

    .line 126
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 128
    :goto_16
    return p0
.end method

.method private static a([[D)I
    .registers 12

    .line 40
    const/4 v0, 0x4

    new-array v1, v0, [[D

    new-array v2, v0, [D

    const/4 v3, 0x0

    aget-object v4, p0, v3

    aget-wide v5, v4, v3

    aput-wide v5, v2, v3

    aget-object v4, p0, v3

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    aput-wide v6, v2, v5

    aget-object v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, v4, v6

    aput-wide v7, v2, v6

    aget-object v4, p0, v3

    const/4 v7, 0x3

    aget-wide v8, v4, v7

    aput-wide v8, v2, v7

    aput-object v2, v1, v3

    new-array v2, v0, [D

    aget-object v4, p0, v5

    aget-wide v8, v4, v3

    aput-wide v8, v2, v3

    aget-object v4, p0, v5

    aget-wide v8, v4, v5

    aput-wide v8, v2, v5

    aget-object v4, p0, v5

    aget-wide v8, v4, v6

    aput-wide v8, v2, v6

    aget-object v4, p0, v5

    aget-wide v8, v4, v7

    aput-wide v8, v2, v7

    aput-object v2, v1, v5

    new-array v2, v0, [D

    aget-object v4, p0, v6

    aget-wide v8, v4, v3

    aput-wide v8, v2, v3

    aget-object v4, p0, v6

    aget-wide v8, v4, v5

    aput-wide v8, v2, v5

    aget-object v4, p0, v6

    aget-wide v8, v4, v6

    aput-wide v8, v2, v6

    aget-object v4, p0, v6

    aget-wide v8, v4, v7

    aput-wide v8, v2, v7

    aput-object v2, v1, v6

    new-array v2, v0, [D

    aget-object v4, p0, v7

    aget-wide v8, v4, v3

    aput-wide v8, v2, v3

    aget-object v4, p0, v7

    aget-wide v8, v4, v5

    aput-wide v8, v2, v5

    aget-object v4, p0, v7

    aget-wide v8, v4, v6

    aput-wide v8, v2, v6

    aget-object v4, p0, v7

    aget-wide v8, v4, v7

    aput-wide v8, v2, v7

    aput-object v2, v1, v7

    .line 47
    new-array v2, v0, [[D

    new-array v4, v0, [D

    aget-object v8, p0, v3

    aget-wide v9, v8, v3

    aput-wide v9, v4, v3

    aget-object v8, p0, v3

    aget-wide v9, v8, v5

    aput-wide v9, v4, v5

    aget-object v8, p0, v3

    aget-wide v9, v8, v6

    aput-wide v9, v4, v6

    aget-object v8, p0, v3

    aget-wide v9, v8, v0

    aput-wide v9, v4, v7

    aput-object v4, v2, v3

    new-array v4, v0, [D

    aget-object v8, p0, v5

    aget-wide v9, v8, v3

    aput-wide v9, v4, v3

    aget-object v8, p0, v5

    aget-wide v9, v8, v5

    aput-wide v9, v4, v5

    aget-object v8, p0, v5

    aget-wide v9, v8, v6

    aput-wide v9, v4, v6

    aget-object v8, p0, v5

    aget-wide v9, v8, v0

    aput-wide v9, v4, v7

    aput-object v4, v2, v5

    new-array v4, v0, [D

    aget-object v8, p0, v6

    aget-wide v9, v8, v3

    aput-wide v9, v4, v3

    aget-object v8, p0, v6

    aget-wide v9, v8, v5

    aput-wide v9, v4, v5

    aget-object v8, p0, v6

    aget-wide v9, v8, v6

    aput-wide v9, v4, v6

    aget-object v8, p0, v6

    aget-wide v9, v8, v0

    aput-wide v9, v4, v7

    aput-object v4, v2, v6

    new-array v4, v0, [D

    aget-object v8, p0, v7

    aget-wide v9, v8, v3

    aput-wide v9, v4, v3

    aget-object v8, p0, v7

    aget-wide v9, v8, v5

    aput-wide v9, v4, v5

    aget-object v5, p0, v7

    aget-wide v8, v5, v6

    aput-wide v8, v4, v6

    aget-object p0, p0, v7

    aget-wide v5, p0, v0

    aput-wide v5, v4, v7

    aput-object v4, v2, v7

    .line 54
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ca;->b([[D)D

    move-result-wide v0

    .line 55
    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    if-nez p0, :cond_f4

    .line 59
    return v3

    .line 61
    :cond_f4
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ca;->b([[D)D

    move-result-wide v2

    .line 63
    div-double/2addr v2, v0

    .line 65
    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/ca;->a(D)I

    move-result p0

    return p0
.end method

.method static a([[I)I
    .registers 13

    .line 19
    const/4 v0, 0x0

    if-eqz p0, :cond_e8

    :try_start_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_9

    goto/16 :goto_e8

    .line 22
    :cond_9
    new-array v1, v2, [[D

    const/4 v3, 0x5

    new-array v4, v3, [D

    aget-object v5, p0, v0

    aget v5, v5, v0

    aget-object v6, p0, v0

    aget v6, v6, v0

    mul-int v5, v5, v6

    aget-object v6, p0, v0

    aget v6, v6, v0

    mul-int v5, v5, v6

    int-to-double v5, v5

    aput-wide v5, v4, v0

    aget-object v5, p0, v0

    aget v5, v5, v0

    aget-object v6, p0, v0

    aget v6, v6, v0

    mul-int v5, v5, v6

    int-to-double v5, v5

    const/4 v7, 0x1

    aput-wide v5, v4, v7

    aget-object v5, p0, v0

    aget v5, v5, v0

    int-to-double v5, v5

    const/4 v8, 0x2

    aput-wide v5, v4, v8

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x3

    aput-wide v5, v4, v9

    aget-object v10, p0, v0

    aget v10, v10, v7

    int-to-double v10, v10

    aput-wide v10, v4, v2

    aput-object v4, v1, v0

    new-array v4, v3, [D

    aget-object v10, p0, v7

    aget v10, v10, v0

    aget-object v11, p0, v7

    aget v11, v11, v0

    mul-int v10, v10, v11

    aget-object v11, p0, v7

    aget v11, v11, v0

    mul-int v10, v10, v11

    int-to-double v10, v10

    aput-wide v10, v4, v0

    aget-object v10, p0, v7

    aget v10, v10, v0

    aget-object v11, p0, v7

    aget v11, v11, v0

    mul-int v10, v10, v11

    int-to-double v10, v10

    aput-wide v10, v4, v7

    aget-object v10, p0, v7

    aget v10, v10, v0

    int-to-double v10, v10

    aput-wide v10, v4, v8

    aput-wide v5, v4, v9

    aget-object v10, p0, v7

    aget v10, v10, v7

    int-to-double v10, v10

    aput-wide v10, v4, v2

    aput-object v4, v1, v7

    new-array v4, v3, [D

    aget-object v10, p0, v8

    aget v10, v10, v0

    aget-object v11, p0, v8

    aget v11, v11, v0

    mul-int v10, v10, v11

    aget-object v11, p0, v8

    aget v11, v11, v0

    mul-int v10, v10, v11

    int-to-double v10, v10

    aput-wide v10, v4, v0

    aget-object v10, p0, v8

    aget v10, v10, v0

    aget-object v11, p0, v8

    aget v11, v11, v0

    mul-int v10, v10, v11

    int-to-double v10, v10

    aput-wide v10, v4, v7

    aget-object v10, p0, v8

    aget v10, v10, v0

    int-to-double v10, v10

    aput-wide v10, v4, v8

    aput-wide v5, v4, v9

    aget-object v10, p0, v8

    aget v10, v10, v7

    int-to-double v10, v10

    aput-wide v10, v4, v2

    aput-object v4, v1, v8

    new-array v3, v3, [D

    aget-object v4, p0, v9

    aget v4, v4, v0

    aget-object v10, p0, v9

    aget v10, v10, v0

    mul-int v4, v4, v10

    aget-object v10, p0, v9

    aget v10, v10, v0

    mul-int v4, v4, v10

    int-to-double v10, v4

    aput-wide v10, v3, v0

    aget-object v4, p0, v9

    aget v4, v4, v0

    aget-object v10, p0, v9

    aget v10, v10, v0

    mul-int v4, v4, v10

    int-to-double v10, v4

    aput-wide v10, v3, v7

    aget-object v4, p0, v9

    aget v4, v4, v0

    int-to-double v10, v4

    aput-wide v10, v3, v8

    aput-wide v5, v3, v9

    aget-object p0, p0, v9

    aget p0, p0, v7

    int-to-double v4, p0

    aput-wide v4, v3, v2

    aput-object v3, v1, v9

    .line 29
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ca;->a([[D)I

    move-result p0
    :try_end_e5
    .catchall {:try_start_3 .. :try_end_e5} :catchall_e6

    return p0

    .line 30
    :catchall_e6
    move-exception p0

    .line 35
    return v0

    .line 20
    :cond_e8
    :goto_e8
    return v0
.end method

.method private static b([[D)D
    .registers 17

    .line 77
    const/4 v0, 0x3

    new-array v1, v0, [[D

    new-array v2, v0, [D

    const/4 v3, 0x1

    aget-object v4, p0, v3

    aget-wide v5, v4, v3

    const/4 v4, 0x0

    aput-wide v5, v2, v4

    aget-object v5, p0, v3

    const/4 v6, 0x2

    aget-wide v7, v5, v6

    aput-wide v7, v2, v3

    aget-object v5, p0, v3

    aget-wide v7, v5, v0

    aput-wide v7, v2, v6

    aput-object v2, v1, v4

    new-array v2, v0, [D

    aget-object v5, p0, v6

    aget-wide v7, v5, v3

    aput-wide v7, v2, v4

    aget-object v5, p0, v6

    aget-wide v7, v5, v6

    aput-wide v7, v2, v3

    aget-object v5, p0, v6

    aget-wide v7, v5, v0

    aput-wide v7, v2, v6

    aput-object v2, v1, v3

    new-array v2, v0, [D

    aget-object v5, p0, v0

    aget-wide v7, v5, v3

    aput-wide v7, v2, v4

    aget-object v5, p0, v0

    aget-wide v7, v5, v6

    aput-wide v7, v2, v3

    aget-object v5, p0, v0

    aget-wide v7, v5, v0

    aput-wide v7, v2, v6

    aput-object v2, v1, v6

    .line 82
    new-array v2, v0, [[D

    new-array v5, v0, [D

    aget-object v7, p0, v3

    aget-wide v8, v7, v4

    aput-wide v8, v5, v4

    aget-object v7, p0, v3

    aget-wide v8, v7, v6

    aput-wide v8, v5, v3

    aget-object v7, p0, v3

    aget-wide v8, v7, v0

    aput-wide v8, v5, v6

    aput-object v5, v2, v4

    new-array v5, v0, [D

    aget-object v7, p0, v6

    aget-wide v8, v7, v4

    aput-wide v8, v5, v4

    aget-object v7, p0, v6

    aget-wide v8, v7, v6

    aput-wide v8, v5, v3

    aget-object v7, p0, v6

    aget-wide v8, v7, v0

    aput-wide v8, v5, v6

    aput-object v5, v2, v3

    new-array v5, v0, [D

    aget-object v7, p0, v0

    aget-wide v8, v7, v4

    aput-wide v8, v5, v4

    aget-object v7, p0, v0

    aget-wide v8, v7, v6

    aput-wide v8, v5, v3

    aget-object v7, p0, v0

    aget-wide v8, v7, v0

    aput-wide v8, v5, v6

    aput-object v5, v2, v6

    .line 87
    new-array v5, v0, [[D

    new-array v7, v0, [D

    aget-object v8, p0, v3

    aget-wide v9, v8, v4

    aput-wide v9, v7, v4

    aget-object v8, p0, v3

    aget-wide v9, v8, v3

    aput-wide v9, v7, v3

    aget-object v8, p0, v3

    aget-wide v9, v8, v0

    aput-wide v9, v7, v6

    aput-object v7, v5, v4

    new-array v7, v0, [D

    aget-object v8, p0, v6

    aget-wide v9, v8, v4

    aput-wide v9, v7, v4

    aget-object v8, p0, v6

    aget-wide v9, v8, v3

    aput-wide v9, v7, v3

    aget-object v8, p0, v6

    aget-wide v9, v8, v0

    aput-wide v9, v7, v6

    aput-object v7, v5, v3

    new-array v7, v0, [D

    aget-object v8, p0, v0

    aget-wide v9, v8, v4

    aput-wide v9, v7, v4

    aget-object v8, p0, v0

    aget-wide v9, v8, v3

    aput-wide v9, v7, v3

    aget-object v8, p0, v0

    aget-wide v9, v8, v0

    aput-wide v9, v7, v6

    aput-object v7, v5, v6

    .line 92
    new-array v7, v0, [[D

    new-array v8, v0, [D

    aget-object v9, p0, v3

    aget-wide v10, v9, v4

    aput-wide v10, v8, v4

    aget-object v9, p0, v3

    aget-wide v10, v9, v3

    aput-wide v10, v8, v3

    aget-object v9, p0, v3

    aget-wide v10, v9, v6

    aput-wide v10, v8, v6

    aput-object v8, v7, v4

    new-array v8, v0, [D

    aget-object v9, p0, v6

    aget-wide v10, v9, v4

    aput-wide v10, v8, v4

    aget-object v9, p0, v6

    aget-wide v10, v9, v3

    aput-wide v10, v8, v3

    aget-object v9, p0, v6

    aget-wide v10, v9, v6

    aput-wide v10, v8, v6

    aput-object v8, v7, v3

    new-array v8, v0, [D

    aget-object v9, p0, v0

    aget-wide v10, v9, v4

    aput-wide v10, v8, v4

    aget-object v9, p0, v0

    aget-wide v10, v9, v3

    aput-wide v10, v8, v3

    aget-object v9, p0, v0

    aget-wide v10, v9, v6

    aput-wide v10, v8, v6

    aput-object v8, v7, v6

    .line 97
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    aget-object v12, p0, v4

    aget-wide v13, v12, v4

    mul-double v10, v10, v13

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ca;->c([[D)D

    move-result-wide v12

    mul-double v10, v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    aget-object v1, p0, v4

    aget-wide v14, v1, v3

    mul-double v12, v12, v14

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ca;->c([[D)D

    move-result-wide v1

    mul-double v12, v12, v1

    add-double/2addr v10, v12

    .line 98
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    aget-object v3, p0, v4

    aget-wide v12, v3, v6

    mul-double v1, v1, v12

    invoke-static {v5}, Lcom/tendcloud/tenddata/game/ca;->c([[D)D

    move-result-wide v5

    mul-double v1, v1, v5

    add-double/2addr v10, v1

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    aget-object v3, p0, v4

    aget-wide v4, v3, v0

    mul-double v1, v1, v4

    invoke-static {v7}, Lcom/tendcloud/tenddata/game/ca;->c([[D)D

    move-result-wide v3

    mul-double v1, v1, v3

    add-double/2addr v10, v1

    .line 100
    return-wide v10
.end method

.method private static c([[D)D
    .registers 11

    .line 112
    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget-wide v2, v1, v0

    const/4 v1, 0x1

    aget-object v4, p0, v1

    aget-wide v5, v4, v1

    mul-double v2, v2, v5

    const/4 v4, 0x2

    aget-object v5, p0, v4

    aget-wide v6, v5, v4

    mul-double v2, v2, v6

    aget-object v5, p0, v0

    aget-wide v6, v5, v1

    aget-object v5, p0, v1

    aget-wide v8, v5, v4

    mul-double v6, v6, v8

    aget-object v5, p0, v4

    aget-wide v8, v5, v0

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    aget-object v5, p0, v1

    aget-wide v8, v5, v0

    mul-double v6, v6, v8

    aget-object v5, p0, v4

    aget-wide v8, v5, v1

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    neg-double v5, v6

    aget-object v7, p0, v1

    aget-wide v8, v7, v1

    mul-double v5, v5, v8

    aget-object v7, p0, v4

    aget-wide v8, v7, v0

    mul-double v5, v5, v8

    add-double/2addr v2, v5

    aget-object v5, p0, v0

    aget-wide v6, v5, v1

    aget-object v5, p0, v1

    aget-wide v8, v5, v0

    mul-double v6, v6, v8

    aget-object v5, p0, v4

    aget-wide v8, v5, v4

    mul-double v6, v6, v8

    sub-double/2addr v2, v6

    aget-object v5, p0, v0

    aget-wide v6, v5, v0

    aget-object v0, p0, v4

    aget-wide v8, v0, v1

    mul-double v6, v6, v8

    aget-object p0, p0, v1

    aget-wide v0, p0, v4

    mul-double v6, v6, v0

    sub-double/2addr v2, v6

    .line 115
    return-wide v2
.end method
