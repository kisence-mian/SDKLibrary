.class Ltds/androidx/core/view/WindowCompat$Impl30;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInsetsController(Landroid/view/Window;)Ltds/androidx/core/view/WindowInsetsControllerCompat;
    .registers 3
    .param p0, "window"    # Landroid/view/Window;

    .line 166
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 167
    .local v0, "insetsController":Landroid/view/WindowInsetsController;
    if-eqz v0, :cond_b

    .line 168
    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat;->toWindowInsetsControllerCompat(Landroid/view/WindowInsetsController;)Ltds/androidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    return-object v1

    .line 171
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method static setDecorFitsSystemWindows(Landroid/view/Window;Z)V
    .registers 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "decorFitsSystemWindows"    # Z

    .line 162
    invoke-virtual {p0, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 163
    return-void
.end method
