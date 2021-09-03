.class public final Lcom/tds/common/reactor/subscriptions/BooleanSubscription;
.super Ljava/lang/Object;
.source "BooleanSubscription.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# static fields
.field static final EMPTY_ACTION:Lcom/tds/common/reactor/functions/Action0;


# instance fields
.field final actionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tds/common/reactor/functions/Action0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Lcom/tds/common/reactor/subscriptions/BooleanSubscription$1;

    invoke-direct {v0}, Lcom/tds/common/reactor/subscriptions/BooleanSubscription$1;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->EMPTY_ACTION:Lcom/tds/common/reactor/functions/Action0;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/tds/common/reactor/functions/Action0;)V
    .registers 3
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    return-void
.end method

.method public static create()Lcom/tds/common/reactor/subscriptions/BooleanSubscription;
    .registers 1

    .line 46
    new-instance v0, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/subscriptions/BooleanSubscription;
    .registers 2
    .param p0, "onUnsubscribe"    # Lcom/tds/common/reactor/functions/Action0;

    .line 57
    new-instance v0, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;-><init>(Lcom/tds/common/reactor/functions/Action0;)V

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->EMPTY_ACTION:Lcom/tds/common/reactor/functions/Action0;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public unsubscribe()V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/functions/Action0;

    .line 68
    .local v0, "action":Lcom/tds/common/reactor/functions/Action0;
    sget-object v1, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->EMPTY_ACTION:Lcom/tds/common/reactor/functions/Action0;

    if-eq v0, v1, :cond_1c

    .line 69
    iget-object v2, p0, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tds/common/reactor/functions/Action0;

    .line 70
    if-eqz v0, :cond_1c

    if-eq v0, v1, :cond_1c

    .line 71
    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Action0;->call()V

    .line 74
    :cond_1c
    return-void
.end method
