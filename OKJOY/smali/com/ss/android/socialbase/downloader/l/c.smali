.class public Lcom/ss/android/socialbase/downloader/l/c;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/l/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/l/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/ss/android/socialbase/downloader/d/u;

.field private B:Lcom/ss/android/socialbase/downloader/d/p;

.field private volatile C:I

.field private D:Z

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:J

.field private b:Ljava/util/concurrent/Future;

.field private final c:Lcom/ss/android/socialbase/downloader/g/d;

.field private volatile d:Z

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ss/android/socialbase/downloader/l/b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Lcom/ss/android/socialbase/downloader/downloader/d;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile n:Lcom/ss/android/socialbase/downloader/b/k;

.field private final o:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private p:Lcom/ss/android/socialbase/downloader/g/c;

.field private q:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private final r:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private s:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private final t:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private u:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private final v:Lcom/ss/android/socialbase/downloader/downloader/e;

.field private w:Landroid/app/AlarmManager;

.field private volatile x:Lcom/ss/android/socialbase/downloader/e/a;

.field private y:Lcom/ss/android/socialbase/downloader/i/e;

.field private z:Lcom/ss/android/socialbase/downloader/i/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const-class v0, Lcom/ss/android/socialbase/downloader/l/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/g/d;Landroid/os/Handler;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->d:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    .line 102
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->a:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 123
    const/4 v0, 0x5

    iput v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->C:I

    .line 125
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->D:Z

    .line 126
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->E:Z

    .line 132
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    .line 133
    if-eqz p1, :cond_40

    .line 134
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    .line 135
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->f()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->q:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 136
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->q()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->s:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 137
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->h()Lcom/ss/android/socialbase/downloader/d/u;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->A:Lcom/ss/android/socialbase/downloader/d/u;

    .line 138
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->i()Lcom/ss/android/socialbase/downloader/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->B:Lcom/ss/android/socialbase/downloader/d/p;

    .line 139
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/g/d;)Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->u:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 142
    :cond_40
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->h()V

    .line 143
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 144
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->r:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 145
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->z()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->t:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 146
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/g/d;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    .line 147
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->h()Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->w:Landroid/app/AlarmManager;

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    return-void
.end method

.method private A()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/f;
        }
    .end annotation

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1173
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/f;

    const/16 v1, 0x3fb

    const-string v2, "download task need permission:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/f;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1176
    :cond_2a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aA()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1177
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/e/d;-><init>()V

    throw v0

    .line 1179
    :cond_38
    return-void
.end method

.method private B()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1184
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x404

    const-string v2, "download savePath can not be empty"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1186
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1187
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x405

    const-string v2, "download name can not be empty"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1189
    :cond_2c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1191
    if-nez v1, :cond_4d

    .line 1192
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 1193
    if-nez v0, :cond_5d

    .line 1194
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x406

    const-string v2, "download savePath directory can not created"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1196
    :cond_4d
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1197
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x407

    const-string v2, "download savePath is not a directory"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1199
    :cond_5d
    return-void
.end method

.method private C()V
    .registers 5

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->e(Lcom/ss/android/socialbase/downloader/g/c;)J

    move-result-wide v0

    .line 1322
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2, v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(J)V

    .line 1323
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->i:Z

    .line 1324
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->i:Z

    if-nez v0, :cond_28

    .line 1325
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)V

    .line 1326
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 1328
    :cond_28
    return-void

    .line 1323
    :cond_29
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private D()V
    .registers 3

    .prologue
    .line 1373
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)V

    .line 1374
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 1375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->i:Z

    .line 1376
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->h(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    .line 1381
    :goto_21
    return-void

    .line 1378
    :catch_22
    move-exception v0

    .line 1379
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21
.end method

.method private E()V
    .registers 5

    .prologue
    .line 1410
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1411
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/l/b;

    .line 1412
    if-eqz v0, :cond_c

    .line 1413
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/b;->b()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_c

    .line 1416
    :catch_1e
    move-exception v0

    .line 1417
    sget-object v1, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAllChunkRunnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    :cond_3b
    return-void
.end method

.method private F()V
    .registers 3

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1435
    :cond_6
    :goto_6
    return-void

    .line 1432
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 1433
    if-eqz v0, :cond_6

    .line 1434
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->l(I)Z

    goto :goto_6
.end method

.method private G()Z
    .registers 5

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->w:Landroid/app/AlarmManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aj()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1709
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->w()J

    move-result-wide v0

    .line 1710
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 1711
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 1712
    const/4 v0, 0x1

    .line 1715
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private a(JLjava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 204
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->y()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 205
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->i:Z

    if-eqz v0, :cond_46

    .line 206
    if-eqz p3, :cond_3f

    .line 207
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 227
    :goto_12
    if-gtz v0, :cond_15

    move v0, v1

    .line 233
    :cond_15
    :goto_15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 234
    sget-object v2, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    const-string v3, "chunk count : %s for %s contentLen:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_3e
    return v0

    .line 209
    :cond_3f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v0

    goto :goto_12

    .line 212
    :cond_46
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->q:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_7f

    .line 213
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->q:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(J)I

    move-result v0

    .line 217
    :goto_50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/g;->a()Lcom/ss/android/socialbase/downloader/i/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/i/g;->b()Lcom/ss/android/socialbase/downloader/i/h;

    move-result-object v2

    .line 218
    sget-object v3, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    const-string v4, "NetworkQuality is : %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/i/h;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/i/h;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/g/c;->e(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->s:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v3, :cond_86

    .line 222
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->s:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v3, v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(ILcom/ss/android/socialbase/downloader/i/h;)I

    move-result v0

    goto :goto_12

    .line 215
    :cond_7f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->r:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(J)I

    move-result v0

    goto :goto_50

    .line 224
    :cond_86
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->t:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v3, v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(ILcom/ss/android/socialbase/downloader/i/h;)I

    move-result v0

    goto :goto_12

    :cond_8d
    move v0, v1

    .line 230
    goto :goto_15
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/d;)Lcom/ss/android/socialbase/downloader/downloader/r;
    .registers 4

    .prologue
    .line 1719
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->g()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    .line 1720
    if-eqz v0, :cond_7

    .line 1730
    :goto_6
    return-object v0

    .line 1723
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 1724
    if-eqz v0, :cond_1d

    .line 1725
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ak()Ljava/lang/String;

    move-result-object v1

    .line 1726
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1727
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/q;

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/q;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 1730
    :cond_1d
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->A()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    goto :goto_6
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/b;I)Lcom/ss/android/socialbase/downloader/g/b;
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1661
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v3

    .line 1704
    :cond_9
    :goto_9
    return-object v0

    .line 1664
    :cond_a
    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/g/b;->c(Z)J

    move-result-wide v4

    .line 1666
    sget-object v0, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reuseChunk retainLen:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " chunkIndex:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const/4 v0, 0x0

    .line 1669
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v1

    if-nez v1, :cond_142

    sget-wide v6, Lcom/ss/android/socialbase/downloader/b/e;->a:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_142

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->p()Z

    move-result v1

    if-eqz v1, :cond_142

    .line 1670
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v4

    invoke-virtual {p1, v0, v4, v5}, Lcom/ss/android/socialbase/downloader/g/b;->a(IJ)Ljava/util/List;

    move-result-object v0

    .line 1671
    if-eqz v0, :cond_6d

    .line 1672
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 1673
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(Lcom/ss/android/socialbase/downloader/g/b;)V

    goto :goto_5b

    :cond_6d
    move v0, v2

    .line 1680
    :cond_6e
    :goto_6e
    if-eqz v0, :cond_150

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_150

    move v1, v2

    .line 1682
    :goto_77
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_153

    .line 1683
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 1684
    if-eqz v0, :cond_14b

    .line 1685
    sget-object v4, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check can checkUnCompletedChunk -- chunkIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  startOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->l()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contentLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->q()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v4

    if-ltz v4, :cond_e5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->i()Z

    move-result v4

    if-nez v4, :cond_14b

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->c()Z

    move-result v4

    if-nez v4, :cond_14b

    .line 1692
    :cond_e5
    :goto_e5
    if-eqz v0, :cond_9

    .line 1694
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v4

    .line 1696
    sget-object v1, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unComplete chunk "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " curOffset:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reuseChunk chunkIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for subChunk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v5

    invoke-interface {v1, v3, v4, v5, p2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIII)V

    .line 1698
    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/g/b;->c(I)V

    .line 1699
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/b;->a(Z)V

    goto/16 :goto_9

    .line 1677
    :cond_142
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v1

    if-eqz v1, :cond_6e

    move v0, v2

    .line 1678
    goto/16 :goto_6e

    .line 1682
    :cond_14b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_77

    :cond_150
    move-object v0, v3

    .line 1704
    goto/16 :goto_9

    :cond_153
    move-object v0, v3

    goto :goto_e5
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/b;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->B()Ljava/util/List;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/util/List;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/b;)Ljava/util/List;

    move-result-object v0

    .line 655
    return-object v0
.end method

.method private a(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 847
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_13

    .line 848
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x409

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 850
    :cond_13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/util/List;J)V

    .line 851
    return-void
.end method

