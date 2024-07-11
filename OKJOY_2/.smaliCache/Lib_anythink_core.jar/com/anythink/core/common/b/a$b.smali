.class final Lcom/anythink/core/common/b/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/anythink/core/common/b/a;

.field private final c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/b/a;)V
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/anythink/core/common/b/a$b;->b:Lcom/anythink/core/common/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/core/common/b/a$b;->a:Z

    .line 76
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/core/common/b/a$b;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/core/common/b/a;B)V
    .registers 3

    .line 74
    invoke-direct {p0, p1}, Lcom/anythink/core/common/b/a$b;-><init>(Lcom/anythink/core/common/b/a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/IBinder;
    .registers 2

    .line 91
    iget-boolean v0, p0, Lcom/anythink/core/common/b/a$b;->a:Z

    if-nez v0, :cond_10

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/b/a$b;->a:Z

    .line 95
    iget-object v0, p0, Lcom/anythink/core/common/b/a$b;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    .line 92
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/anythink/core/common/b/a$b;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 83
    return-void

    .line 82
    :catch_6
    move-exception p1

    .line 84
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 88
    return-void
.end method
