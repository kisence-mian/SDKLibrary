.class public Lcom/bytedance/sdk/openadsdk/utils/z;
.super Ljava/lang/Object;
.source "Predicate.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 35
    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_7

    .line 36
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;)V

    .line 38
    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 13
    if-nez p0, :cond_5

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;)V

    .line 16
    :cond_5
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .line 31
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 20
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;)V

    .line 22
    :cond_9
    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 2

    .line 25
    if-nez p0, :cond_5

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;)V

    .line 28
    :cond_5
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 2

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
