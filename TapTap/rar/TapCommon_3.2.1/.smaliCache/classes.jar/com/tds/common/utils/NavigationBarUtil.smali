.class public Lcom/tds/common/utils/NavigationBarUtil;
.super Ljava/lang/Object;
.source "NavigationBarUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFocusNotAle(Landroid/view/Window;)V
    .registers 2
    .param p0, "window"    # Landroid/view/Window;

    .line 53
    if-eqz p0, :cond_7

    .line 54
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 56
    :cond_7
    return-void
.end method

.method public static focusNotAle(Landroid/view/Window;)V
    .registers 2
    .param p0, "window"    # Landroid/view/Window;

    .line 43
    if-eqz p0, :cond_7

    .line 44
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 47
    :cond_7
    return-void
.end method

.method public static hideNavigationBar(Landroid/view/Window;)V
    .registers 3
    .param p0, "window"    # Landroid/view/Window;

    .line 14
    if-eqz p0, :cond_16

    .line 15
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tds/common/utils/NavigationBarUtil$1;

    invoke-direct {v1, p0}, Lcom/tds/common/utils/NavigationBarUtil$1;-><init>(Landroid/view/Window;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 37
    :cond_16
    return-void
.end method
