.class Lcom/sigmob/windad/WindAdLifecycleManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/WindAdLifecycleManager;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/WindAdLifecycleManager;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/WindAdLifecycleManager;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated() called with: activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], savedInstanceState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p2, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p2}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed() called with: activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->f(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_a5

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->d(Lcom/sigmob/windad/WindAdLifecycleManager;)Z

    move-result p1

    if-eqz p1, :cond_a5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->f(Lcom/sigmob/windad/WindAdLifecycleManager;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityDestroyed session_end: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v5, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v5}, Lcom/sigmob/windad/WindAdLifecycleManager;->g(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->g(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_end"

    invoke-static {v1, p1, v2, v0}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityActive;

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;J)J

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z

    :cond_a5
    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_b7

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->c(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z

    :cond_b7
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused() called with: activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->d(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed() called with: activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_35

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/common/a;->a(Landroid/view/WindowInsets;)V

    :cond_35
    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->c(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v2}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->d(Lcom/sigmob/windad/WindAdLifecycleManager;)Z

    move-result p1

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->e(Lcom/sigmob/windad/WindAdLifecycleManager;)Z

    move-result p1

    if-eqz p1, :cond_d4

    :cond_70
    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->c(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Lcom/sigmob/windad/WindAdLifecycleManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;J)J

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1, v2}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResumed session_start: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->f(Lcom/sigmob/windad/WindAdLifecycleManager;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->g(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->g(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->f(Lcom/sigmob/windad/WindAdLifecycleManager;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_start"

    const-string v2, "0"

    invoke-static {v1, p1, v2, v0}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityActive;

    :cond_d4
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivitySaveInstanceState() called with: activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], outState = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted() called with: activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->c(Lcom/sigmob/windad/WindAdLifecycleManager;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped() called with: activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->e(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->h(Lcom/sigmob/windad/WindAdLifecycleManager;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ae

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->i(Lcom/sigmob/windad/WindAdLifecycleManager;)Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_ae

    :cond_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->f(Lcom/sigmob/windad/WindAdLifecycleManager;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityStopped session_end: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v5, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {v5}, Lcom/sigmob/windad/WindAdLifecycleManager;->g(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->g(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_end"

    invoke-static {v1, p1, v2, v0}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityActive;

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;J)J

    iget-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager$1;->a:Lcom/sigmob/windad/WindAdLifecycleManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z

    :cond_ae
    return-void
.end method
