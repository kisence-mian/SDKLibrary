.class public final Landroidx/core/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .registers 3
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 41
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0

    .line 43
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
