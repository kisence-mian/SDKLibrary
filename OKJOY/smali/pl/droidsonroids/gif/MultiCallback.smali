.class public Lpl/droidsonroids/gif/MultiCallback;
.super Ljava/lang/Object;
.source "MultiCallback.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseViewInvalidate:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/MultiCallback;-><init>(Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "useViewInvalidate"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    iput-boolean p1, p0, Lpl/droidsonroids/gif/MultiCallback;->mUseViewInvalidate:Z

    .line 42
    return-void
.end method


# virtual methods
.method public addView(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 7
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_21

    .line 97
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 98
    .local v2, "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    invoke-virtual {v2}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    .line 99
    .local v1, "item":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v1, :cond_1e

    .line 101
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    .end local v1    # "item":Landroid/graphics/drawable/Drawable$Callback;
    .end local v2    # "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    :cond_21
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    invoke-direct {v4, p1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_33

    .line 47
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 48
    .local v2, "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    invoke-virtual {v2}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 49
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_2d

    .line 50
    iget-boolean v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mUseViewInvalidate:Z

    if-eqz v3, :cond_29

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_29

    .line 51
    check-cast v0, Landroid/view/View;

    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 46
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    .restart local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_29
    invoke-interface {v0, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_26

    .line 57
    :cond_2d
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    .line 60
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    .end local v2    # "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    :cond_33
    return-void
.end method

.method public removeView(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 6
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 114
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 115
    .local v2, "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    invoke-virtual {v2}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    .line 116
    .local v1, "item":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v1, :cond_1b

    if-ne v1, p1, :cond_20

    .line 118
    :cond_1b
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v1    # "item":Landroid/graphics/drawable/Drawable$Callback;
    .end local v2    # "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    :cond_23
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 10
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .prologue
    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 65
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 66
    .local v2, "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    invoke-virtual {v2}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 67
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_1f

    .line 68
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 64
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_1f
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 74
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    .end local v2    # "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    :cond_25
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 79
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 80
    .local v2, "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    invoke-virtual {v2}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 81
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_1f

    .line 82
    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 78
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_1f
    iget-object v3, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 88
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    .end local v2    # "reference":Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    :cond_25
    return-void
.end method
