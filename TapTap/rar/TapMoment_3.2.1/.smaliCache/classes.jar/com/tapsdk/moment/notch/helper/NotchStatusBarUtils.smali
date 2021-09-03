.class public Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;
.super Ljava/lang/Object;
.source "NotchStatusBarUtils.java"


# static fields
.field private static statusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, -0x1

    sput v0, Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;->statusBarHeight:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 11
    sget v0, Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;->statusBarHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 12
    return v0

    .line 14
    :cond_6
    if-gtz v0, :cond_22

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 16
    .local v0, "resId":I
    if-lez v0, :cond_22

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;->statusBarHeight:I

    .line 20
    .end local v0    # "resId":I
    :cond_22
    sget v0, Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;->statusBarHeight:I

    return v0
.end method
