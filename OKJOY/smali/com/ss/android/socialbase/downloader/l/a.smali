.class public Lcom/ss/android/socialbase/downloader/l/a;
.super Ljava/lang/Object;
.source "DefaultThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/l/a;-><init>(Ljava/lang/String;Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/l/a;->a:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/l/a;->c:Z

    .line 23
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6

    .prologue
    const/4 v3, 0x5

    .line 27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 30
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/a;->c:Z

    if-nez v0, :cond_3c

    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 32
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 33
    :cond_33
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    if-eq v0, v3, :cond_3c

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 36
    :cond_3c
    return-object v1
.end method
