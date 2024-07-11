.class public Lcom/ss/android/socialbase/downloader/impls/n;
.super Lcom/ss/android/socialbase/downloader/downloader/a;
.source "IndependentDownloadServiceHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private g:Lcom/ss/android/socialbase/downloader/downloader/m;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 83
    if-eqz p1, :cond_18

    .line 84
    const/4 v0, 0x0

    const-string v1, "fix_downloader_db_sigbus"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 85
    if-eqz p1, :cond_18

    .line 86
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v0, "downloader process sync database on main process!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 p1, 0x1

    const-string v0, "fix_sigbus_downloader_db"

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;Z)V

    .line 90
    :cond_18
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v0, "onBind IndependentDownloadBinder"

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/m;

    invoke-direct {p1}, Lcom/ss/android/socialbase/downloader/impls/m;-><init>()V

    return-object p1
.end method

.method public a(I)V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_7

    .line 208
    iput p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    goto :goto_f

    .line 212
    :cond_7
    :try_start_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->l(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 215
    goto :goto_f

    .line 213
    :catch_b
    move-exception p1

    .line 214
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 217
    :goto_f
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 7

    .line 56
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 59
    const-string v1, "fix_downloader_db_sigbus"

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    const-string v3, "fix_sigbus_downloader_db"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    :cond_23
    if-eqz p2, :cond_29

    .line 62
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 64
    :cond_29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    .line 67
    goto :goto_31

    .line 65
    :catchall_2d
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    :goto_31
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/m;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/m;

    .line 203
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 7

    .line 96
    if-nez p1, :cond_3

    .line 97
    return-void

    .line 98
    :cond_3
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryDownload aidlService == null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    const/4 v3, 0x0

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_33

    .line 100
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 101
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto/16 :goto_a3

    .line 103
    :cond_33
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 104
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 105
    :try_start_42
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 106
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 107
    :cond_57
    monitor-exit v0

    goto :goto_5c

    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_42 .. :try_end_5b} :catchall_59

    throw p1

    .line 110
    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/model/a;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_65} :catch_66

    .line 113
    goto :goto_6a

    .line 111
    :catch_66
    move-exception v0

    .line 112
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    :goto_6a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 115
    :try_start_6d
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 118
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_a2

    .line 120
    nop

    :goto_7f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_a2

    .line 121
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 122
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    :try_end_8f
    .catchall {:try_start_6d .. :try_end_8f} :catchall_a4

    .line 123
    if-eqz v2, :cond_9f

    .line 125
    :try_start_91
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/model/a;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9a} :catch_9b
    .catchall {:try_start_91 .. :try_end_9a} :catchall_a4

    .line 128
    goto :goto_9f

    .line 126
    :catch_9b
    move-exception v2

    .line 127
    :try_start_9c
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    :cond_9f
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 132
    :cond_a2
    monitor-exit v0

    .line 134
    :goto_a3
    return-void

    .line 132
    :catchall_a4
    move-exception p1

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_a4

    throw p1
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 5

    .line 138
    if-nez p1, :cond_3

    .line 139
    return-void

    .line 140
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(IZ)V

    .line 141
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_18

    .line 143
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 144
    :cond_18
    return-void
.end method

.method public f()V
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 222
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 224
    :cond_b
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 195
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 196
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-eqz p1, :cond_a

    .line 197
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->h()V

    .line 198
    :cond_a
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 148
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v0, "onServiceConnected "

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 150
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-eqz v0, :cond_14

    .line 151
    invoke-interface {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Landroid/os/IBinder;)V

    .line 152
    :cond_14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected aidlService!=null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " pendingTasks.size:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz p1, :cond_9c

    .line 154
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b()V

    .line 155
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->b:Z

    .line 156
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->d:Z

    .line 157
    iget p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_61

    .line 159
    :try_start_57
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->l(I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_5d

    .line 162
    goto :goto_61

    .line 160
    :catch_5d
    move-exception p1

    .line 161
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 164
    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    monitor-enter p1

    .line 165
    :try_start_64
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz p2, :cond_97

    .line 166
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p2

    .line 167
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 168
    nop

    :goto_74
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_97

    .line 169
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 170
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    :try_end_84
    .catchall {:try_start_64 .. :try_end_84} :catchall_99

    .line 171
    if-eqz v0, :cond_94

    .line 173
    :try_start_86
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/model/a;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8f} :catch_90
    .catchall {:try_start_86 .. :try_end_8f} :catchall_99

    .line 176
    goto :goto_94

    .line 174
    :catch_90
    move-exception v0

    .line 175
    :try_start_91
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 168
    :cond_94
    :goto_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 180
    :cond_97
    monitor-exit p1

    goto :goto_9c

    :catchall_99
    move-exception p2

    monitor-exit p1
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_99

    throw p2

    .line 182
    :cond_9c
    :goto_9c
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 186
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v0, "onServiceDisconnected "

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 188
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->b:Z

    .line 189
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/m;

    if-eqz p1, :cond_14

    .line 190
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->h()V

    .line 191
    :cond_14
    return-void
.end method
