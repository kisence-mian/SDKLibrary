.class public final Landroidx/test/internal/runner/intent/IntentMonitorImpl;
.super Ljava/lang/Object;
.source "IntentMonitorImpl.java"

# interfaces
.implements Landroidx/test/runner/intent/IntentMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentMonitorImpl"


# instance fields
.field callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/test/runner/intent/IntentCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public addIntentCallback(Landroidx/test/runner/intent/IntentCallback;)V
    .registers 6
    .param p1, "callback"    # Landroidx/test/runner/intent/IntentCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 54
    if-eqz p1, :cond_32

    .line 57
    const/4 v0, 0x1

    .line 58
    .local v0, "needsAdd":Z
    iget-object v1, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    .local v1, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/intent/IntentCallback;

    .line 61
    .local v2, "storedCallback":Landroidx/test/runner/intent/IntentCallback;
    if-nez v2, :cond_21

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_24

    .line 63
    :cond_21
    if-ne v2, p1, :cond_24

    .line 64
    const/4 v0, 0x0

    .line 66
    .end local v2    # "storedCallback":Landroidx/test/runner/intent/IntentCallback;
    :cond_24
    :goto_24
    goto :goto_9

    .line 67
    :cond_25
    if-eqz v0, :cond_31

    .line 68
    iget-object v2, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_31
    return-void

    .line 55
    .end local v0    # "needsAdd":Z
    .end local v1    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method

.method public removeIntentCallback(Landroidx/test/runner/intent/IntentCallback;)V
    .registers 4
    .param p1, "callback"    # Landroidx/test/runner/intent/IntentCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 75
    if-eqz p1, :cond_27

    .line 78
    iget-object v0, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/runner/intent/IntentCallback;

    .line 81
    .local v1, "storedCallback":Landroidx/test/runner/intent/IntentCallback;
    if-nez v1, :cond_20

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_25

    .line 83
    :cond_20
    if-ne v1, p1, :cond_25

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 86
    .end local v1    # "storedCallback":Landroidx/test/runner/intent/IntentCallback;
    :cond_25
    :goto_25
    goto :goto_8

    .line 87
    :cond_26
    return-void

    .line 76
    .end local v0    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :goto_2f
    throw v0

    :goto_30
    goto :goto_2f
.end method

.method public signalIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    .local v0, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/runner/intent/IntentCallback;

    .line 100
    .local v1, "callback":Landroidx/test/runner/intent/IntentCallback;
    if-nez v1, :cond_1e

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3c

    .line 105
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Landroidx/test/runner/intent/IntentCallback;->onIntentSent(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_26} :catch_27

    .line 112
    goto :goto_3c

    .line 106
    :catch_27
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/RuntimeException;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 109
    const-string v4, "Callback threw exception! (callback: %s intent: %s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    const-string v4, "IntentMonitorImpl"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v1    # "callback":Landroidx/test/runner/intent/IntentCallback;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_3c
    goto :goto_6

    .line 115
    :cond_3d
    return-void
.end method
