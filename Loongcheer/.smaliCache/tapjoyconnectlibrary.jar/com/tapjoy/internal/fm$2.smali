.class final Lcom/tapjoy/internal/fm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/tapjoy/internal/fm;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fm;Ljava/util/HashSet;)V
    .registers 3

    .line 126
    iput-object p1, p0, Lcom/tapjoy/internal/fm$2;->b:Lcom/tapjoy/internal/fm;

    iput-object p2, p0, Lcom/tapjoy/internal/fm$2;->a:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 130
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 173
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 152
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 148
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 169
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 134
    invoke-static {p1}, Lcom/tapjoy/internal/fm;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/tapjoy/internal/fm$2;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/tapjoy/internal/fm$2;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 1213
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->f()V

    .line 143
    :cond_19
    invoke-static {p1}, Lcom/tapjoy/internal/b;->a(Landroid/app/Activity;)V

    .line 144
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 156
    invoke-static {p1}, Lcom/tapjoy/internal/fm;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/tapjoy/internal/fm$2;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/tapjoy/internal/fm$2;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_18

    .line 1220
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->g()V

    .line 165
    :cond_18
    return-void
.end method
