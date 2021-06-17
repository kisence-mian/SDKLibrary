.class public Landroidx/lifecycle/LifecycleRegistry;
.super Landroidx/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# instance fields
.field private mAddingObserverCounter:I

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/FastSafeIterableMap<",
            "Landroidx/lifecycle/LifecycleObserver;",
            "Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1, "provider"    # Landroidx/lifecycle/LifecycleOwner;

    .line 94
    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    .line 56
    new-instance v0, Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 73
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 74
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 96
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 97
    return-void
.end method

.method private backwardPass(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 7
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 307
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 308
    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 309
    .local v0, "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_4b

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 311
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 312
    .local v2, "observer":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :goto_1c
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_4a

    iget-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_4a

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 313
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 314
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroidx/lifecycle/LifecycleRegistry;->downEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    .line 315
    .local v3, "event":Landroidx/lifecycle/Lifecycle$Event;
    invoke-static {v3}, Landroidx/lifecycle/LifecycleRegistry;->getStateAfter(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 316
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 317
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    .line 318
    .end local v3    # "event":Landroidx/lifecycle/Lifecycle$Event;
    goto :goto_1c

    .line 319
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    .end local v2    # "observer":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :cond_4a
    goto :goto_6

    .line 320
    :cond_4b
    return-void
.end method

.method private calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;
    .registers 6
    .param p1, "observer"    # Landroidx/lifecycle/LifecycleObserver;

    .line 159
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->ceil(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 161
    .local v0, "previous":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_13

    :cond_12
    move-object v2, v1

    .line 162
    .local v2, "siblingState":Landroidx/lifecycle/Lifecycle$State;
    :goto_13
    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Lifecycle$State;

    .line 164
    .local v1, "parentState":Landroidx/lifecycle/Lifecycle$State;
    :cond_29
    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v3, v2}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    return-object v3
.end method

.method private static downEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 4
    .param p0, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 261
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 269
    :pswitch_2a
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 267
    :pswitch_2d
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 265
    :pswitch_30
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 263
    :pswitch_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_24
    .end packed-switch
.end method

.method private forwardPass(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 7
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 292
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 293
    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v0

    .line 294
    .local v0, "ascendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_49

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 297
    .local v2, "observer":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :goto_1c
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_48

    iget-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_48

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 298
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 299
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 300
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroidx/lifecycle/LifecycleRegistry;->upEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 301
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_1c

    .line 303
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    .end local v2    # "observer":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :cond_48
    goto :goto_6

    .line 304
    :cond_49
    return-void
.end method

.method static getStateAfter(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;
    .registers 4
    .param p0, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 243
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_24
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 251
    :pswitch_27
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 249
    :pswitch_2a
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 246
    :pswitch_2d
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2d
        :pswitch_2a
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method

.method private isSynced()Z
    .registers 5

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 151
    return v1

    .line 153
    :cond_a
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 154
    .local v0, "eldestObserverState":Landroidx/lifecycle/Lifecycle$State;
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2}, Landroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 155
    .local v2, "newestObserverState":Landroidx/lifecycle/Lifecycle$State;
    if-ne v0, v2, :cond_2d

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    if-ne v3, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method static min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;
    .registers 3
    .param p0, "state1"    # Landroidx/lifecycle/Lifecycle$State;
    .param p1, "state2"    # Landroidx/lifecycle/Lifecycle$State;

    .line 346
    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_a

    move-object v0, p1

    goto :goto_b

    :cond_a
    move-object v0, p0

    :goto_b
    return-object v0
.end method

.method private moveToState(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 4
    .param p1, "next"    # Landroidx/lifecycle/Lifecycle$State;

    .line 135
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_5

    .line 136
    return-void

    .line 138
    :cond_5
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 139
    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    iget v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 144
    :cond_11
    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 145
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 147
    return-void

    .line 140
    :cond_1a
    :goto_1a
    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 142
    return-void
.end method

.method private popParentState()V
    .registers 3

    .line 202
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method private pushParentState(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 3
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 206
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method private sync()V
    .registers 5

    .line 325
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 326
    .local v0, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    if-eqz v0, :cond_4f

    .line 330
    :goto_a
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4c

    .line 331
    iput-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 333
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2}, Landroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_2c

    .line 334
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->backwardPass(Landroidx/lifecycle/LifecycleOwner;)V

    .line 336
    :cond_2c
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Landroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v1

    .line 337
    .local v1, "newest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_4b

    if-eqz v1, :cond_4b

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_4b

    .line 339
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->forwardPass(Landroidx/lifecycle/LifecycleOwner;)V

    .line 341
    .end local v1    # "newest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    :cond_4b
    goto :goto_a

    .line 342
    :cond_4c
    iput-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 343
    return-void

    .line 327
    :cond_4f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :goto_57
    throw v1

    :goto_58
    goto :goto_57
.end method

.method private static upEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 4
    .param p0, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 277
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 284
    :pswitch_2a
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 282
    :pswitch_2d
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 280
    :pswitch_30
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_24
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public addObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .registers 10
    .param p1, "observer"    # Landroidx/lifecycle/LifecycleObserver;

    .line 169
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_9

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_b

    :cond_9
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 170
    .local v0, "initialState":Landroidx/lifecycle/Lifecycle$State;
    :goto_b
    new-instance v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    invoke-direct {v1, p1, v0}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V

    .line 171
    .local v1, "statefulObserver":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2, p1, v1}, Landroidx/arch/core/internal/FastSafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 173
    .local v2, "previous":Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    if-eqz v2, :cond_1b

    .line 174
    return-void

    .line 176
    :cond_1b
    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    .line 177
    .local v3, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    if-nez v3, :cond_26

    .line 179
    return-void

    .line 182
    :cond_26
    iget v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    const/4 v5, 0x1

    if-nez v4, :cond_32

    iget-boolean v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v4, :cond_30

    goto :goto_32

    :cond_30
    const/4 v4, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v4, 0x1

    .line 183
    .local v4, "isReentrance":Z
    :goto_33
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    .line 184
    .local v6, "targetState":Landroidx/lifecycle/Lifecycle$State;
    iget v7, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/2addr v7, v5

    iput v7, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 185
    :goto_3c
    iget-object v7, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v7, v6}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-gez v7, :cond_62

    iget-object v7, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 186
    invoke-virtual {v7, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 187
    iget-object v7, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v7}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 188
    iget-object v7, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v7}, Landroidx/lifecycle/LifecycleRegistry;->upEvent(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 189
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    .line 191
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    goto :goto_3c

    .line 194
    :cond_62
    if-nez v4, :cond_67

    .line 196
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 198
    :cond_67
    iget v7, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    sub-int/2addr v7, v5

    iput v7, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 199
    return-void
.end method

.method public getCurrentState()Landroidx/lifecycle/Lifecycle$State;
    .registers 2

    .line 239
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public getObserverCount()I
    .registers 2

    .line 233
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    return v0
.end method

.method public handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3
    .param p1, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 130
    invoke-static {p1}, Landroidx/lifecycle/LifecycleRegistry;->getStateAfter(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 131
    .local v0, "next":Landroidx/lifecycle/Lifecycle$State;
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 132
    return-void
.end method

.method public markState(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 2
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 109
    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .registers 3
    .param p1, "observer"    # Landroidx/lifecycle/LifecycleObserver;

    .line 223
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
    .registers 2
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 118
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 119
    return-void
.end method