.method private a(JI)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 854
    const-wide/16 v4, 0x0

    .line 855
    move/from16 v0, p3

    int-to-long v2, v0

    div-long v8, p1, v2

    .line 856
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v10

    .line 858
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 861
    const/4 v2, 0x0

    move-wide v6, v4

    move v4, v2

    :goto_15
    move/from16 v0, p3

    if-ge v4, v0, :cond_4f

    .line 864
    add-int/lit8 v2, p3, -0x1

    if-ne v4, v2, :cond_49

    .line 865
    const-wide/16 v2, 0x0

    .line 870
    :goto_1f
    new-instance v5, Lcom/ss/android/socialbase/downloader/g/b$a;

    invoke-direct {v5, v10}, Lcom/ss/android/socialbase/downloader/g/b$a;-><init>(I)V

    .line 871
    invoke-virtual {v5, v4}, Lcom/ss/android/socialbase/downloader/g/b$a;->a(I)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v5

    .line 872
    invoke-virtual {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/g/b$a;->a(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v5

    .line 873
    invoke-virtual {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/g/b$a;->e(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v5

    .line 874
    invoke-virtual {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/g/b$a;->b(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v5

    .line 875
    invoke-virtual {v5, v2, v3}, Lcom/ss/android/socialbase/downloader/g/b$a;->c(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v2

    .line 876
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/b$a;->a()Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v2

    .line 877
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 879
    add-long/2addr v6, v8

    .line 861
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_15

    .line 867
    :cond_49
    add-long v2, v6, v8

    const-wide/16 v12, 0x1

    sub-long/2addr v2, v12

    goto :goto_1f

    .line 882
    :cond_4f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/g/c;->c(I)V

    .line 883
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    move/from16 v0, p3

    invoke-interface {v2, v10, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(II)Lcom/ss/android/socialbase/downloader/g/c;

    .line 885
    move-wide/from16 v0, p1

    invoke-direct {p0, v11, v0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/util/List;J)V

    .line 886
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 1035
    invoke-static/range {p1 .. p2}, Lcom/ss/android/socialbase/downloader/m/f;->b(J)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1135
    :cond_6
    :goto_6
    return-void

    .line 1039
    :cond_7
    const/4 v2, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/g/f;

    move-result-object v10

    .line 1041
    :try_start_10
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 1042
    sub-long v2, p1, v12

    .line 1043
    invoke-static/range {p3 .. p3}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;)J

    move-result-wide v6

    .line 1046
    const/4 v4, 0x1

    .line 1047
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v5

    .line 1048
    const-string v8, "space_fill_part_download"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_169

    .line 1050
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/ss/android/socialbase/downloader/l/c;->G:J

    .line 1051
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_221

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v8

    sub-long/2addr v2, v8

    move-wide v8, v2

    .line 1054
    :goto_58
    cmp-long v2, v6, v8

    if-gez v2, :cond_218

    .line 1055
    sget-object v2, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkSpaceOverflow: contentLength = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Lcom/ss/android/socialbase/downloader/m/f;->a(J)D

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "MB, downloaded = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1056
    invoke-static {v12, v13}, Lcom/ss/android/socialbase/downloader/m/f;->a(J)D

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "MB, required = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1057
    invoke-static {v8, v9}, Lcom/ss/android/socialbase/downloader/m/f;->a(J)D

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "MB, available = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1058
    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/m/f;->a(J)D

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "MB"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1055
    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_12f

    .line 1060
    const-string v2, "space_fill_min_keep_mb"

    const/16 v3, 0x64

    invoke-virtual {v5, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v5

    .line 1064
    if-lez v5, :cond_12d

    .line 1065
    int-to-long v2, v5

    const-wide/32 v14, 0x100000

    mul-long/2addr v2, v14

    sub-long v2, v6, v2

    .line 1066
    sget-object v11, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkSpaceOverflow: minKeep = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "MB, canDownload = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1067
    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/m/f;->a(J)D

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "MB"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1066
    invoke-static {v11, v5}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-wide/16 v14, 0x0

    cmp-long v5, v2, v14

    if-gtz v5, :cond_fe

    .line 1069
    new-instance v2, Lcom/ss/android/socialbase/downloader/e/e;

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/ss/android/socialbase/downloader/e/e;-><init>(JJ)V

    throw v2
    :try_end_f7
    .catchall {:try_start_10 .. :try_end_f7} :catchall_f7

    .line 1127
    :catchall_f7
    move-exception v2

    if-eqz v10, :cond_fd

    .line 1129
    :try_start_fa
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_212

    .line 1132
    :cond_fd
    :goto_fd
    throw v2

    .line 1071
    :cond_fe
    :try_start_fe
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v6

    add-long/2addr v6, v2

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/ss/android/socialbase/downloader/l/c;->G:J
    :try_end_10b
    .catchall {:try_start_fe .. :try_end_10b} :catchall_f7

    .line 1075
    :goto_10b
    cmp-long v5, v12, p1

    if-gez v5, :cond_21d

    .line 1076
    add-long/2addr v2, v12

    .line 1077
    cmp-long v5, v2, p1

    if-lez v5, :cond_116

    move-wide/from16 v2, p1

    :cond_116
    :goto_116
    move/from16 v16, v4

    move-wide v4, v2

    move/from16 v2, v16

    .line 1106
    :goto_11b
    :try_start_11b
    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Lcom/ss/android/socialbase/downloader/g/f;->b(J)V
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_11b .. :try_end_120} :catch_1a5
    .catchall {:try_start_11b .. :try_end_120} :catchall_f7

    .line 1127
    :cond_120
    :goto_120
    if-eqz v10, :cond_6

    .line 1129
    :try_start_122
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_125} :catch_127

    goto/16 :goto_6

    .line 1130
    :catch_127
    move-exception v2

    .line 1131
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_12d
    move-wide v2, v6

    .line 1073
    goto :goto_10b

    .line 1084
    :cond_12f
    :try_start_12f
    const-string v2, "download_when_space_negative"

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13d

    .line 1085
    const/4 v2, 0x0

    move-wide/from16 v4, p1

    goto :goto_11b

    .line 1087
    :cond_13d
    new-instance v3, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v4, 0x41c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "availableSpace "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_166

    const-string v2, "="

    :goto_154
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_166
    const-string v2, "<"

    goto :goto_154

    .line 1094
    :cond_169
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_19b

    .line 1095
    new-instance v3, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v4, 0x41c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "availableSpace "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_198

    const-string v2, "="

    :goto_186
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_198
    const-string v2, "<"

    goto :goto_186

    .line 1099
    :cond_19b
    cmp-long v5, v6, v2

    if-gez v5, :cond_218

    .line 1100
    new-instance v4, Lcom/ss/android/socialbase/downloader/e/e;

    invoke-direct {v4, v6, v7, v2, v3}, Lcom/ss/android/socialbase/downloader/e/e;-><init>(JJ)V

    throw v4

    .line 1107
    :catch_1a5
    move-exception v3

    .line 1108
    sget-object v6, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkSpaceOverflow: setLength1 e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mustSetLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/f/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c8
    .catchall {:try_start_12f .. :try_end_1c8} :catchall_f7

    .line 1109
    cmp-long v6, v4, p1

    if-gez v6, :cond_208

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_208

    cmp-long v6, v4, v12

    if-lez v6, :cond_208

    .line 1111
    :try_start_1d6
    invoke-virtual {v10, v4, v5}, Lcom/ss/android/socialbase/downloader/g/f;->b(J)V
    :try_end_1d9
    .catch Ljava/lang/Throwable; {:try_start_1d6 .. :try_end_1d9} :catch_1db
    .catchall {:try_start_1d6 .. :try_end_1d9} :catchall_f7

    goto/16 :goto_120

    .line 1112
    :catch_1db
    move-exception v3

    .line 1113
    :try_start_1dc
    sget-object v4, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSpaceOverflow: setLength2 ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mustSetLength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/f/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    if-eqz v2, :cond_120

    .line 1115
    new-instance v2, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v4, 0x410

    invoke-direct {v2, v4, v3}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 1119
    :cond_208
    if-eqz v2, :cond_120

    .line 1120
    new-instance v2, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v4, 0x410

    invoke-direct {v2, v4, v3}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_212
    .catchall {:try_start_1dc .. :try_end_212} :catchall_f7

    .line 1130
    :catch_212
    move-exception v3

    .line 1131
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_fd

    :cond_218
    move v2, v4

    move-wide/from16 v4, p1

    goto/16 :goto_11b

    :cond_21d
    move-wide/from16 v2, p1

    goto/16 :goto_116

    :cond_221
    move-wide v8, v2

    goto/16 :goto_58
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/i/e;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1002
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/b;->a(J)V

    .line 1003
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/g/c;->c(I)V

    .line 1004
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(II)Lcom/ss/android/socialbase/downloader/g/c;

    .line 1005
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/d;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-direct {v0, v1, p2, p1, p0}, Lcom/ss/android/socialbase/downloader/downloader/d;-><init>(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/i/e;Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/l/e;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    .line 1006
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->p()V

    .line 1007
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/i/c;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;,
            Lcom/ss/android/socialbase/downloader/l/c$a;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1221
    if-nez p1, :cond_5

    .line 1306
    :cond_4
    :goto_4
    return-void

    .line 1225
    :cond_5
    :try_start_5
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/i/c;->b()I

    move-result v1

    .line 1227
    const-string v0, "Accept-Ranges"

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1229
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1230
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3, v2}, Lcom/ss/android/socialbase/downloader/g/c;->g(Ljava/lang/String;)V

    .line 1232
    :cond_2c
    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->j:Z

    .line 1233
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->k:Z

    .line 1234
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->j:Z

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->h(Z)V

    .line 1236
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ac()Ljava/lang/String;

    move-result-object v2

    .line 1237
    const-string v0, "Etag"

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/l/c;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1241
    if-eqz v3, :cond_146

    .line 1242
    instance-of v3, p1, Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v3, :cond_c7

    .line 1243
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1244
    const-string v0, ""

    .line 1245
    :cond_63
    const-string v2, "eTag of server file changed"

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    .line 1251
    :goto_69
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->j:Z

    if-nez v0, :cond_71

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->k:Z

    if-eqz v0, :cond_11a

    .line 1253
    :cond_71
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->k:Z

    if-eqz v0, :cond_84

    cmp-long v0, p2, v6

    if-lez v0, :cond_84

    .line 1254
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_d3

    .line 1255
    const-string v0, ""

    const-string v1, "http head request not support"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_84
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/i/c;)J

    move-result-wide v4

    .line 1261
    const-string v0, ""

    .line 1262
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 1263
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/i/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1265
    :goto_a1
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 1266
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->c(Lcom/ss/android/socialbase/downloader/i/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->l:Z

    .line 1271
    :goto_af
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->l:Z

    if-nez v0, :cond_ec

    cmp-long v0, v4, v6

    if-nez v0, :cond_ec

    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/i/e;

    if-nez v0, :cond_ec

    .line 1272
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x3ec

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_c5
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_5 .. :try_end_c5} :catch_c5
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_5 .. :try_end_c5} :catch_d1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c5} :catch_dd

    .line 1299
    :catch_c5
    move-exception v0

    .line 1300
    throw v0

    .line 1247
    :cond_c7
    :try_start_c7
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/c;

    const/16 v2, 0x3ea

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/ss/android/socialbase/downloader/e/c;-><init>(IILjava/lang/String;)V

    throw v0
    :try_end_d1
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_c7 .. :try_end_d1} :catch_c5
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_c7 .. :try_end_d1} :catch_d1
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_d1} :catch_dd

    .line 1301
    :catch_d1
    move-exception v0

    .line 1302
    throw v0

    .line 1257
    :cond_d3
    :try_start_d3
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x3ec

    const-string v2, "isResponseFromBegin but firstOffset > 0"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_dd
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_d3 .. :try_end_dd} :catch_c5
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_d3 .. :try_end_dd} :catch_d1
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_dd} :catch_dd

    .line 1303
    :catch_dd
    move-exception v0

    .line 1304
    const-string v1, "HandleFirstConnection"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1268
    :cond_e5
    :try_start_e5
    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/m/f;->b(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->l:Z

    goto :goto_af

    .line 1275
    :cond_ec
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->l:Z

    if-nez v0, :cond_117

    .line 1276
    const-string v0, "Content-Range"

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_114

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 1279
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 1288
    :goto_107
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1291
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1282
    :cond_114
    add-long v0, p2, v4

    goto :goto_107

    .line 1285
    :cond_117
    const-wide/16 v0, -0x1

    goto :goto_107

    .line 1294
    :cond_11a
    const/16 v0, 0x193

    if-ne v1, v0, :cond_128

    .line 1295
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x417

    const-string v2, "response code error : 403"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1297
    :cond_128
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/c;

    const/16 v2, 0x3ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/ss/android/socialbase/downloader/e/c;-><init>(IILjava/lang/String;)V

    throw v0
    :try_end_143
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_e5 .. :try_end_143} :catch_c5
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_e5 .. :try_end_143} :catch_d1
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_143} :catch_dd

    :cond_143
    move-object v2, v0

    goto/16 :goto_a1

    :cond_146
    move-object v3, v0

    goto/16 :goto_69
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/l/c;)V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->F()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/l/c;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/l/c$a;
        }
    .end annotation

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)V

    .line 1213
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->i:Z

    .line 1215
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c;->h(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 1217
    new-instance v0, Lcom/ss/android/socialbase/downloader/l/c$a;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/socialbase/downloader/l/c$a;-><init>(Lcom/ss/android/socialbase/downloader/l/c;Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;,
            Lcom/ss/android/socialbase/downloader/l/c$a;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_5

    .line 620
    :cond_4
    return-void

    .line 591
    :cond_5
    const/4 v0, 0x0

    .line 592
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 594
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/a/a;->a()Lcom/ss/android/socialbase/downloader/i/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/i/a/a;->b(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/a/d;

    move-result-object v0

    .line 596
    :cond_17
    if-eqz v0, :cond_39

    .line 597
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/i/c;)V

    .line 598
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/c;->l(I)V

    .line 599
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    .line 618
    :goto_26
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    if-nez v0, :cond_4

    .line 619
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x3fe

    new-instance v2, Ljava/io/IOException;

    const-string v3, "download can\'t continue, firstConnection is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 602
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->o()Z

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->C()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/e;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;
    :try_end_4b
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_39 .. :try_end_4b} :catch_51
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_4b} :catch_5a
    .catchall {:try_start_39 .. :try_end_4b} :catchall_53

    .line 614
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/i/c;)V

    goto :goto_26

    .line 603
    :catch_51
    move-exception v0

    .line 604
    :try_start_52
    throw v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 614
    :catchall_53
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/i/c;)V

    throw v0

    .line 605
    :catch_5a
    move-exception v0

    .line 606
    :try_start_5b
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->f(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 607
    const-string v0, ""

    const-string v1, "http code 416"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_53

    .line 614
    :goto_68
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/i/c;)V

    goto :goto_26

    .line 608
    :cond_6e
    :try_start_6e
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->e(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 609
    const-string v0, ""

    const-string v1, "http code 412"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 611
    :cond_7c
    const-string v1, "CreateFirstConnection"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_53

    goto :goto_68
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1422
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1428
    :cond_8
    :goto_8
    return-void

    .line 1424
    :cond_9
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/k;->g:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v0, v2, :cond_25

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v1, p1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(Ljava/util/List;Z)V

    .line 1425
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 1426
    if-eqz v0, :cond_8

    .line 1427
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->l(I)Z

    goto :goto_8

    .line 1424
    :cond_25
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private a(Ljava/util/List;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 896
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 898
    if-eqz v0, :cond_6

    .line 902
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_56

    .line 903
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v2

    sub-long v2, p2, v2

    .line 907
    :goto_22
    cmp-long v4, v2, v6

    if-lez v4, :cond_6

    .line 910
    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/b;->a(J)V

    .line 912
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->S()Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->U()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->E:Z

    if-eqz v2, :cond_76

    .line 913
    :cond_41
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    if-nez v2, :cond_63

    .line 914
    new-instance v2, Lcom/ss/android/socialbase/downloader/l/b;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/ss/android/socialbase/downloader/l/b;-><init>(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/i/e;Lcom/ss/android/socialbase/downloader/l/e;)V

    .line 915
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 905
    :cond_56
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_22

    .line 916
    :cond_63
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    if-lez v2, :cond_6

    .line 917
    new-instance v2, Lcom/ss/android/socialbase/downloader/l/b;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-direct {v2, v0, v3, p0}, Lcom/ss/android/socialbase/downloader/l/b;-><init>(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/l/e;)V

    .line 918
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 921
    :cond_76
    new-instance v2, Lcom/ss/android/socialbase/downloader/l/b;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-direct {v2, v0, v3, p0}, Lcom/ss/android/socialbase/downloader/l/b;-><init>(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/l/e;)V

    .line 922
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 926
    :cond_83
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 927
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 928
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/l/b;

    .line 929
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v4, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v3, v4, :cond_b2

    .line 930
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/b;->b()V

    goto :goto_9c

    .line 932
    :cond_b2
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v4, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v3, v4, :cond_bc

    .line 933
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/b;->a()V

    goto :goto_9c

    .line 936
    :cond_bc
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 938
    :cond_c0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 942
    :try_start_c7
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/e;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 945
    :goto_cb
    if-eqz v0, :cond_e3

    .line 946
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_d0} :catch_e1

    move-result v2

    if-eqz v2, :cond_d4

    .line 997
    :cond_d3
    :goto_d3
    return-void

    .line 949
    :cond_d4
    :try_start_d4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_dc

    .line 954
    :goto_d7
    :try_start_d7
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/e;->d(Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_cb

    .line 950
    :catch_dc
    move-exception v0

    .line 951
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d7

    .line 970
    :catch_e1
    move-exception v0

    goto :goto_d3

    .line 958
    :cond_e3
    if-eqz v1, :cond_d3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 959
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ef
    :goto_ef
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 960
    if-eqz v0, :cond_ef

    .line 961
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_100} :catch_e1

    move-result v2

    if-nez v2, :cond_ef

    .line 963
    :try_start_103
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_103 .. :try_end_106} :catch_107

    goto :goto_ef

    .line 964
    :catch_107
    move-exception v0

    goto :goto_ef

    .line 974
    :cond_109
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 975
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_142

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/l/b;

    .line 976
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v4, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v3, v4, :cond_130

    .line 977
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/b;->b()V

    goto :goto_11a

    .line 979
    :cond_130
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v4, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v3, v4, :cond_13a

    .line 980
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/b;->a()V

    goto :goto_11a

    .line 984
    :cond_13a
    invoke-static {v0}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11a

    .line 988
    :cond_142
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 992
    :try_start_148
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/e;->b(Ljava/util/List;)V
    :try_end_14b
    .catch Ljava/lang/InterruptedException; {:try_start_148 .. :try_end_14b} :catch_14c

    goto :goto_d3

    .line 993
    :catch_14c
    move-exception v0

    .line 994
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3fc

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 1202
    const/16 v1, 0x19c

    if-ne p1, v1, :cond_6

    .line 1208
    :cond_5
    :goto_5
    return v0

    .line 1205
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->k:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->j:Z

    if-nez v1, :cond_5

    .line 1208
    :cond_20
    const/16 v1, 0xc9

    if-eq p1, v1, :cond_28

    const/16 v1, 0x1a0

    if-ne p1, v1, :cond_34

    :cond_28
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    :cond_34
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private b(J)Lcom/ss/android/socialbase/downloader/g/b;
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 642
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/b$a;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/g/b$a;-><init>(I)V

    const/4 v1, -0x1

    .line 643
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/b$a;->a(I)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v0

    .line 644
    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/b$a;->a(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v0

    .line 645
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/g/b$a;->e(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v0

    .line 646
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/g/b$a;->b(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v0

    .line 647
    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/b$a;->c(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    .line 648
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/b$a;->d(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b$a;->a()Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v0

    .line 642
    return-object v0
.end method

.method private d(Lcom/ss/android/socialbase/downloader/e/a;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1599
    .line 1600
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v2, :cond_b2

    .line 1601
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_23

    .line 1620
    :goto_e
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v2, v3, :cond_21

    if-eqz v0, :cond_21

    .line 1621
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->f(I)V

    :cond_21
    move v0, v1

    .line 1623
    :goto_22
    return v0

    .line 1603
    :cond_23
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->aJ()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1604
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->E()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1605
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->f(I)V

    move v0, v1

    goto :goto_e

    .line 1606
    :cond_43
    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v2

    const/16 v3, 0x3f3

    if-eq v2, v3, :cond_5b

    .line 1607
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_80

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_80

    :cond_5b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->aL()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1608
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->D()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1609
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/c;->f(I)V

    .line 1610
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/g/c;->j(Z)V

    move v0, v1

    goto :goto_e

    .line 1612
    :cond_80
    new-instance v2, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v3

    const-string v4, "retry for exception, but current retry time : %s , retry Time %s all used, last error is %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->D()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto/16 :goto_22

    .line 1616
    :cond_b2
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x413

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry for exception, but retain retry time is null, last error is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto/16 :goto_22
.end method

.method private h()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    if-nez v0, :cond_5

    .line 162
    :goto_4
    return-void

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->D()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->al()I

    move-result v1

    sub-int/2addr v0, v1

    .line 155
    if-gez v0, :cond_15

    .line 156
    const/4 v0, 0x0

    .line 157
    :cond_15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_21

    .line 158
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_4

    .line 160
    :cond_21
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_4
.end method

.method private i()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 241
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    .line 242
    if-eq v1, v0, :cond_35

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->as()Z

    move-result v2

    if-nez v2, :cond_35

    .line 243
    const/4 v0, -0x2

    if-eq v1, v0, :cond_34

    const/4 v0, -0x4

    if-eq v1, v0, :cond_34

    .line 244
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The download Task can\'t start, because its status is not prepare:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 246
    :cond_34
    const/4 v0, 0x0

    .line 248
    :cond_35
    return v0
.end method

.method private j()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/b;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 253
    :try_start_2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    .line 254
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-eqz v3, :cond_36

    .line 256
    const/16 v3, 0x800

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 257
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->d()Z

    .line 259
    :cond_19
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v3

    .line 260
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->aU()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 261
    :cond_27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aM()V
    :try_end_2c
    .catch Lcom/ss/android/socialbase/downloader/e/b; {:try_start_2 .. :try_end_2c} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_88

    move v0, v1

    .line 284
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_36

    .line 286
    :try_start_2f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_36} :catch_b0
    .catch Lcom/ss/android/socialbase/downloader/e/b; {:try_start_2f .. :try_end_36} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_36} :catch_88

    .line 293
    :cond_36
    :goto_36
    :try_start_36
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->h()V

    .line 301
    :cond_39
    :goto_39
    return-void

    .line 264
    :cond_3a
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v4

    .line 265
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/g/c;->A()Ljava/lang/String;

    move-result-object v5

    .line 266
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/g/c;Z)V

    .line 267
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 268
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/b;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/e/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_67
    .catch Lcom/ss/android/socialbase/downloader/e/b; {:try_start_36 .. :try_end_67} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_67} :catch_88

    .line 294
    :catch_67
    move-exception v0

    .line 295
    throw v0

    .line 270
    :cond_69
    :try_start_69
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/g/c;)I
    :try_end_6c
    .catch Lcom/ss/android/socialbase/downloader/e/b; {:try_start_69 .. :try_end_6c} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_88

    move-result v4

    .line 271
    if-eq v4, v2, :cond_75

    .line 273
    :try_start_6f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->f(I)Z
    :try_end_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_74} :catch_83
    .catch Lcom/ss/android/socialbase/downloader/e/b; {:try_start_6f .. :try_end_74} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_74} :catch_88

    :goto_74
    move v0, v1

    .line 280
    :cond_75
    const/16 v2, 0x1000

    :try_start_77
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    if-eq v3, v2, :cond_2d

    move v0, v1

    .line 281
    goto :goto_2d

    .line 274
    :catch_83
    move-exception v0

    .line 275
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_87
    .catch Lcom/ss/android/socialbase/downloader/e/b; {:try_start_77 .. :try_end_87} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_87} :catch_88

    goto :goto_74

    .line 296
    :catch_88
    move-exception v0

    .line 297
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v1, :cond_39

    .line 298
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    new-instance v3, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v4, 0x3eb

    const-string v5, "checkTaskCache"

    invoke-static {v0, v5}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    goto :goto_39

    .line 287
    :catch_b0
    move-exception v0

    .line 288
    :try_start_b1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_b4
    .catch Lcom/ss/android/socialbase/downloader/e/b; {:try_start_b1 .. :try_end_b4} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_88

    goto :goto_36
