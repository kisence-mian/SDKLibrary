.class public Lcom/bytedance/sdk/openadsdk/core/f/b;
.super Ljava/lang/Object;
.source "PermissionActivityCompat.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 30
    if-eqz p1, :cond_1d

    .line 34
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_f

    return p0

    .line 35
    :catchall_f
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x17

    if-lt p0, p1, :cond_1b

    .line 39
    const/4 p0, -0x1

    return p0

    .line 41
    :cond_1b
    const/4 p0, 0x0

    return p0

    .line 31
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "permission is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 16
    :cond_9
    return-void
.end method
