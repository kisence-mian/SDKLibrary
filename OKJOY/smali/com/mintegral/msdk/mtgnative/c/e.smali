.class public final Lcom/mintegral/msdk/mtgnative/c/e;
.super Ljava/lang/Object;
.source "Views.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 10
    .line 1017
    if-nez p0, :cond_a

    .line 11
    :cond_3
    :goto_3
    invoke-static {p1}, Lcom/mintegral/msdk/mtgnative/c/e;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 13
    if-eqz v0, :cond_20

    :goto_9
    return-object v0

    .line 1020
    :cond_a
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 1023
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_20
    move-object v0, v1

    .line 13
    goto :goto_9
.end method

.method private static a(Landroid/view/View;)Landroid/view/View;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 28
    if-nez p0, :cond_4

    .line 46
    :cond_3
    :goto_3
    return-object v0

    .line 32
    :cond_4
    :try_start_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_18

    .line 37
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_3

    .line 41
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_1a

    move-result-object v0

    .line 42
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :catch_18
    move-exception v1

    goto :goto_7

    .line 46
    :catch_1a
    move-exception v1

    goto :goto_3
.end method
