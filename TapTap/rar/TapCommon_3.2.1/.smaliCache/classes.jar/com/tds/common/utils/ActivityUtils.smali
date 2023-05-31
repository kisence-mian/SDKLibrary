.class public Lcom/tds/common/utils/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTopActivity()Lcom/tds/common/reactor/Observable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/tds/common/utils/ActivityUtils$1;

    invoke-direct {v0}, Lcom/tds/common/utils/ActivityUtils$1;-><init>()V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static isActivityAlive(Landroid/app/Activity;)Z
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 22
    invoke-static {p0}, Lcom/tds/common/utils/ActivityUtils;->isActivityNotAlive(Landroid/app/Activity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isActivityNotAlive(Landroid/app/Activity;)Z
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 18
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
