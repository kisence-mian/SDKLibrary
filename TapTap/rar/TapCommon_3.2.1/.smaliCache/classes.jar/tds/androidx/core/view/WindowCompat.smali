.class public final Ltds/androidx/core/view/WindowCompat;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/core/view/WindowCompat$Impl30;,
        Ltds/androidx/core/view/WindowCompat$Impl16;
    }
.end annotation


# static fields
.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInsetsController(Landroid/view/Window;Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsControllerCompat;
    .registers 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "view"    # Landroid/view/View;

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 136
    invoke-static {p0}, Ltds/androidx/core/view/WindowCompat$Impl30;->getInsetsController(Landroid/view/Window;)Ltds/androidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    return-object v0

    .line 138
    :cond_b
    new-instance v0, Ltds/androidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p0, p1}, Ltds/androidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    return-object v0
.end method

.method public static requireViewById(Landroid/view/Window;I)Landroid/view/View;
    .registers 5
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/Window;",
            "I)TT;"
        }
    .end annotation

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 89
    invoke-virtual {p0, p1}, Landroid/view/Window;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 92
    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_12

    .line 96
    return-object v0

    .line 94
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Window"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setDecorFitsSystemWindows(Landroid/view/Window;Z)V
    .registers 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "decorFitsSystemWindows"    # Z

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 118
    invoke-static {p0, p1}, Ltds/androidx/core/view/WindowCompat$Impl30;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    goto :goto_13

    .line 119
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    .line 120
    invoke-static {p0, p1}, Ltds/androidx/core/view/WindowCompat$Impl16;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 122
    :cond_13
    :goto_13
    return-void
.end method
