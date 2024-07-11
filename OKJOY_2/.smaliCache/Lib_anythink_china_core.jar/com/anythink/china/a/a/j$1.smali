.class final Lcom/anythink/china/a/a/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/a/a/j;


# direct methods
.method constructor <init>(Lcom/anythink/china/a/a/j;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/anythink/china/a/a/j$1;->a:Lcom/anythink/china/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/anythink/china/a/a/j$1;->a:Lcom/anythink/china/a/a/j;

    iget-object p1, p1, Lcom/anythink/china/a/a/j;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 29
    return-void

    .line 28
    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 34
    return-void
.end method
