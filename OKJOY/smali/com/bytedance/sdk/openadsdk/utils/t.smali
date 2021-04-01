.class public Lcom/bytedance/sdk/openadsdk/utils/t;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/t;->a:Z

    .line 11
    const/4 v0, 0x4

    sput v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    return-void
.end method

.method public static a(I)V
    .registers 1

    .prologue
    .line 14
    sput p0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 65
    :goto_6
    return-void

    .line 64
    :cond_7
    const-string v0, "Logger"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 47
    :cond_6
    :goto_6
    return-void

    .line 42
    :cond_7
    if-eqz p1, :cond_6

    .line 45
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_6

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 87
    :cond_6
    :goto_6
    return-void

    .line 82
    :cond_7
    if-nez p1, :cond_b

    if-eqz p2, :cond_6

    .line 85
    :cond_b
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_6

    .line 86
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 22
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/t;->a:Z

    .line 27
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(I)V

    .line 28
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 148
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 152
    :goto_6
    return-void

    .line 151
    :cond_7
    const-string v0, "Logger"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 76
    :cond_6
    :goto_6
    return-void

    .line 71
    :cond_7
    if-eqz p1, :cond_6

    .line 74
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_6

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 145
    :cond_6
    :goto_6
    return-void

    .line 140
    :cond_7
    if-nez p1, :cond_b

    if-eqz p2, :cond_6

    .line 143
    :cond_b
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_6

    .line 144
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 105
    :cond_6
    :goto_6
    return-void

    .line 100
    :cond_7
    if-eqz p1, :cond_6

    .line 103
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_6

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 174
    :cond_6
    :goto_6
    return-void

    .line 169
    :cond_7
    if-nez p1, :cond_b

    if-eqz p2, :cond_6

    .line 172
    :cond_b
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_6

    .line 173
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/t;->a:Z

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 126
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 134
    :cond_6
    :goto_6
    return-void

    .line 129
    :cond_7
    if-eqz p1, :cond_6

    .line 132
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_6

    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 163
    :cond_6
    :goto_6
    return-void

    .line 158
    :cond_7
    if-eqz p1, :cond_6

    .line 161
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/t;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_6

    .line 162
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method