.end method

.method private k()V
    .registers 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 360
    :try_start_4
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->a:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 361
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->L()V

    .line 362
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->R()V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_76

    .line 366
    :try_start_12
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->j()V
    :try_end_15
    .catch Lcom/ss/android/socialbase/downloader/e/b; {:try_start_12 .. :try_end_15} :catch_2c
    .catchall {:try_start_12 .. :try_end_15} :catchall_76

    move v0, v2

    .line 373
    :goto_16
    :try_start_16
    iget-boolean v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->D:Z

    if-nez v3, :cond_1f

    .line 374
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->b()V

    .line 376
    :cond_1f
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->D:Z

    .line 378
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_76

    move-result v3

    if-eqz v3, :cond_51

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    .line 545
    :goto_2b
    return-void

    .line 367
    :catch_2c
    move-exception v0

    .line 368
    :try_start_2d
    sget-object v3, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->F:Ljava/lang/String;

    move v0, v1

    .line 370
    goto :goto_16

    .line 381
    :cond_51
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->F:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7b

    if-eqz v0, :cond_7b

    .line 382
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 383
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->e:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;
    :try_end_6d
    .catchall {:try_start_2d .. :try_end_6d} :catchall_76

    .line 543
    :goto_6d
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto :goto_2b

    .line 385
    :cond_71
    :try_start_71
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->h:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_76

    goto :goto_6d

    .line 543
    :catchall_76
    move-exception v0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    throw v0

    .line 389
    :cond_7b
    :try_start_7b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/a;->a()Lcom/ss/android/socialbase/downloader/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a;->b()V

    .line 392
    :goto_82
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_76

    move-result v0

    if-eqz v0, :cond_8c

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto :goto_2b

    .line 397
    :cond_8c
    :try_start_8c
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->B()V

    .line 399
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->x()V

    .line 401
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->A()V

    .line 403
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Ljava/util/List;

    move-result-object v3

    .line 404
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->C()V

    .line 406
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->I()Ljava/lang/String;

    move-result-object v8

    .line 408
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z
    :try_end_ad
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_8c .. :try_end_ad} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_8c .. :try_end_ad} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_ad} :catch_1eb
    .catchall {:try_start_8c .. :try_end_ad} :catchall_262

    move-result v0

    if-eqz v0, :cond_b8

    .line 537
    :try_start_b0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_76

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto/16 :goto_2b

    .line 411
    :cond_b8
    :try_start_b8
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->i:Z

    if-eqz v0, :cond_313

    .line 412
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->d(Lcom/ss/android/socialbase/downloader/g/c;)J

    move-result-wide v4

    .line 416
    :goto_c2
    invoke-direct {p0, v4, v5}, Lcom/ss/android/socialbase/downloader/l/c;->b(J)Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v9

    .line 419
    invoke-direct {p0, v9}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/g/b;)Ljava/util/List;

    move-result-object v10

    .line 421
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/ss/android/socialbase/downloader/g/c;->l(I)V

    .line 423
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v0

    if-ne v0, v1, :cond_ea

    .line 425
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/a/a;->a()Lcom/ss/android/socialbase/downloader/i/a/a;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lcom/ss/android/socialbase/downloader/i/a/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/a/c;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_ea

    .line 427
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->z:Lcom/ss/android/socialbase/downloader/i/c;

    .line 428
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/ss/android/socialbase/downloader/g/c;->l(I)V

    .line 431
    :cond_ea
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->z:Lcom/ss/android/socialbase/downloader/i/c;

    if-nez v0, :cond_100

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->E:Z

    if-nez v0, :cond_100

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->U()Z
    :try_end_f7
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_b8 .. :try_end_f7} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_b8 .. :try_end_f7} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_f7} :catch_1eb
    .catchall {:try_start_b8 .. :try_end_f7} :catchall_262

    move-result v0

    if-eqz v0, :cond_100

    .line 433
    :try_start_fa
    invoke-static {v8, v10}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->z:Lcom/ss/android/socialbase/downloader/i/c;
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_100} :catch_11a
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_fa .. :try_end_100} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_fa .. :try_end_100} :catch_173
    .catchall {:try_start_fa .. :try_end_100} :catchall_262

    .line 439
    :cond_100
    :goto_100
    :try_start_100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->z:Lcom/ss/android/socialbase/downloader/i/c;

    if-nez v0, :cond_160

    .line 441
    invoke-direct {p0, v8, v10}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 442
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-direct {p0, v0, v4, v5}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/i/c;J)V

    .line 455
    :goto_10c
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z
    :try_end_10f
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_100 .. :try_end_10f} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_100 .. :try_end_10f} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_10f} :catch_1eb
    .catchall {:try_start_100 .. :try_end_10f} :catchall_262

    move-result v0

    if-eqz v0, :cond_1b8

    .line 537
    :try_start_112
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_76

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto/16 :goto_2b

    .line 434
    :catch_11a
    move-exception v0

    .line 435
    :try_start_11b
    iget-object v11, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(Ljava/lang/String;)V
    :try_end_124
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_11b .. :try_end_124} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_11b .. :try_end_124} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_11b .. :try_end_124} :catch_1eb
    .catchall {:try_start_11b .. :try_end_124} :catchall_262

    goto :goto_100

    .line 491
    :catch_125
    move-exception v0

    .line 492
    :try_start_126
    sget-object v3, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadInner: baseException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v4, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v3, v4, :cond_294

    .line 494
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v3

    const/16 v4, 0x401

    if-eq v3, v4, :cond_154

    .line 495
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v3

    const/16 v4, 0x3f1

    if-ne v3, v4, :cond_26b

    .line 496
    :cond_154
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->e:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;
    :try_end_158
    .catchall {:try_start_126 .. :try_end_158} :catchall_262

    .line 537
    :try_start_158
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_15b
    .catchall {:try_start_158 .. :try_end_15b} :catchall_76

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto/16 :goto_2b

    .line 446
    :cond_160
    :try_start_160
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->z:Lcom/ss/android/socialbase/downloader/i/c;

    invoke-direct {p0, v0, v4, v5}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/i/c;J)V
    :try_end_165
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_165} :catch_166
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_160 .. :try_end_165} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_160 .. :try_end_165} :catch_173
    .catchall {:try_start_160 .. :try_end_165} :catchall_262

    goto :goto_10c

    .line 447
    :catch_166
    move-exception v0

    .line 449
    const/4 v0, 0x1

    :try_start_168
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->E:Z

    .line 450
    invoke-direct {p0, v8, v10}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 451
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-direct {p0, v0, v4, v5}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/i/c;J)V
    :try_end_172
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_168 .. :try_end_172} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_168 .. :try_end_172} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_168 .. :try_end_172} :catch_1eb
    .catchall {:try_start_168 .. :try_end_172} :catchall_262

    goto :goto_10c

    .line 511
    :catch_173
    move-exception v0

    .line 512
    :try_start_174
    sget-object v3, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadInner: retry throwable for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/c$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v4, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v3, v4, :cond_2ec

    .line 514
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_298

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_298

    .line 515
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/g/c;->f(I)V

    .line 516
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V
    :try_end_1b3
    .catchall {:try_start_174 .. :try_end_1b3} :catchall_262

    .line 537
    :try_start_1b3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_1b6
    .catchall {:try_start_1b3 .. :try_end_1b6} :catchall_76

    goto/16 :goto_82

    .line 458
    :cond_1b8
    :try_start_1b8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v4

    .line 459
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v5, v0, v11}, Lcom/ss/android/socialbase/downloader/l/c;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, v4, v5, v3}, Lcom/ss/android/socialbase/downloader/l/c;->a(JLjava/util/List;)I

    move-result v11

    .line 463
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z
    :try_end_1d4
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_1b8 .. :try_end_1d4} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_1b8 .. :try_end_1d4} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_1b8 .. :try_end_1d4} :catch_1eb
    .catchall {:try_start_1b8 .. :try_end_1d4} :catchall_262

    move-result v0

    if-eqz v0, :cond_1df

    .line 537
    :try_start_1d7
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_1da
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_76

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto/16 :goto_2b

    .line 466
    :cond_1df
    if-gtz v11, :cond_21c

    .line 467
    :try_start_1e1
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v3, 0x408

    const-string v4, "chunkCount is 0"

    invoke-direct {v0, v3, v4}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1eb
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_1e1 .. :try_end_1eb} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_1e1 .. :try_end_1eb} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_1e1 .. :try_end_1eb} :catch_1eb
    .catchall {:try_start_1e1 .. :try_end_1eb} :catchall_262

    .line 531
    :catch_1eb
    move-exception v0

    .line 532
    :try_start_1ec
    sget-object v1, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadInner: throwable =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v1, v2, :cond_214

    .line 534
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x415

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_214
    .catchall {:try_start_1ec .. :try_end_214} :catchall_262

    .line 537
    :cond_214
    :try_start_214
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_217
    .catchall {:try_start_214 .. :try_end_217} :catchall_76

    .line 543
    :goto_217
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto/16 :goto_2b

    .line 470
    :cond_21c
    if-ne v11, v1, :cond_236

    move v0, v1

    :goto_21f
    :try_start_21f
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->h:Z

    .line 472
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->h:Z

    if-eqz v0, :cond_241

    .line 474
    invoke-direct {p0, v8, v10}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 475
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z
    :try_end_22b
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_21f .. :try_end_22b} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_21f .. :try_end_22b} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_21f .. :try_end_22b} :catch_1eb
    .catchall {:try_start_21f .. :try_end_22b} :catchall_262

    move-result v0

    if-eqz v0, :cond_238

    .line 537
    :try_start_22e
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_231
    .catchall {:try_start_22e .. :try_end_231} :catchall_76

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto/16 :goto_2b

    :cond_236
    move v0, v2

    .line 470
    goto :goto_21f

    .line 477
    :cond_238
    :try_start_238
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-direct {p0, v9, v0}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/i/e;)V
    :try_end_23d
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_238 .. :try_end_23d} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_238 .. :try_end_23d} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_238 .. :try_end_23d} :catch_1eb
    .catchall {:try_start_238 .. :try_end_23d} :catchall_262

    .line 537
    :goto_23d
    :try_start_23d
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_240
    .catchall {:try_start_23d .. :try_end_240} :catchall_76

    goto :goto_217

    .line 480
    :cond_241
    :try_start_241
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->S()Z

    move-result v0

    if-nez v0, :cond_24c

    .line 481
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->n()V

    .line 483
    :cond_24c
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->r()Z
    :try_end_24f
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_241 .. :try_end_24f} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_241 .. :try_end_24f} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_241 .. :try_end_24f} :catch_1eb
    .catchall {:try_start_241 .. :try_end_24f} :catchall_262

    move-result v0

    if-eqz v0, :cond_25a

    .line 537
    :try_start_252
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_255
    .catchall {:try_start_252 .. :try_end_255} :catchall_76

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto/16 :goto_2b

    .line 485
    :cond_25a
    :try_start_25a
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->i:Z

    if-eqz v0, :cond_267

    .line 486
    invoke-direct {p0, v11, v3}, Lcom/ss/android/socialbase/downloader/l/c;->a(ILjava/util/List;)V
    :try_end_261
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_25a .. :try_end_261} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_25a .. :try_end_261} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_25a .. :try_end_261} :catch_1eb
    .catchall {:try_start_25a .. :try_end_261} :catchall_262

    goto :goto_23d

    .line 537
    :catchall_262
    move-exception v0

    :try_start_263
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V

    throw v0
    :try_end_267
    .catchall {:try_start_263 .. :try_end_267} :catchall_76

    .line 488
    :cond_267
    :try_start_267
    invoke-direct {p0, v4, v5, v11}, Lcom/ss/android/socialbase/downloader/l/c;->a(JI)V
    :try_end_26a
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_267 .. :try_end_26a} :catch_125
    .catch Lcom/ss/android/socialbase/downloader/l/c$a; {:try_start_267 .. :try_end_26a} :catch_173
    .catch Ljava/lang/Throwable; {:try_start_267 .. :try_end_26a} :catch_1eb
    .catchall {:try_start_267 .. :try_end_26a} :catchall_262

    goto :goto_23d

    .line 498
    :cond_26b
    :try_start_26b
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v3

    if-eqz v3, :cond_291

    .line 499
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v3

    if-eqz v3, :cond_27a

    .line 500
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->D()V

    .line 502
    :cond_27a
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/e/a;J)Lcom/ss/android/socialbase/downloader/e/g;

    move-result-object v0

    .line 503
    sget-object v3, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;
    :try_end_282
    .catchall {:try_start_26b .. :try_end_282} :catchall_262

    if-ne v0, v3, :cond_28c

    .line 537
    :try_start_284
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_287
    .catchall {:try_start_284 .. :try_end_287} :catchall_76

    .line 543
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto/16 :goto_2b

    .line 537
    :cond_28c
    :try_start_28c
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_28f
    .catchall {:try_start_28c .. :try_end_28f} :catchall_76

    goto/16 :goto_82

    .line 508
    :cond_291
    :try_start_291
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_294
    .catchall {:try_start_291 .. :try_end_294} :catchall_262

    .line 537
    :cond_294
    :try_start_294
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_297
    .catchall {:try_start_294 .. :try_end_297} :catchall_76

    goto :goto_217

    .line 518
    :cond_298
    :try_start_298
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_2f1

    .line 519
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->aJ()Z

    move-result v3

    if-eqz v3, :cond_2c5

    .line 520
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 521
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->D()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 522
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/g/c;->f(I)V
    :try_end_2c0
    .catchall {:try_start_298 .. :try_end_2c0} :catchall_262

    .line 537
    :try_start_2c0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_2c3
    .catchall {:try_start_2c0 .. :try_end_2c3} :catchall_76

    goto/16 :goto_82

    .line 525
    :cond_2c5
    :try_start_2c5
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3fa

    const-string v3, "retry for Throwable, but retry Time %s all used, last error is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->D()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/c$a;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_2ec
    .catchall {:try_start_2c5 .. :try_end_2ec} :catchall_262

    .line 537
    :cond_2ec
    :goto_2ec
    :try_start_2ec
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V
    :try_end_2ef
    .catchall {:try_start_2ec .. :try_end_2ef} :catchall_76

    goto/16 :goto_217

    .line 528
    :cond_2f1
    :try_start_2f1
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x413

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry for Throwable, but retain retry time is NULL, last error is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_312
    .catchall {:try_start_2f1 .. :try_end_312} :catchall_262

    goto :goto_2ec

    :cond_313
    move-wide v4, v6

    goto/16 :goto_c2
