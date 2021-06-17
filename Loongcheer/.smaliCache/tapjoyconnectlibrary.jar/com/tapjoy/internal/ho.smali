.class final Lcom/tapjoy/internal/ho;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/ha;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/lang/Runnable;

.field private d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ha;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ho;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Lcom/tapjoy/internal/ho$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ho$1;-><init>(Lcom/tapjoy/internal/ho;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ho;->c:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lcom/tapjoy/internal/ho$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ho$2;-><init>(Lcom/tapjoy/internal/ho;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ho;->e:Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/tapjoy/internal/ho;->a:Lcom/tapjoy/internal/ha;

    .line 35
    return-void
.end method

.method private c()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    .line 93
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ho;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 96
    :cond_b
    return-void
.end method


# virtual methods
.method final a()Z
    .registers 4

    .line 45
    invoke-direct {p0}, Lcom/tapjoy/internal/ho;->c()V

    .line 46
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 47
    const-string v0, "New session started"

    invoke-static {v0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->a:Lcom/tapjoy/internal/ha;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ha;->a()V

    .line 50
    sget-object v0, Lcom/tapjoy/internal/ft;->c:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ft$a;->notifyObservers()V

    .line 51
    return v2

    .line 53
    :cond_1d
    return v1
.end method

.method final b()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 66
    :cond_d
    return-void
.end method
