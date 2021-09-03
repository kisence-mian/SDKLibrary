.class Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnhandledKeyEventManager"
.end annotation


# static fields
.field private static final sViewsWithListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCapturedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsContainingListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 3231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3239
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 3244
    iput-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 3250
    iput-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static at(Landroid/view/View;)Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;
    .registers 4
    .param p0, "root"    # Landroid/view/View;

    .line 3260
    nop

    .line 3261
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tds_common_tag_unhandled_key_event_manager"

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;

    .line 3263
    .local v0, "manager":Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;
    if-nez v0, :cond_24

    .line 3264
    new-instance v2, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;

    invoke-direct {v2}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;-><init>()V

    move-object v0, v2

    .line 3265
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tds/common/utils/UIUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3268
    :cond_24
    return-object v0
.end method

.method private dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3291
    iget-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_31

    .line 3294
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    .line 3295
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 3297
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_29

    .line 3298
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3299
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0, v3, p2}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4

    .line 3300
    .local v4, "consumer":Landroid/view/View;
    if-eqz v4, :cond_26

    .line 3301
    return-object v4

    .line 3297
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 3305
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_29
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3306
    return-object p1

    .line 3308
    :cond_30
    return-object v1

    .line 3292
    :cond_31
    :goto_31
    return-object v1
.end method

.method private getCapturedKeys()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 3253
    iget-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 3254
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 3256
    :cond_b
    iget-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    return-object v0
.end method

.method private onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3350
    nop

    .line 3352
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tds_common_tag_unhandled_key_listeners"

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3353
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-eqz v0, :cond_2b

    .line 3354
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_2b

    .line 3355
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-interface {v3, p1, p2}, Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3356
    return v2

    .line 3354
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 3360
    .end local v1    # "i":I
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method private recalcViewsWithUnhandled()V
    .registers 9

    .line 3390
    iget-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_7

    .line 3391
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 3393
    :cond_7
    sget-object v0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3394
    return-void

    .line 3396
    :cond_10
    monitor-enter v0

    .line 3397
    :try_start_11
    iget-object v1, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-nez v1, :cond_1c

    .line 3398
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 3400
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_22
    if-ltz v1, :cond_5a

    .line 3401
    sget-object v2, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 3402
    .local v3, "vw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3403
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_38

    .line 3404
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_57

    .line 3406
    :cond_38
    iget-object v2, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3407
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 3408
    .local v2, "nxt":Landroid/view/ViewParent;
    :goto_43
    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_57

    .line 3409
    iget-object v5, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3410
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v2, v5

    goto :goto_43

    .line 3400
    .end local v2    # "nxt":Landroid/view/ViewParent;
    .end local v3    # "vw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v4    # "v":Landroid/view/View;
    :cond_57
    :goto_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 3414
    .end local v1    # "i":I
    :cond_5a
    monitor-exit v0

    .line 3415
    return-void

    .line 3414
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_11 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method static registerListeningView(Landroid/view/View;)V
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .line 3368
    sget-object v0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3369
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3370
    .local v2, "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1b

    .line 3371
    monitor-exit v0

    return-void

    .line 3373
    .end local v2    # "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_1b
    goto :goto_7

    .line 3374
    :cond_1c
    sget-object v1, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3375
    monitor-exit v0

    .line 3376
    return-void

    .line 3375
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method static unregisterListeningView(Landroid/view/View;)V
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .line 3379
    sget-object v0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    sget-object v2, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 3381
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    .line 3382
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3383
    monitor-exit v0

    return-void

    .line 3380
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3386
    .end local v1    # "i":I
    :cond_20
    monitor-exit v0

    .line 3387
    return-void

    .line 3386
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3272
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 3273
    invoke-direct {p0}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->recalcViewsWithUnhandled()V

    .line 3276
    :cond_9
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v0

    .line 3280
    .local v0, "consumer":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 3281
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 3282
    .local v1, "keycode":I
    if-eqz v0, :cond_2b

    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 3283
    invoke-direct {p0}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3286
    .end local v1    # "keycode":I
    :cond_2b
    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1
.end method

.method preDispatch(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3317
    iget-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 3318
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_c

    .line 3319
    return v1

    .line 3321
    :cond_c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 3325
    const/4 v0, 0x0

    .line 3326
    .local v0, "currentReceiver":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-direct {p0}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object v2

    .line 3327
    .local v2, "capturedKeys":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    .line 3328
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 3329
    .local v3, "idx":I
    if-ltz v3, :cond_33

    .line 3330
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3331
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3334
    .end local v3    # "idx":I
    :cond_33
    if-nez v0, :cond_40

    .line 3335
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3337
    :cond_40
    if-eqz v0, :cond_54

    .line 3338
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3339
    .local v1, "target":Landroid/view/View;
    if-eqz v1, :cond_53

    invoke-static {v1}, Ltds/androidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 3340
    invoke-direct {p0, v1, p1}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 3343
    :cond_53
    return v4

    .line 3345
    .end local v1    # "target":Landroid/view/View;
    :cond_54
    return v1
.end method
