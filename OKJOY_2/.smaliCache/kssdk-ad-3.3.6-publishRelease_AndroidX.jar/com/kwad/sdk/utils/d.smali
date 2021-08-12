.class public Lcom/kwad/sdk/utils/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;IZ)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/kwad/sdk/utils/d;->a(Landroid/app/Activity;IZZ)V

    return-void
.end method

.method public static a(Landroid/app/Activity;IZZ)V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/utils/d;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/utils/d;->b(Landroid/app/Activity;IZ)V

    if-nez p3, :cond_1b

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1b
    return-void
.end method

.method public static a()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static a(Landroid/app/Activity;Z)Z
    .registers 10

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_9
    const-string v2, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "setExtraFlags"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_35

    move p1, v2

    goto :goto_36

    :cond_35
    move p1, v1

    :goto_36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_45} :catch_46

    return v7

    :catch_46
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static b(Landroid/app/Activity;IZ)V
    .registers 7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x500

    const/16 v3, 0x15

    if-lt v1, v3, :cond_46

    if-eqz p2, :cond_34

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_34

    const/16 v2, 0x2500

    const/high16 p2, 0x4000000

    invoke-virtual {v0, p2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 p2, -0x80000000

    invoke-virtual {v0, p2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/kwad/sdk/utils/x;->a()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2b

    invoke-static {p0, v1}, Lcom/kwad/sdk/utils/d;->a(Landroid/app/Activity;Z)Z

    goto :goto_34

    :cond_2b
    invoke-static {}, Lcom/kwad/sdk/utils/x;->b()Z

    move-result p2

    if-eqz p2, :cond_34

    invoke-static {p0, v1}, Lcom/kwad/sdk/utils/q;->a(Landroid/app/Activity;Z)V

    :cond_34
    :goto_34
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_53

    :cond_46
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x13

    if-lt p0, p1, :cond_53

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_53
    :goto_53
    return-void
.end method
