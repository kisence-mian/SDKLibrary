.class public final Landroidx/navigation/Navigation;
.super Ljava/lang/Object;
.source "Navigation.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static createNavigateOnClickListener(I)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "resId"    # I

    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->createNavigateOnClickListener(ILandroid/os/Bundle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public static createNavigateOnClickListener(ILandroid/os/Bundle;)Landroid/view/View$OnClickListener;
    .registers 3
    .param p0, "resId"    # I
    .param p1, "args"    # Landroid/os/Bundle;

    .line 116
    new-instance v0, Landroidx/navigation/Navigation$1;

    invoke-direct {v0, p0, p1}, Landroidx/navigation/Navigation$1;-><init>(ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public static createNavigateOnClickListener(Landroidx/navigation/NavDirections;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "directions"    # Landroidx/navigation/NavDirections;

    .line 134
    new-instance v0, Landroidx/navigation/Navigation$2;

    invoke-direct {v0, p0}, Landroidx/navigation/Navigation$2;-><init>(Landroidx/navigation/NavDirections;)V

    return-object v0
.end method

.method public static findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "viewId"    # I

    .line 58
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->requireViewById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroidx/navigation/Navigation;->findViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v1

    .line 60
    .local v1, "navController":Landroidx/navigation/NavController;
    if-eqz v1, :cond_b

    .line 64
    return-object v1

    .line 61
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have a NavController set on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static findNavController(Landroid/view/View;)Landroidx/navigation/NavController;
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 82
    invoke-static {p0}, Landroidx/navigation/Navigation;->findViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 83
    .local v0, "navController":Landroidx/navigation/NavController;
    if-eqz v0, :cond_7

    .line 86
    return-object v0

    .line 84
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have a NavController set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 164
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 165
    invoke-static {p0}, Landroidx/navigation/Navigation;->getViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v1

    .line 166
    .local v1, "controller":Landroidx/navigation/NavController;
    if-eqz v1, :cond_a

    .line 167
    return-object v1

    .line 169
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 170
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_15

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    :cond_15
    move-object p0, v0

    .line 171
    .end local v1    # "controller":Landroidx/navigation/NavController;
    .end local v2    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 172
    :cond_17
    return-object v0
.end method

.method private static getViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 178
    sget v0, Landroidx/navigation/R$id;->nav_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 179
    .local v0, "tag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 180
    .local v1, "controller":Landroidx/navigation/NavController;
    instance-of v2, v0, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_16

    .line 181
    move-object v2, v0

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroidx/navigation/NavController;

    goto :goto_1d

    .line 182
    :cond_16
    instance-of v2, v0, Landroidx/navigation/NavController;

    if-eqz v2, :cond_1d

    .line 183
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavController;

    .line 185
    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public static setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "controller"    # Landroidx/navigation/NavController;

    .line 154
    sget v0, Landroidx/navigation/R$id;->nav_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 155
    return-void
.end method
