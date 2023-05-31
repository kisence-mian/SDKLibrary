.class public Lcom/ss/android/socialbase/downloader/impls/n;
.super Lcom/ss/android/socialbase/downloader/downloader/a;
.source "IndependentDownloadServiceHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final e:Ljava/lang/String;

.field private static i:I

.field private static j:J


# instance fields
.field private f:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private g:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private h:I

.field private k:Landroid/os/Handler;

.field private l:Z

.field private m:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/ss/android/socialbase/downloader/impls/n;->i:I

    .line 54
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/impls/n;->j:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(J)J
    .registers 2

    .prologue
    .line 43
    sput-wide p0, Lcom/ss/android/socialbase/downloader/impls/n;->j:J

    return-wide p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/n;)Landroid/content/ServiceConnection;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->m:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/n;Z)Z
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/n;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/impls/n;)V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/n;->l()V

    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()I
    .registers 1

    .prologue
    .line 43
    sget v0, Lcom/ss/android/socialbase/downloader/impls/n;->i:I

    return v0
.end method

.method static synthetic j()J
    .registers 2

    .prologue
    .line 43
    sget-wide v0, Lcom/ss/android/socialbase/downloader/impls/n;->j:J

    return-wide v0
.end method

.method static synthetic k()I
    .registers 2

    .prologue
    .line 43
    sget v0, Lcom/ss/android/socialbase/downloader/impls/n;->i:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/ss/android/socialbase/downloader/impls/n;->i:I

    return v0
.end method

.method private l()V
    .registers 7

    .prologue
    .line 295
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v1, "resumeDownloaderProcessTaskForDied: "

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 297
    if-nez v0, :cond_e

    .line 327
    :cond_d
    :goto_d
    return-void

    .line 300
    :cond_e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->o()Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_d

    .line 305
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_d

    .line 307
    const-string v2, "application/vnd.android.package-archive"

    .line 308
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/n;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 313
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->T()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 314
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->w()I

    move-result v4

    const/4 v5, -0x5

    if-ne v4, v5, :cond_32

    .line 315
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 318
    :cond_51
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 319
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeDownloaderProcessTaskForDied: resume size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Ljava/util/List;)V

    goto :goto_d
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 91
    if-eqz p1, :cond_18

    .line 92
    const-string v0, "fix_downloader_db_sigbus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    if-eqz v0, :cond_18

    .line 94
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v1, "downloader process sync database on main process!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v0, "fix_sigbus_downloader_db"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;Z)V

    .line 98
    :cond_18
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v1, "onBind IndependentDownloadBinder"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/m;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/m;-><init>()V

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_e

    .line 273
    iput p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    .line 274
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 282
    :goto_d
    return-void

    .line 277
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->l(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_d

    .line 278
    :catch_14
    move-exception v0

    .line 279
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 7

    .prologue
    .line 63
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 66
    const-string v1, "fix_downloader_db_sigbus"

    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v2

    const-string v3, "fix_sigbus_downloader_db"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    :cond_23
    if-eqz p2, :cond_29

    .line 69
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 71
    :cond_29
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->m:Landroid/content/ServiceConnection;

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 76
    :goto_2e
    return-void

    .line 73
    :catch_2f
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2e
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/o;)V
    .registers 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    .line 268
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p1, :cond_4

    .line 142
    :goto_3
    return-void

    .line 106
    :cond_4
    sget-object v2, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryDownload aidlService == null:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_32

    .line 108
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 109
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_3

    :cond_30
    move v0, v1

    .line 106
    goto :goto_16

    .line 111
    :cond_32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 112
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    monitor-enter v2

    .line 113
    :try_start_41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 114
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 115
    :cond_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_92

    .line 118
    :cond_57
    :try_start_57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/g/d;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/g/a;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_60} :catch_95

    .line 122
    :goto_60
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    monitor-enter v2

    .line 123
    :try_start_63
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 124
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 126
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_a2

    .line 128
    :goto_74
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_a2

    .line 129
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 130
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;
    :try_end_84
    .catchall {:try_start_63 .. :try_end_84} :catchall_9f

    .line 131
    if-eqz v0, :cond_8f

    .line 133
    :try_start_86
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/g/d;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/g/a;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8f} :catch_9a
    .catchall {:try_start_86 .. :try_end_8f} :catchall_9f

    .line 128
    :cond_8f
    :goto_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 115
    :catchall_92
    move-exception v0

    :try_start_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v0

    .line 119
    :catch_95
    move-exception v0

    .line 120
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_60

    .line 134
    :catch_9a
    move-exception v0

    .line 135
    :try_start_9b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8f

    .line 140
    :catchall_9f
    move-exception v0

    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_9f

    throw v0

    :cond_a2
    :try_start_a2
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_9f

    goto/16 :goto_3
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 5

    .prologue
    .line 146
    if-nez p1, :cond_3

    .line 152
    :cond_2
    :goto_2
    return-void

    .line 148
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(IZ)V

    .line 149
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V

    goto :goto_2
.end method

.method public f()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 287
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 289
    :cond_b
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 261
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_c

    .line 262
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->h()V

    .line 263
    :cond_c
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v3, "onServiceConnected "

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 158
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_41

    const/16 v0, 0x200

    .line 160
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 161
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 164
    :try_start_26
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/n$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/n$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/n;)V

    const/4 v3, 0x0

    invoke-interface {p2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2f} :catch_c2

    .line 194
    :goto_2f
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->l:Z

    if-eqz v0, :cond_41

    .line 195
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->k:Landroid/os/Handler;

    new-instance v3, Lcom/ss/android/socialbase/downloader/impls/n$2;

    invoke-direct {v3, p0}, Lcom/ss/android/socialbase/downloader/impls/n$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/n;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->l:Z

    .line 215
    :cond_41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_4a

    .line 216
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/o;->a(Landroid/os/IBinder;)V

    .line 217
    :cond_4a
    sget-object v3, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected aidlService!=null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_c8

    move v0, v1

    :goto_5c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " pendingTasks.size:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_d8

    .line 219
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b()V

    .line 220
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->b:Z

    .line 221
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->d:Z

    .line 222
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_92

    .line 224
    :try_start_8b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->l(I)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_92} :catch_ca

    .line 229
    :cond_92
    :goto_92
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 230
    :try_start_95
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_d7

    .line 231
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 232
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 233
    :goto_a4
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_d7

    .line 234
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 235
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;
    :try_end_b4
    .catchall {:try_start_95 .. :try_end_b4} :catchall_d4

    .line 236
    if-eqz v0, :cond_bf

    .line 238
    :try_start_b6
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/g/d;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/g/a;)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_bf} :catch_cf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_d4

    .line 233
    :cond_bf
    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    .line 191
    :catch_c2
    move-exception v0

    .line 192
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2f

    :cond_c8
    move v0, v2

    .line 217
    goto :goto_5c

    .line 225
    :catch_ca
    move-exception v0

    .line 226
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_92

    .line 239
    :catch_cf
    move-exception v0

    .line 240
    :try_start_d0
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_bf

    .line 245
    :catchall_d4
    move-exception v0

    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_d4

    throw v0

    :cond_d7
    :try_start_d7
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d4

    .line 247
    :cond_d8
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 251
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v1, "onServiceDisconnected "

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->b:Z

    .line 254
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz v0, :cond_16

    .line 255
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/o;->h()V

    .line 256
    :cond_16
    return-void
.end method
