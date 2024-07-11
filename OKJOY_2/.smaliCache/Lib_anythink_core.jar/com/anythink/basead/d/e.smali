.class public final Lcom/anythink/basead/d/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 53
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_6

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_6
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 5

    .line 40
    nop

    .line 1053
    instance-of v0, p0, Landroid/app/Activity;

    const v1, 0x1020002

    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 1054
    move-object p0, v2

    goto :goto_19

    .line 1057
    :cond_b
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 40
    :goto_19
    nop

    .line 41
    nop

    .line 1062
    if-nez p1, :cond_1e

    .line 1063
    goto :goto_2d

    .line 1066
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 1068
    if-nez p1, :cond_25

    .line 1069
    goto :goto_2d

    .line 1072
    :cond_25
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1073
    if-eqz v2, :cond_2c

    .line 1074
    goto :goto_2d

    .line 1075
    :cond_2c
    move-object v2, p1

    .line 41
    :goto_2d
    nop

    .line 46
    if-eqz p0, :cond_31

    .line 47
    return-object p0

    .line 48
    :cond_31
    nop

    .line 46
    return-object v2
.end method

.method private static a(Landroid/view/View;)V
    .registers 2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 19
    return-void

    .line 22
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_18
    return-void
.end method

.method private static b(Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 62
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 63
    return-object v0

    .line 66
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 68
    if-nez p0, :cond_b

    .line 69
    return-object v0

    .line 72
    :cond_b
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_15

    .line 74
    return-object v0

    .line 75
    :cond_15
    nop

    .line 73
    return-object p0
.end method
