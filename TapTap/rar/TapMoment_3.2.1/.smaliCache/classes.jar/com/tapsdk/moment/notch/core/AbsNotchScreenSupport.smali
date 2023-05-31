.class public abstract Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;
.super Ljava/lang/Object;
.source "AbsNotchScreenSupport.java"

# interfaces
.implements Lcom/tapsdk/moment/notch/core/INotchSupport;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusHeight(Landroid/view/Window;)I
    .registers 3
    .param p1, "window"    # Landroid/view/Window;

    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