.end method

.method private l()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 548
    .line 550
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v0, v1, :cond_2a

    move v1, v2

    .line 552
    :goto_f
    :try_start_f
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->s()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_2c

    move-result v0

    move v4, v0

    move v0, v3

    .line 562
    :goto_15
    if-nez v4, :cond_19

    if-eqz v0, :cond_6f

    .line 563
    :cond_19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 564
    if-eqz v1, :cond_29

    .line 566
    :try_start_20
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_29

    .line 575
    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/l/c;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_48

    .line 586
    :cond_29
    :goto_29
    return-void

    :cond_2a
    move v1, v3

    .line 550
    goto :goto_f

    .line 553
    :catch_2c
    move-exception v0

    .line 554
    instance-of v4, v0, Lcom/ss/android/socialbase/downloader/e/a;

    if-eqz v4, :cond_3b

    .line 555
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    check-cast v0, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    :goto_38
    move v0, v2

    move v4, v2

    .line 559
    goto :goto_15

    .line 557
    :cond_3b
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v5, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v6, 0x416

    invoke-direct {v5, v6, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_38

    .line 577
    :catch_48
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 579
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    new-instance v4, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v5, 0x3f6

    const-string v6, "removeDownloadRunnable"

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v3

    :cond_6b
    invoke-static {v1, v2, v4, v3}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    goto :goto_29

    .line 583
    :cond_6f
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->D:Z

    .line 584
    sget-object v0, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    const-string v1, "jump to restart"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method private m()V
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->z:Lcom/ss/android/socialbase/downloader/i/c;

    if-eqz v0, :cond_c

    .line 624
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->z:Lcom/ss/android/socialbase/downloader/i/c;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/c;->c()V

    .line 625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->z:Lcom/ss/android/socialbase/downloader/i/c;

    .line 627
    :cond_c
    return-void
.end method

.method private n()V
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_c

    .line 631
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/e;->d()V

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->y:Lcom/ss/android/socialbase/downloader/i/e;

    .line 634
    :cond_c
    return-void
.end method

.method private o()V
    .registers 1

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->m()V

    .line 638
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->n()V

    .line 639
    return-void
.end method

.method private p()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_15

    .line 660
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v0, v1, :cond_16

    .line 661
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 662
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    .line 670
    :cond_15
    :goto_15
    return-void

    .line 663
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v0, v1, :cond_28

    .line 664
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 665
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    goto :goto_15

    .line 667
    :cond_28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->d()V

    goto :goto_15
.end method

.method private q()Z
    .registers 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private r()Z
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 677
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->q()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    if-ne v0, v1, :cond_31

    .line 678
    :cond_f
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->q()Z

    move-result v0

    if-nez v0, :cond_21

    .line 679
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    if-ne v0, v1, :cond_23

    .line 680
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 685
    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 687
    :goto_22
    return v0

    .line 681
    :cond_23
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_21

    .line 682
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    goto :goto_21

    .line 687
    :cond_31
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private s()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 692
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/a;->a()Lcom/ss/android/socialbase/downloader/i/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/i/a;->c()V

    .line 694
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->d:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v2, v3, :cond_17

    .line 695
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->x:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 728
    :cond_16
    :goto_16
    return v0

    .line 696
    :cond_17
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v2, v3, :cond_23

    .line 697
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->c()V

    goto :goto_16

    .line 698
    :cond_23
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v2, v3, :cond_2f

    .line 699
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->d()V

    goto :goto_16

    .line 700
    :cond_2f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->e:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v2, v3, :cond_3b

    .line 701
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->g()V

    goto :goto_16

    .line 702
    :cond_3b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->h:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v2, v3, :cond_50

    .line 704
    :try_start_41
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Ljava/lang/String;)V
    :try_end_48
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_41 .. :try_end_48} :catch_49

    goto :goto_16

    .line 705
    :catch_49
    move-exception v1

    .line 706
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_16

    .line 708
    :cond_50
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->i:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v2, v3, :cond_5f

    .line 709
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->x:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)V

    move v0, v1

    .line 710
    goto :goto_16

    .line 711
    :cond_5f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->g:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v2, v3, :cond_16

    .line 713
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v2, v3, :cond_83

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->t()Z

    move-result v2

    if-nez v2, :cond_83

    .line 714
    sget-object v2, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    const-string v3, "doTaskStatusHandle retryDelay"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->v()V

    .line 716
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v2, v3, :cond_16

    move v0, v1

    goto :goto_16

    .line 719
    :cond_83
    :try_start_83
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->u()Z

    move-result v2

    if-nez v2, :cond_8b

    move v0, v1

    .line 720
    goto :goto_16

    .line 721
    :cond_8b
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->f()V

    .line 722
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->d()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_97} :catch_99

    goto/16 :goto_16

    .line 723
    :catch_99
    move-exception v1

    .line 724
    new-instance v2, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v3, 0x3f0

    const-string v4, "doTaskStatusHandle onComplete"

    invoke-static {v1, v4}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto/16 :goto_16
