.class public Lcom/tapsdk/moment/utils/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActivityAlive(Landroid/app/Activity;)Z
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 12
    invoke-static {p0}, Lcom/tapsdk/moment/utils/ActivityUtils;->isActivityNotAlive(Landroid/app/Activity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isActivityNotAlive(Landroid/app/Activity;)Z
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 8
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
