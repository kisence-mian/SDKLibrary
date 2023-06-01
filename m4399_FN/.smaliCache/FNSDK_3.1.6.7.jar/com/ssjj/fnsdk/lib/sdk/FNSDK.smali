.class public Lcom/ssjj/fnsdk/lib/sdk/FNSDK;
.super Ljava/lang/Object;


# static fields
.field public static final VERSION:Ljava/lang/String; = "3.1.6.7"

.field private static a:Lcom/ssjj/fnsdk/lib/impl/x;

.field private static b:Landroid/app/Activity;

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/ssjj/fnsdk/lib/impl/x;->a()Lcom/ssjj/fnsdk/lib/impl/x;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->b:Landroid/app/Activity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;
    .registers 3

    if-eqz p0, :cond_20

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_11
    const-string v0, "context"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_20

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_20

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_20
    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static getContext(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/content/Context;
    .registers 3

    if-eqz p0, :cond_20

    const-string v0, "context"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v1, v0, Landroid/content/Context;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_11
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_20

    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_20

    check-cast p0, Landroid/content/Context;

    return-object p0

    :cond_20
    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "3.1.6.7"

    return-object v0
.end method

.method public static init(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "\u53c2\u6570\u7f3a\u5c11activity\uff0c\u8bf7\u5148\u8bbe\u7f6e param.putObj(\"activity\", MainActivity.this)"

    const/4 v1, -0x1

    invoke-interface {p1, v1, v0, p0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void

    :cond_d
    sput-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->b:Landroid/app/Activity;

    sget-object v1, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v1, v0, p0, p1}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Landroid/app/Activity;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_19
    return-void
.end method

.method public static invoke(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->invoke(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->invoke(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object p0

    :catchall_7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSupport(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0, p0}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return p0

    :catchall_7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/lib/impl/x;->a(IILandroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static onDestroy()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lib/impl/x;->h()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .registers 2

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0, p0}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static onPause()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lib/impl/x;->f()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static onRestart()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lib/impl/x;->e()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static onResume()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lib/impl/x;->c()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static onStart()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lib/impl/x;->d()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static onStop()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lib/impl/x;->g()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->post(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static post(Ljava/lang/Runnable;J)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/b;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/lib/sdk/b;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-gtz p0, :cond_14

    sget-object p0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    :cond_14
    sget-object p0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_19
    return-void
.end method

.method public static release(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 3

    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-virtual {v0, p0, p1}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->b:Landroid/app/Activity;

    if-eqz v0, :cond_e

    if-eqz p0, :cond_e

    new-instance v1, Lcom/ssjj/fnsdk/lib/sdk/a;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/lib/sdk/a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method
