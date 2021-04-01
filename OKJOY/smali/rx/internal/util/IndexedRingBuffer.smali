.class public final Lrx/internal/util/IndexedRingBuffer;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/IndexedRingBuffer$IndexSection;,
        Lrx/internal/util/IndexedRingBuffer$ElementSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool",
            "<",
            "Lrx/internal/util/IndexedRingBuffer",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final SIZE:I

.field static defaultSize:I


# instance fields
.field private final elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

.field final removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 55
    new-instance v2, Lrx/internal/util/IndexedRingBuffer$1;

    invoke-direct {v2}, Lrx/internal/util/IndexedRingBuffer$1;-><init>()V

    sput-object v2, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    .line 64
    const/16 v2, 0x100

    sput v2, Lrx/internal/util/IndexedRingBuffer;->defaultSize:I

    .line 241
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 242
    const/16 v2, 0x8

    sput v2, Lrx/internal/util/IndexedRingBuffer;->defaultSize:I

    .line 246
    :cond_15
    const-string v2, "rx.indexed-ring-buffer.size"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "sizeFromProperty":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 249
    :try_start_1d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lrx/internal/util/IndexedRingBuffer;->defaultSize:I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_23} :catch_28

    .line 255
    :cond_23
    :goto_23
    sget v2, Lrx/internal/util/IndexedRingBuffer;->defaultSize:I

    sput v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    .line 256
    return-void

    .line 250
    :catch_28
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set \'rx.indexed-ring-buffer.size\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_23
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 295
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 51
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 297
    return-void
.end method

