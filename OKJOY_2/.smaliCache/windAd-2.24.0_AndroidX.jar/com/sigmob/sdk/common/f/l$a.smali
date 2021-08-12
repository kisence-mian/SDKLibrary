.class final Lcom/sigmob/sdk/common/f/l$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/f/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/common/f/l$a;->a:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/common/f/l$a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/sdk/common/f/l$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/common/f/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/common/f/l$a;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/common/f/l$a;->a:Z

    iget-object v0, p0, Lcom/sigmob/sdk/common/f/l$a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/sdk/common/f/l$a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
