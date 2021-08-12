.class public Lcom/ss/android/downloadlib/b/j;
.super Ljava/lang/Object;
.source "MarketUriUtils.java"


# direct methods
.method public static a(Landroid/net/Uri;)Z
    .registers 3

    .line 17
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 18
    return v0

    .line 20
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 22
    return v0

    .line 24
    :cond_f
    const-string v1, "market"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 25
    const-string v1, "appmarket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 26
    const-string v1, "oaps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "oppomarket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 27
    const-string v1, "mimarket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 28
    const-string v1, "vivomarket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "vivoMarket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 29
    const-string v1, "gomarket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "goMarket"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 30
    const-string v1, "mstore"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 31
    const-string v1, "samsungapps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    goto :goto_69

    .line 35
    :cond_68
    return v0

    .line 33
    :cond_69
    :goto_69
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 40
    const-string v1, "packagename"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "pkg"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 41
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "appId"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 39
    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
