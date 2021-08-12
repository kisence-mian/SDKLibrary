.class public Lcom/kwad/sdk/api/core/ComponentDestroyer;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentDestroyer"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyActivity(Landroid/app/Activity;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/core/ComponentDestroyer;->destroyWebViewInTree(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/kwad/sdk/api/core/ComponentDestroyer;->fixInputMethodManagerLeak(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static destroyFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/api/core/ComponentDestroyer;->destroyWebViewInTree(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/kwad/sdk/api/core/ComponentDestroyer;->fixInputMethodManagerLeak(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private static declared-synchronized destroyWebViewInTree(Landroid/view/View;)V
    .registers 5

    const-class v0, Lcom/kwad/sdk/api/core/ComponentDestroyer;

    monitor-enter v0

    if-nez p0, :cond_7

    monitor-exit v0

    return-void

    :cond_7
    :try_start_7
    instance-of v1, p0, Landroid/webkit/WebView;

    if-eqz v1, :cond_12

    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_2d

    monitor-exit v0

    return-void

    :cond_12
    :try_start_12
    instance-of v1, p0, Landroid/view/ViewGroup;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_2d

    if-nez v1, :cond_18

    monitor-exit v0

    return-void

    :cond_18
    :try_start_18
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_2b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/kwad/sdk/api/core/ComponentDestroyer;->destroyWebViewInTree(Landroid/view/View;)V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static fixInputMethodManagerLeak(Landroid/content/Context;Landroid/view/View;)V
    .registers 8

    if-eqz p0, :cond_52

    if-nez p1, :cond_5

    goto :goto_52

    :cond_5
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-nez p1, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x3

    const-string v1, "mCurRootView"

    const-string v2, "mServedView"

    const-string v3, "mNextServedView"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_52

    aget-object v3, v1, v2

    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_32

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_32
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_4f

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_52
    :goto_52
    return-void
.end method
