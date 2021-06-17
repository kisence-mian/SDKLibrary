.class public final Landroidx/test/espresso/idling/CountingIdlingResource;
.super Ljava/lang/Object;
.source "CountingIdlingResource.java"

# interfaces
.implements Landroidx/test/espresso/IdlingResource;


# static fields
.field private static final TAG:Ljava/lang/String; = "CountingIdlingResource"


# instance fields
.field private volatile becameBusyAt:J

.field private volatile becameIdleAt:J

.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final debugCounting:Z

.field private volatile resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

.field private final resourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceName"
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/test/espresso/idling/CountingIdlingResource;-><init>(Ljava/lang/String;Z)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "debugCounting"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceName",
            "debugCounting"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameBusyAt:J

    .line 96
    iput-wide v0, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameIdleAt:J

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 118
    iput-object p1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->resourceName:Ljava/lang/String;

    .line 119
    iput-boolean p2, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->debugCounting:Z

    .line 120
    return-void

    .line 116
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resourceName cannot be empty or null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decrement()V
    .registers 9

    .line 161
    iget-object v0, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 163
    .local v0, "counterVal":I
    if-nez v0, :cond_17

    .line 165
    iget-object v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    if-eqz v1, :cond_11

    .line 166
    iget-object v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    invoke-interface {v1}, Landroidx/test/espresso/IdlingResource$ResourceCallback;->onTransitionToIdle()V

    .line 168
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameIdleAt:J

    .line 171
    :cond_17
    iget-boolean v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->debugCounting:Z

    if-eqz v1, :cond_81

    .line 172
    const-string v1, "Resource: "

    const-string v2, "CountingIdlingResource"

    if-nez v0, :cond_57

    .line 173
    iget-object v3, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->resourceName:Ljava/lang/String;

    iget-wide v4, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameIdleAt:J

    iget-wide v6, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameBusyAt:J

    sub-long/2addr v4, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x41

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " went idle! (Time spent not idle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 181
    :cond_57
    iget-object v3, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->resourceName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in-use-count decremented to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_81
    :goto_81
    const/4 v1, -0x1

    if-le v0, v1, :cond_85

    .line 188
    return-void

    .line 186
    :cond_85
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Counter has been corrupted! counterVal="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dumpStateToLogs()V
    .registers 9

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->resourceName:Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    const-string v1, " inflight transaction count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    .local v0, "message":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameBusyAt:J

    const-wide/16 v3, 0x0

    const-string v5, "CountingIdlingResource"

    cmp-long v6, v3, v1

    if-nez v6, :cond_35

    .line 198
    const-string v1, " and has never been busy!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 200
    :cond_35
    const-string v1, " and was last busy at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameBusyAt:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    iget-wide v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameIdleAt:J

    cmp-long v6, v3, v1

    if-nez v6, :cond_54

    .line 202
    const-string v1, " AND NEVER WENT IDLE!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 204
    :cond_54
    const-string v1, " and last went idle at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameIdleAt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_66
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public increment()V
    .registers 6

    .line 143
    iget-object v0, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 144
    .local v0, "counterVal":I
    if-nez v0, :cond_e

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->becameBusyAt:J

    .line 148
    :cond_e
    iget-boolean v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->debugCounting:Z

    if-eqz v1, :cond_42

    .line 149
    iget-object v1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->resourceName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Resource: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in-use-count incremented to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CountingIdlingResource"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_42
    return-void
.end method

.method public isIdleNow()Z
    .registers 2

    .line 129
    iget-object v0, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public registerIdleTransitionCallback(Landroidx/test/espresso/IdlingResource$ResourceCallback;)V
    .registers 2
    .param p1, "resourceCallback"    # Landroidx/test/espresso/IdlingResource$ResourceCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceCallback"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Landroidx/test/espresso/idling/CountingIdlingResource;->resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    .line 135
    return-void
.end method
