.class Lcom/ss/android/socialbase/appdownloader/b$e;
.super Ljava/lang/Object;
.source "AntiHijackUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;

.field private final c:Lcom/ss/android/socialbase/appdownloader/b$b;

.field private final d:Landroid/os/Handler;

.field private final e:J

.field private f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/ss/android/socialbase/appdownloader/b$b;J)V
    .registers 8

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->g:Z

    .line 916
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->a:Landroid/content/Context;

    .line 917
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->b:Landroid/content/Intent;

    .line 918
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->c:Lcom/ss/android/socialbase/appdownloader/b$b;

    .line 919
    new-instance v0, Lcom/ss/android/socialbase/downloader/l/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/socialbase/downloader/l/f;-><init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/l/f$a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->d:Landroid/os/Handler;

    .line 920
    iput-wide p4, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->e:J

    .line 921
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/b$e;)Z
    .registers 2

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/appdownloader/b$e;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 9

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 925
    if-eqz p1, :cond_18

    .line 926
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_31

    .line 927
    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->e:J

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 949
    :cond_18
    :goto_18
    return-void

    .line 933
    :cond_19
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/ss/android/socialbase/appdownloader/b$d;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->c:Lcom/ss/android/socialbase/appdownloader/b$b;

    iget-wide v4, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->e:J

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/appdownloader/b$d;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/ss/android/socialbase/appdownloader/b$b;J)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->f:Ljava/util/concurrent/Future;

    goto :goto_18

    .line 934
    :cond_31
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_18

    .line 938
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 940
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_48

    .line 941
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 943
    :cond_48
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->g:Z

    if-nez v0, :cond_18

    .line 944
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 945
    iput-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->g:Z

    goto :goto_18
.end method
