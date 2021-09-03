.class public Lcom/tapsdk/moment/notch/phone/CommonScreen;
.super Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;
.source "CommonScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchHeight(Landroid/view/Window;)I
    .registers 3
    .param p1, "window"    # Landroid/view/Window;

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .registers 3
    .param p1, "window"    # Landroid/view/Window;

    .line 12
    const/4 v0, 0x0

    return v0
.end method
