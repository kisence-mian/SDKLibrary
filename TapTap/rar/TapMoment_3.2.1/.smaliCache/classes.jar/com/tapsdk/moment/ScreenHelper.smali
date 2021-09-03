.class public Lcom/tapsdk/moment/ScreenHelper;
.super Ljava/lang/Object;
.source "ScreenHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fullScreenImmersive(Landroid/view/Window;)V
    .registers 3
    .param p0, "window"    # Landroid/view/Window;

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_14

    .line 17
    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 18
    const/16 v0, 0xa06

    .line 22
    .local v0, "uiOptions":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 24
    .end local v0    # "uiOptions":I
    :cond_14
    return-void
.end method
