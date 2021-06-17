.class public Lcom/umeng/analytics/pro/aa;
.super Ljava/lang/Object;
.source "DeviceIdSupplier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/y;
    .registers 4

    .line 13
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Brand"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string v1, "Device"

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 17
    return-object v1

    .line 18
    :cond_1a
    const-string v0, "huawei"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 19
    const-string v0, "honor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 20
    const-string v0, "\u534e\u4e3a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto/16 :goto_a8

    .line 22
    :cond_34
    const-string v0, "xiaomi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 23
    const-string v0, "redmi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 24
    const-string v0, "meitu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 25
    const-string v0, "\u5c0f\u7c73"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_a2

    .line 27
    :cond_55
    const-string v0, "vivo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 28
    new-instance p0, Lcom/umeng/analytics/pro/af;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/af;-><init>()V

    return-object p0

    .line 29
    :cond_63
    const-string v0, "oppo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 30
    const-string v0, "oneplus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_9c

    .line 32
    :cond_74
    const-string v0, "lenovo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_96

    .line 33
    const-string v0, "zuk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_85

    goto :goto_96

    .line 35
    :cond_85
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "SAMSUNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_95

    .line 36
    new-instance p0, Lcom/umeng/analytics/pro/ae;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ae;-><init>()V

    return-object p0

    .line 38
    :cond_95
    return-object v1

    .line 34
    :cond_96
    :goto_96
    new-instance p0, Lcom/umeng/analytics/pro/ac;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ac;-><init>()V

    return-object p0

    .line 31
    :cond_9c
    :goto_9c
    new-instance p0, Lcom/umeng/analytics/pro/ad;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ad;-><init>()V

    return-object p0

    .line 26
    :cond_a2
    :goto_a2
    new-instance p0, Lcom/umeng/analytics/pro/ag;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ag;-><init>()V

    return-object p0

    .line 21
    :cond_a8
    :goto_a8
    new-instance p0, Lcom/umeng/analytics/pro/ab;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ab;-><init>()V

    return-object p0
.end method
