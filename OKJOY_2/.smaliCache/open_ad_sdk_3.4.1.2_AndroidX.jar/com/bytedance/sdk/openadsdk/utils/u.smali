.class public Lcom/bytedance/sdk/openadsdk/utils/u;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/u;->a:Z

    .line 11
    const/4 v0, 0x4

    sput v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    return-void
.end method

.method public static a(I)V
    .registers 1

    .line 14
    sput p0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 62
    return-void

    .line 64
    :cond_7
    const-string v0, "Logger"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 40
    return-void

    .line 42
    :cond_7
    if-nez p1, :cond_a

    .line 43
    return-void

    .line 45
    :cond_a
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_12
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 80
    return-void

    .line 82
    :cond_7
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    .line 83
    return-void

    .line 85
    :cond_c
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    .line 86
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :cond_14
    return-void
.end method

.method public static a()Z
    .registers 2

    .line 22
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static b()V
    .registers 1

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/u;->a:Z

    .line 27
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(I)V

    .line 28
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .line 158
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 159
    return-void

    .line 161
    :cond_7
    const-string v0, "Logger"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 69
    return-void

    .line 71
    :cond_7
    if-nez p1, :cond_a

    .line 72
    return-void

    .line 74
    :cond_a
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_12

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_12
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 138
    return-void

    .line 140
    :cond_7
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    .line 141
    return-void

    .line 143
    :cond_c
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_14

    .line 144
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :cond_14
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 98
    return-void

    .line 100
    :cond_7
    if-nez p1, :cond_a

    .line 101
    return-void

    .line 103
    :cond_a
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_12

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_12
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 176
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 177
    return-void

    .line 179
    :cond_7
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    .line 180
    return-void

    .line 182
    :cond_c
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_14

    .line 183
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :cond_14
    return-void
.end method

.method public static c()Z
    .registers 1

    .line 31
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/u;->a:Z

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 126
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 127
    return-void

    .line 129
    :cond_7
    if-nez p1, :cond_a

    .line 130
    return-void

    .line 132
    :cond_a
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_12

    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_12
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 148
    if-nez p1, :cond_3

    .line 149
    return-void

    .line 151
    :cond_3
    if-nez p0, :cond_7

    .line 152
    const-string p0, "Logger"

    .line 154
    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 165
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 166
    return-void

    .line 168
    :cond_7
    if-nez p1, :cond_a

    .line 169
    return-void

    .line 171
    :cond_a
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_12

    .line 172
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_12
    return-void
.end method
