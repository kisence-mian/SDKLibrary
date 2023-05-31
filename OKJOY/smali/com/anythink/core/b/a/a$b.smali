.class final Lcom/anythink/core/b/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/anythink/core/b/a/a;

.field private final c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/anythink/core/b/a/a;)V
    .registers 4

    .prologue
    .line 67
    iput-object p1, p0, Lcom/anythink/core/b/a/a$b;->b:Lcom/anythink/core/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/b/a/a$b;->a:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/b/a/a$b;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/core/b/a/a;B)V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/anythink/core/b/a/a$b;-><init>(Lcom/anythink/core/b/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/anythink/core/b/a/a$b;->a:Z

    if-eqz v0, :cond_a

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 87
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/a/a$b;->a:Z

    .line 88
    iget-object v0, p0, Lcom/anythink/core/b/a/a$b;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/a/a$b;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 77
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .prologue
    .line 81
    return-void
.end method
