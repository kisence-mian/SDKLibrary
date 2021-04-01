.class public Lcom/sigmob/sdk/base/common/utils/ai;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 4

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/ai;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/ai;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    move-object v0, v1

    goto :goto_a
.end method

.method public static a(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_8
.end method

.method private static b(Landroid/view/View;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "android.support.v4.view.ViewCompat"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_32

    move-result-object v1

    :goto_a
    :try_start_a
    const-string v2, "androidx.core.view.ViewCompat"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_3a

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_21

    :try_start_12
    new-instance v2, Lcom/sigmob/sdk/base/common/utils/x;

    const-string v3, "isAttachedToWindow"

    invoke-direct {v2, v1, v3}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v1, Landroid/view/View;

    invoke-virtual {v2, v1, p0}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_21} :catch_35

    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const v0, 0x1020002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :catch_32
    move-exception v1

    move-object v1, v0

    goto :goto_a

    :catch_35
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21

    :catch_3a
    move-exception v2

    goto :goto_10
.end method
