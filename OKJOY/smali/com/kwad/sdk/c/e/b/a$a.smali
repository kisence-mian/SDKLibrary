.class Lcom/kwad/sdk/c/e/b/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/e/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/e/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/e/b/a$a;->a:Lcom/kwad/sdk/c/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/a$a;->a:Lcom/kwad/sdk/c/e/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/e/b/a;->a(Lcom/kwad/sdk/c/e/b/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
