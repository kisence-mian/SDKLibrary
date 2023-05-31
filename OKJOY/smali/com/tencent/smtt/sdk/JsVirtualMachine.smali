.class public final Lcom/tencent/smtt/sdk/JsVirtualMachine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/JsVirtualMachine$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/smtt/sdk/JsVirtualMachine$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/JsVirtualMachine;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/X5JsCore;->a(Landroid/content/Context;Landroid/os/Looper;)Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    if-nez v0, :cond_16

    new-instance v0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->c:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;->createJsContext()Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    move-result-object v0

    goto :goto_15
.end method

.method public final destroy()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;->destroy()V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->destroy()V

    goto :goto_10
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a
.end method

.method public final isFallback()Z
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final onPause()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;->onPause()V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a()V

    goto :goto_10
.end method

.method public final onResume()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsVirtualMachine;->onResume()V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->b()V

    goto :goto_10
.end method
