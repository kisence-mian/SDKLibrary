.class Lcom/kwai/filedownloader/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwai/filedownloader/b/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/b/c;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {p1}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {p1}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    iget-object p1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {p1, v0}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_1c
    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {v2}, Lcom/kwai/filedownloader/b/c;->b(Lcom/kwai/filedownloader/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {v2, p1}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;I)V

    iget-object v2, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {v2}, Lcom/kwai/filedownloader/b/c;->c(Lcom/kwai/filedownloader/b/c;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_58

    iget-object p1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {p1}, Lcom/kwai/filedownloader/b/c;->b(Lcom/kwai/filedownloader/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {p1}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {p1}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    iget-object p1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {p1, v0}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_57
    return v1

    :catchall_58
    move-exception p1

    iget-object v2, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {v2}, Lcom/kwai/filedownloader/b/c;->b(Lcom/kwai/filedownloader/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {v1}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {v1}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/b/c$1;->a:Lcom/kwai/filedownloader/b/c;

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/b/c;->a(Lcom/kwai/filedownloader/b/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_78
    throw p1
.end method