.end method

.method private t()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 732
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v0

    if-gt v0, v1, :cond_2a

    .line 733
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v4

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_28

    move v0, v1

    .line 745
    :goto_27
    return v0

    :cond_28
    move v0, v2

    .line 736
    goto :goto_27

    .line 738
    :cond_2a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Ljava/util/List;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_40

    :cond_3e
    move v0, v2

    .line 740
    goto :goto_27

    .line 741
    :cond_40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 742
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->i()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_58
    move v0, v2

    .line 743
    goto :goto_27

    :cond_5a
    move v0, v1

    .line 745
    goto :goto_27
.end method

.method private u()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 749
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aD()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 750
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/c;->c(J)V

    .line 752
    :cond_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_41

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->V()Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_41

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_66

    .line 753
    :cond_41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/b;->b:Lcom/ss/android/socialbase/downloader/b/b;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/b;)V

    .line 754
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aM()V

    .line 755
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 756
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)V

    .line 757
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 758
    const/4 v0, 0x0

    .line 760
    :goto_65
    return v0

    :cond_66
    const/4 v0, 0x1

    goto :goto_65
.end method

.method private v()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 764
    const/4 v1, 0x1

    .line 766
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->w()J

    move-result-wide v4

    .line 768
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.ss.android.downloader.action.DOWNLOAD_WAKEUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    const-string v3, "extra_download_id"

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 770
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v3

    const-class v6, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 771
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v3, v6, :cond_55

    .line 772
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->w:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v4

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v10, v0, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v6, v8, v9, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_42} :catch_71
    .catchall {:try_start_6 .. :try_end_42} :catchall_cc

    .line 792
    :goto_42
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 793
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/j;)V

    .line 794
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 799
    :goto_54
    return-void

    .line 774
    :cond_55
    :try_start_55
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->w:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v4

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v10, v0, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v6, v8, v9, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_70} :catch_71
    .catchall {:try_start_55 .. :try_end_70} :catchall_cc

    goto :goto_42

    .line 777
    :catch_71
    move-exception v0

    .line 778
    :try_start_72
    instance-of v0, v0, Ljava/lang/NoSuchMethodError;
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_cc

    if-eqz v0, :cond_c5

    .line 780
    :try_start_76
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.ss.android.downloader.action.DOWNLOAD_WAKEUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v3

    const-class v6, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 782
    const-string v3, "extra_download_id"

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->w:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v6, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_ac} :catch_c2
    .catchall {:try_start_76 .. :try_end_ac} :catchall_cc

    move v0, v1

    .line 791
    :goto_ad
    if-eqz v0, :cond_c7

    .line 792
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 793
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/j;)V

    .line 794
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    goto :goto_54

    .line 784
    :catch_c2
    move-exception v0

    move v0, v2

    .line 786
    goto :goto_ad

    :cond_c5
    move v0, v2

    .line 788
    goto :goto_ad

    .line 796
    :cond_c7
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->a:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    goto :goto_54

    .line 791
    :catchall_cc
    move-exception v0

    .line 792
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 793
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/j;)V

    .line 794
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 796
    throw v0
