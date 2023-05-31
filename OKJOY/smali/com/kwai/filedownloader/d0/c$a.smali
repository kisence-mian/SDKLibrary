.class Lcom/kwai/filedownloader/d0/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwai/filedownloader/d0/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/d0/c;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/d0/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v0}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v0}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v0, v3}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v1}, Lcom/kwai/filedownloader/d0/c;->b(Lcom/kwai/filedownloader/d0/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;I)V

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v1}, Lcom/kwai/filedownloader/d0/c;->c(Lcom/kwai/filedownloader/d0/c;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_58

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v0}, Lcom/kwai/filedownloader/d0/c;->b(Lcom/kwai/filedownloader/d0/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v0}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v0}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v0, v3}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_1c

    :catchall_58
    move-exception v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v1}, Lcom/kwai/filedownloader/d0/c;->b(Lcom/kwai/filedownloader/d0/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v1}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v1}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;)Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c$a;->a:Lcom/kwai/filedownloader/d0/c;

    invoke-static {v1, v3}, Lcom/kwai/filedownloader/d0/c;->a(Lcom/kwai/filedownloader/d0/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_78
    throw v0
.end method
