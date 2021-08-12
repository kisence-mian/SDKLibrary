.class public final Lokjoy/s/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_11
    invoke-static {}, Lokjoy/s/f;->b()Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    :cond_18
    invoke-static {}, Lokjoy/s/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    return v1
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lokjoy/s/f;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static b()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lokjoy/s/f;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method