.end method

.method private w()J
    .registers 4

    .prologue
    .line 802
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->u:Lcom/ss/android/socialbase/downloader/downloader/r;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->G()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->F()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private x()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/l/c$a;,
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    .line 808
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/g/c;)I

    move-result v0

    .line 809
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->aI()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 810
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x3f1

    const-string v2, "file has downloaded"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 813
    :cond_1e
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    .line 815
    if-eqz v2, :cond_9b

    .line 816
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v3

    .line 818
    if-eqz v3, :cond_9b

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    if-eq v4, v1, :cond_9b

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 820
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 821
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->f(I)Z

    .line 822
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x401

    const-string v2, "another same task is downloading"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 825
    :cond_53
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v3, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Ljava/util/List;

    move-result-object v3

    .line 826
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 827
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->f(I)Z

    .line 829
    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->aQ()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 830
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/g/c;Z)V

    .line 831
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 833
    if-eqz v3, :cond_93

    .line 834
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 835
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/b;->b(I)V

    .line 836
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v3, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    goto :goto_7e

    .line 839
    :cond_93
    new-instance v0, Lcom/ss/android/socialbase/downloader/l/c$a;

    const-string v1, "retry task because id generator changed"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/l/c$a;-><init>(Lcom/ss/android/socialbase/downloader/l/c;Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_9b
    return-void
.end method

.method private y()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1027
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v2, :cond_1a

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->i:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v2

    if-le v2, v0, :cond_1a

    :cond_12
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->ap()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    move v0, v1

    .line 1031
    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->j:Z

    if-eqz v2, :cond_24

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->l:Z

    if-eqz v2, :cond_1b

    :cond_24
    move v0, v1

    goto :goto_1b
.end method

.method private z()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    const-wide/32 v12, 0x100000

    const-wide/16 v2, 0x0

    .line 1138
    .line 1140
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;)J
    :try_end_e
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_5 .. :try_end_e} :catch_96

    move-result-wide v0

    .line 1143
    :goto_f
    sget-object v4, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSpaceOverflowInProgress: available = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    cmp-long v4, v0, v2

    if-lez v4, :cond_a6

    .line 1145
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1146
    cmp-long v6, v0, v4

    if-gez v6, :cond_a6

    .line 1148
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v6

    const-string v7, "space_fill_min_keep_mb"

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v6

    .line 1151
    if-lez v6, :cond_a6

    .line 1152
    int-to-long v8, v6

    mul-long/2addr v8, v12

    sub-long v8, v0, v8

    .line 1153
    sget-object v7, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkSpaceOverflowInProgress: minKeep  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "MB, canDownload = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1154
    invoke-static {v8, v9}, Lcom/ss/android/socialbase/downloader/m/f;->a(J)D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "MB"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1153
    invoke-static {v7, v6}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    cmp-long v6, v8, v2

    if-gtz v6, :cond_9a

    .line 1156
    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->G:J

    .line 1157
    new-instance v2, Lcom/ss/android/socialbase/downloader/e/e;

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/ss/android/socialbase/downloader/e/e;-><init>(JJ)V

    throw v2

    .line 1141
    :catch_96
    move-exception v0

    move-wide v0, v2

    goto/16 :goto_f

    .line 1160
    :cond_9a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    add-long v2, v8, v12

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->G:J

    .line 1168
    :goto_a5
    return-void

    .line 1167
    :cond_a6
    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->G:J

    goto :goto_a5
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/e/a;J)Lcom/ss/android/socialbase/downloader/e/g;
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1492
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/l/c;->x:Lcom/ss/android/socialbase/downloader/e/a;

    .line 1493
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    neg-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/c;->b(J)V

    .line 1494
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 1495
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->q()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1496
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    .line 1589
    :goto_19
    return-object v0

    .line 1499
    :cond_1a
    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v0

    const/16 v1, 0x417

    if-ne v0, v1, :cond_80

    .line 1500
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->A:Lcom/ss/android/socialbase/downloader/d/u;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->am()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1501
    :cond_30
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/l/c;->d(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 1502
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    goto :goto_19

    .line 1504
    :cond_39
    new-instance v0, Lcom/ss/android/socialbase/downloader/l/c$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/l/c$1;-><init>(Lcom/ss/android/socialbase/downloader/l/c;)V

    .line 1511
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->A:Lcom/ss/android/socialbase/downloader/d/u;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/d/u;->a(Lcom/ss/android/socialbase/downloader/d/t;)Z

    move-result v1

    .line 1512
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->an()V

    .line 1513
    if-eqz v1, :cond_126

    .line 1514
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1515
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->E()V

    .line 1516
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 1517
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->g:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 1518
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    goto :goto_19

    :cond_60
    move v0, v7

    .line 1582
    :goto_61
    if-nez v0, :cond_6c

    .line 1583
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->G()Z

    move-result v0

    .line 1584
    if-eqz v0, :cond_6c

    .line 1585
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->E()V

    .line 1588
    :cond_6c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v1, v2, :cond_11f

    :goto_74
    invoke-virtual {v0, p1, v7}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 1589
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v0, v1, :cond_122

    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    goto :goto_19

    .line 1524
    :cond_80
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->g(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 1526
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->B:Lcom/ss/android/socialbase/downloader/d/p;

    if-nez v0, :cond_90

    .line 1527
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 1528
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    goto :goto_19

    .line 1530
    :cond_90
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1531
    new-instance v6, Lcom/ss/android/socialbase/downloader/l/c$2;

    invoke-direct {v6, p0, v9}, Lcom/ss/android/socialbase/downloader/l/c$2;-><init>(Lcom/ss/android/socialbase/downloader/l/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1542
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/e/e;

    if-eqz v0, :cond_eb

    move-object v0, p1

    .line 1543
    check-cast v0, Lcom/ss/android/socialbase/downloader/e/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/e;->c()J

    move-result-wide v2

    move-object v0, p1

    .line 1544
    check-cast v0, Lcom/ss/android/socialbase/downloader/e/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/e;->d()J

    move-result-wide v4

    .line 1549
    :goto_ac
    monitor-enter p0

    .line 1550
    :try_start_ad
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->B:Lcom/ss/android/socialbase/downloader/d/p;

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/d/p;->a(JJLcom/ss/android/socialbase/downloader/d/o;)Z

    move-result v0

    .line 1551
    if-eqz v0, :cond_f4

    .line 1552
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "not_delete_when_clean_space"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 1555
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->u()Z

    .line 1557
    :cond_cb
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_107

    .line 1558
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->g:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v0, v1, :cond_e3

    .line 1559
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->g:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 1560
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->E()V

    .line 1561
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 1563
    :cond_e3
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    monitor-exit p0

    goto/16 :goto_19

    .line 1573
    :catchall_e8
    move-exception v0

    monitor-exit p0
    :try_end_ea
    .catchall {:try_start_ad .. :try_end_ea} :catchall_e8

    throw v0

    .line 1546
    :cond_eb
    const-wide/16 v2, -0x1

    .line 1547
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v4

    goto :goto_ac

    .line 1567
    :cond_f4
    :try_start_f4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->g:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v0, v1, :cond_ff

    .line 1568
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    monitor-exit p0

    goto/16 :goto_19

    .line 1570
    :cond_ff
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/l/c;->b(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 1571
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    monitor-exit p0

    goto/16 :goto_19

    .line 1573
    :cond_107
    monitor-exit p0
    :try_end_108
    .catchall {:try_start_f4 .. :try_end_108} :catchall_e8

    .line 1575
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/l/c;->d(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 1576
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    goto/16 :goto_19

    :cond_112
    move v0, v7

    .line 1577
    goto/16 :goto_61

    .line 1578
    :cond_115
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/l/c;->d(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 1579
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    goto/16 :goto_19

    :cond_11f
    move v7, v8

    .line 1588
    goto/16 :goto_74

    .line 1589
    :cond_122
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->b:Lcom/ss/android/socialbase/downloader/e/g;

    goto/16 :goto_19

    :cond_126
    move v0, v8

    goto/16 :goto_61
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/e/a;J)Lcom/ss/android/socialbase/downloader/e/g;
    .registers 10

    .prologue
    .line 1447
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1448
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    .line 1484
    :goto_8
    return-object v0

    .line 1451
    :cond_9
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_19

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/m/f;->g(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1453
    :cond_19
    invoke-virtual {p0, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/e/a;J)Lcom/ss/android/socialbase/downloader/e/g;

    move-result-object v0

    goto :goto_8

    .line 1457
    :cond_1e
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/l/c;->x:Lcom/ss/android/socialbase/downloader/e/a;

    .line 1459
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    neg-long v2, p3

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/c;->b(J)V

    .line 1461
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 1463
    invoke-direct {p0, p2}, Lcom/ss/android/socialbase/downloader/l/c;->d(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1465
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    goto :goto_8

    .line 1468
    :cond_36
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    if-ne v0, v2, :cond_78

    const/4 v0, 0x1

    :goto_3f
    invoke-virtual {v1, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 1470
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    if-eq v0, v1, :cond_75

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aj()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1471
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->w()J

    move-result-wide v0

    .line 1472
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_75

    .line 1473
    sget-object v2, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSingleChunkRetry with delay time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :try_start_72
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_7a

    .line 1484
    :cond_75
    :goto_75
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->b:Lcom/ss/android/socialbase/downloader/e/g;

    goto :goto_8

    .line 1468
    :cond_78
    const/4 v0, 0x0

    goto :goto_3f

    .line 1479
    :catch_7a
    move-exception v0

    .line 1480
    sget-object v1, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleChunkRetry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75
.end method

.method public declared-synchronized a(I)Lcom/ss/android/socialbase/downloader/g/b;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1628
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_41

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_e

    move-object v0, v1

    .line 1644
    :goto_c
    monitor-exit p0

    return-object v0

    .line 1631
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->o:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Ljava/util/List;

    move-result-object v3

    .line 1632
    if-eqz v3, :cond_22

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    move-object v0, v1

    .line 1633
    goto :goto_c

    .line 1635
    :cond_24
    const/4 v0, 0x0

    move v2, v0

    :goto_26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3f

    .line 1636
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 1637
    if-nez v0, :cond_38

    .line 1635
    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    .line 1639
    :cond_38
    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/g/b;I)Lcom/ss/android/socialbase/downloader/g/b;
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_41

    move-result-object v0

    .line 1640
    if-eqz v0, :cond_34

    goto :goto_c

    :cond_3f
    move-object v0, v1

    .line 1644
    goto :goto_c

    .line 1628
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 165
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 166
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_30

    .line 167
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    .line 174
    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/l/b;

    .line 176
    if-eqz v0, :cond_19

    .line 177
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/b;->a()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2a} :catch_2b

    goto :goto_19

    .line 180
    :catch_2b
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    :cond_2f
    return-void

    .line 169
    :cond_30
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V

    .line 170
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 171
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto :goto_d
.end method

.method public a(Lcom/ss/android/socialbase/downloader/e/a;Z)V
    .registers 5

    .prologue
    .line 1393
    sget-object v0, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    const-string v1, "onAllChunkRetryWithReset"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->i:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 1395
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/l/c;->x:Lcom/ss/android/socialbase/downloader/e/a;

    .line 1396
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->E()V

    .line 1398
    const/4 v0, 0x0

    .line 1399
    if-eqz p2, :cond_17

    .line 1400
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/l/c;->d(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v0

    .line 1402
    :cond_17
    if-nez v0, :cond_1c

    .line 1404
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->D()V

    .line 1406
    :cond_1c
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/i/c;)V
    .registers 4

    .prologue
    .line 1649
    if-eqz p1, :cond_14

    .line 1651
    :try_start_2
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/i/c;->b()I

    move-result v0

    .line 1652
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->e(I)V

    .line 1653
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->f(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_14} :catch_15

    .line 1658
    :cond_14
    :goto_14
    return-void

    .line 1654
    :catch_15
    move-exception v0

    .line 1655
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14
.end method

.method public a(Lcom/ss/android/socialbase/downloader/l/b;)V
    .registers 3

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->h:Z

    if-nez v0, :cond_b

    .line 1342
    monitor-enter p0

    .line 1343
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1344
    monitor-exit p0

    .line 1346
    :cond_b
    return-void

    .line 1344
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .registers 2

    .prologue
    .line 1738
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/l/c;->b:Ljava/util/concurrent/Future;

    .line 1739
    return-void
.end method

.method public a(J)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 1332
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->G:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    .line 1333
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->G:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 1334
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->z()V

    .line 1336
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(J)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/e/a;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1350
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1351
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->h:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->d:Z

    if-nez v1, :cond_16

    .line 1352
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 1353
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->d:Z

    .line 1357
    :cond_16
    :goto_16
    return v0

    :cond_17
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_4b

    :cond_23
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->aK()Z

    move-result v1

    if-nez v1, :cond_4b

    if-eqz p1, :cond_4f

    .line 1358
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v1

    const/16 v2, 0x3f3

    if-eq v1, v2, :cond_43

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_4f

    :cond_43
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->aL()Z

    move-result v1

    if-eqz v1, :cond_4f

    :cond_4b
    instance-of v1, p1, Lcom/ss/android/socialbase/downloader/e/f;

    if-eqz v1, :cond_16

    :cond_4f
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public b()V
    .registers 2

    .prologue
    .line 186
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 187
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_11

    .line 188
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    .line 194
    :goto_d
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->E()V

    .line 195
    return-void

    .line 190
    :cond_11
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->o()V

    .line 191
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 192
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->l()V

    goto :goto_d
.end method

.method public b(Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 5

    .prologue
    .line 1364
    sget-object v0, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->d:Lcom/ss/android/socialbase/downloader/b/k;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->n:Lcom/ss/android/socialbase/downloader/b/k;

    .line 1366
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/l/c;->x:Lcom/ss/android/socialbase/downloader/e/a;

    .line 1368
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->E()V

    .line 1369
    return-void
.end method

.method public c()Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    return-object v0
.end method

.method public c(Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 4

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_a

    .line 1386
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->l(Z)V

    .line 1388
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 1389
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public f()V
    .registers 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a()V

    .line 1318
    return-void
.end method

.method public g()Ljava/util/concurrent/Future;
    .registers 2

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->b:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 306
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 310
    :try_start_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->c()Lcom/ss/android/socialbase/downloader/d/v;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/v;->a()Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_12} :catch_1b
    .catchall {:try_start_7 .. :try_end_12} :catchall_44

    move-result v0

    if-eqz v0, :cond_1f

    .line 319
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->e()V

    .line 353
    :goto_1a
    return-void

    .line 315
    :catch_1b
    move-exception v0

    .line 316
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_44

    .line 323
    :cond_1f
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->i()Z

    move-result v0

    if-nez v0, :cond_52

    .line 324
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->c:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    new-instance v3, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v0, 0x3eb

    const-string v4, "task status is invalid"

    invoke-direct {v3, v0, v4}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    :goto_40
    invoke-static {v1, v2, v3, v0}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    goto :goto_1a

    .line 318
    :catchall_44
    move-exception v0

    .line 319
    throw v0

    .line 324
    :cond_46
    const/4 v0, 0x0

    goto :goto_40

    .line 333
    :cond_48
    iget v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->C:I

    if-lez v0, :cond_5a

    .line 334
    iget v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->C:I

    .line 330
    :cond_52
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/c;->k()V

    .line 331
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->D:Z

    if-nez v0, :cond_48

    goto :goto_1a

    .line 336
    :cond_5a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9b

    .line 337
    sget-object v0, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v1, Lcom/ss/android/socialbase/downloader/e/f;

    const/16 v2, 0x403

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current bytes is not equals to total bytes, bytes invalid retry status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->aa()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/e/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_1a

    .line 340
    :cond_9b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_d7

    .line 341
    sget-object v0, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v1, Lcom/ss/android/socialbase/downloader/e/f;

    const/16 v2, 0x402

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curBytes is 0, bytes invalid retry status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->aa()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/e/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto/16 :goto_1a

    .line 344
    :cond_d7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_52

    .line 345
    sget-object v0, Lcom/ss/android/socialbase/downloader/l/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v1, Lcom/ss/android/socialbase/downloader/e/f;

    const/16 v2, 0x414

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TotalBytes is 0, bytes invalid retry status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/c;->p:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->aa()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/e/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto/16 :goto_1a
.end method