.method private forEach(Lrx/functions/Func1;II)I
    .registers 12
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    move v3, p2

    .line 455
    .local v3, "lastIndex":I
    iget-object v7, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 456
    .local v4, "maxIndex":I
    move v5, p2

    .line 457
    .local v5, "realIndex":I
    iget-object v6, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 459
    .local v6, "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    sget v7, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-lt p2, v7, :cond_15

    .line 461
    invoke-direct {p0, p2}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v6

    .line 462
    sget v7, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int/2addr p2, v7

    .line 465
    :cond_15
    :goto_15
    if-eqz v6, :cond_21

    .line 466
    move v2, p2

    .local v2, "i":I
    :goto_18
    sget v7, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v2, v7, :cond_3f

    .line 467
    if-ge v5, v4, :cond_20

    if-lt v5, p3, :cond_23

    .line 468
    :cond_20
    const/4 v6, 0x0

    .end local v2    # "i":I
    :cond_21
    move v7, v5

    .line 486
    :goto_22
    return v7

    .line 471
    .restart local v2    # "i":I
    :cond_23
    iget-object v7, v6, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 472
    .local v1, "element":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_30

    .line 466
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 475
    :cond_30
    move v3, v5

    .line 476
    invoke-interface {p1, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 477
    .local v0, "continueLoop":Z
    if-nez v0, :cond_2b

    move v7, v3

    .line 478
    goto :goto_22

    .line 481
    .end local v0    # "continueLoop":Z
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_3f
    iget-object v7, v6, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    check-cast v6, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 482
    .restart local v6    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    const/4 p2, 0x0

    goto :goto_15
.end method

.method private getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v3, :cond_7

    .line 349
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 358
    :cond_6
    return-object v0

    .line 353
    :cond_7
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    div-int v2, p1, v3

    .line 354
    .local v2, "numSections":I
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 355
    .local v0, "a":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_6

    .line 356
    invoke-virtual {v0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->getNext()Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v0

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private declared-synchronized getIndexForAdd()I
    .registers 6

    .prologue
    .line 366
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;->getIndexFromPreviouslyRemoved()I

    move-result v1

    .line 367
    .local v1, "ri":I
    if-ltz v1, :cond_2f

    .line 368
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v1, v3, :cond_21

    .line 370
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getAndSet(II)I

    move-result v0

    .line 375
    .local v0, "i":I
    :goto_12
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_1f

    .line 377
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_36

    .line 382
    :cond_1f
    :goto_1f
    monitor-exit p0

    return v0

    .line 372
    .end local v0    # "i":I
    :cond_21
    :try_start_21
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v2, v1, v3

    .line 373
    .local v2, "sectionIndex":I
    invoke-direct {p0, v1}, Lrx/internal/util/IndexedRingBuffer;->getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getAndSet(II)I

    move-result v0

    .restart local v0    # "i":I
    goto :goto_12

    .line 380
    .end local v0    # "i":I
    .end local v2    # "sectionIndex":I
    :cond_2f
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_36

    move-result v0

    .restart local v0    # "i":I
    goto :goto_1f

    .line 366
    .end local v0    # "i":I
    .end local v1    # "ri":I
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getIndexFromPreviouslyRemoved()I
    .registers 4

    .prologue
    .line 397
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 398
    .local v0, "currentRi":I
    if-lez v0, :cond_17

    .line 400
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    add-int/lit8 v1, v0, -0x1

    .line 405
    :goto_15
    monitor-exit p0

    return v1

    :cond_17
    const/4 v1, -0x1

    goto :goto_15

    .line 397
    .end local v0    # "currentRi":I
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 333
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v3, :cond_7

    .line 334
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 343
    :cond_6
    return-object v0

    .line 338
    :cond_7
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    div-int v2, p1, v3

    .line 339
    .local v2, "numSections":I
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 340
    .local v0, "a":Lrx/internal/util/IndexedRingBuffer$IndexSection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_6

    .line 341
    invoke-virtual {v0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getNext()Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v0

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public static getInstance()Lrx/internal/util/IndexedRingBuffer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/util/IndexedRingBuffer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v0}, Lrx/internal/util/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/IndexedRingBuffer;

    return-object v0
.end method

.method private declared-synchronized pushRemovedIndex(I)V
    .registers 5
    .param p1, "elementIndex"    # I

    .prologue
    .line 415
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 416
    .local v0, "i":I
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v2, :cond_12

    .line 418
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-virtual {v2, v0, p1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->set(II)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1e

    .line 423
    :goto_10
    monitor-exit p0

    return-void

    .line 420
    :cond_12
    :try_start_12
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, v0, v2

    .line 421
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->set(II)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_10

    .line 415
    .end local v0    # "i":I
    .end local v1    # "sectionIndex":I
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;->getIndexForAdd()I

    move-result v0

    .line 307
    .local v0, "i":I
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v2, :cond_10

    .line 309
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    iget-object v2, v2, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 314
    :goto_f
    return v0

    .line 312
    :cond_10
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, v0, v2

    .line 313
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v2

    iget-object v2, v2, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_f
.end method

.method public forEach(Lrx/functions/Func1;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I

    move-result v0

    return v0
.end method

.method public forEach(Lrx/functions/Func1;I)I
    .registers 5
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;II)I

    move-result v0

    .line 443
    .local v0, "endedAt":I
    if-lez p2, :cond_1a

    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 445
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;II)I

    move-result v0

    .line 450
    :cond_19
    :goto_19
    return v0

    .line 446
    :cond_1a
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 448
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 427
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public releaseToPool()V
    .registers 8

    .prologue
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v6, 0x0

    .line 269
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 270
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .line 271
    .local v2, "realIndex":I
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 272
    .local v3, "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    :goto_a
    if-eqz v3, :cond_14

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    sget v4, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v4, :cond_2f

    .line 274
    if-lt v2, v1, :cond_24

    .line 275
    const/4 v3, 0x0

    .line 285
    .end local v0    # "i":I
    :cond_14
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 286
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 287
    sget-object v4, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v4, p0}, Lrx/internal/util/ObjectPool;->returnObject(Ljava/lang/Object;)V

    .line 288
    return-void

    .line 280
    .restart local v0    # "i":I
    :cond_24
    iget-object v4, v3, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 282
    :cond_2f
    iget-object v4, v3, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    check-cast v3, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .restart local v3    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    goto :goto_a
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v3, 0x0

    .line 320
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v2, :cond_11

    .line 322
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    iget-object v2, v2, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, "e":Ljava/lang/Object;, "TE;"
    :goto_d
    invoke-direct {p0, p1}, Lrx/internal/util/IndexedRingBuffer;->pushRemovedIndex(I)V

    .line 328
    return-object v0

    .line 324
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_11
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, p1, v2

    .line 325
    .local v1, "sectionIndex":I
    invoke-direct {p0, p1}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v2

    iget-object v2, v2, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_d
.end method

.method public unsubscribe()V
    .registers 1

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/IndexedRingBuffer;->releaseToPool()V

    .line 293
    return-void
.end method
