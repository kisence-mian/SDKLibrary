.class public Lcom/bytedance/tea/crash/e/f;
.super Ljava/lang/Object;
.source "LooperMessageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Landroid/util/Printer;

.field private static b:Lcom/bytedance/tea/crash/e/f;

.field private static final j:Landroid/util/Printer;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:I

.field private e:J

.field private f:J

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/bytedance/tea/crash/e/f;->a:Landroid/util/Printer;

    .line 22
    sput-object v0, Lcom/bytedance/tea/crash/e/f;->b:Lcom/bytedance/tea/crash/e/f;

    .line 43
    new-instance v0, Lcom/bytedance/tea/crash/e/f$1;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/e/f$1;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/e/f;->j:Landroid/util/Printer;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/f;->h:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/f;->i:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/bytedance/tea/crash/e/f;->k:Z

    .line 62
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->a()Landroid/os/HandlerThread;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/e/f;->b()V

    .line 65
    return-void
.end method

.method public static a()Lcom/bytedance/tea/crash/e/f;
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->b:Lcom/bytedance/tea/crash/e/f;

    if-nez v0, :cond_13

    .line 69
    const-class v1, Lcom/bytedance/tea/crash/e/f;

    monitor-enter v1

    .line 70
    :try_start_7
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->b:Lcom/bytedance/tea/crash/e/f;

    if-nez v0, :cond_12

    .line 71
    new-instance v0, Lcom/bytedance/tea/crash/e/f;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/e/f;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/e/f;->b:Lcom/bytedance/tea/crash/e/f;

    .line 73
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 75
    :cond_13
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->b:Lcom/bytedance/tea/crash/e/f;

    return-object v0

    .line 73
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    :cond_8
    :goto_8
    return-void

    .line 250
    :cond_9
    :try_start_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 251
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1d

    goto :goto_d

    .line 253
    :catch_1d
    move-exception v0

    .line 254
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/util/Printer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_24

    move-result v0

    if-eqz v0, :cond_b

    .line 270
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 264
    :cond_b
    :try_start_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;

    .line 265
    invoke-interface {v0, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f
    .catchall {:try_start_b .. :try_end_1e} :catchall_24

    goto :goto_f

    .line 267
    :catch_1f
    move-exception v0

    .line 268
    :try_start_20
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_9

    .line 259
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c()Landroid/util/Printer;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->a:Landroid/util/Printer;

    return-object v0
.end method

.method static synthetic d()Landroid/util/Printer;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->j:Landroid/util/Printer;

    return-object v0
.end method

.method private e()Landroid/util/Printer;
    .registers 3

    .prologue
    .line 92
    :try_start_0
    const-string v0, "android.os.Looper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    const-string v1, "mLogging"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 98
    :goto_1a
    return-object v0

    .line 96
    :catch_1b
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 98
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)V
    .registers 13

    .prologue
    .line 128
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/tea/crash/e/f;->a(JLjava/lang/Runnable;IJ)V

    .line 129
    return-void
.end method

.method public a(JLjava/lang/Runnable;IJ)V
    .registers 12

    .prologue
    .line 132
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 150
    :cond_6
    return-void

    .line 135
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, p4, :cond_6

    .line 136
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    long-to-int v2, p1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 137
    if-nez v0, :cond_30

    .line 138
    iget-object v2, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    monitor-enter v2

    .line 139
    :try_start_19
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    long-to-int v3, p1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    if-nez v0, :cond_2f

    .line 141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 142
    iget-object v3, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    long-to-int v4, p1

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_38

    .line 147
    :cond_30
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-long/2addr p1, p5

    .line 135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 144
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public a(Landroid/util/Printer;)V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/e/f;->l:Z

    if-nez v0, :cond_c

    .line 178
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/g;->a(J)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/e/f;->l:Z

    .line 181
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/tea/crash/e/f;->e:J

    .line 183
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->h:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/tea/crash/e/f;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 188
    :goto_1d
    return-void

    .line 185
    :catch_1e
    move-exception v0

    .line 186
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method public b()V
    .registers 3

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/e/f;->k:Z

    if-eqz v0, :cond_5

    .line 88
    :goto_4
    return-void

    .line 82
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/e/f;->k:Z

    .line 83
    invoke-direct {p0}, Lcom/bytedance/tea/crash/e/f;->e()Landroid/util/Printer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/e/f;->a:Landroid/util/Printer;

    .line 84
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->a:Landroid/util/Printer;

    sget-object v1, Lcom/bytedance/tea/crash/e/f;->j:Landroid/util/Printer;

    if-ne v0, v1, :cond_17

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/tea/crash/e/f;->a:Landroid/util/Printer;

    .line 87
    :cond_17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/bytedance/tea/crash/e/f;->j:Landroid/util/Printer;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    goto :goto_4
.end method

.method public declared-synchronized b(Landroid/util/Printer;)V
    .registers 3

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/tea/crash/e/f;->f:J

    .line 197
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->i:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/tea/crash/e/f;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    .line 203
    :goto_17
    return-void

    .line 200
    :catch_18
    move-exception v0

    .line 201
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 241
    :cond_b
    :goto_b
    return v6

    .line 210
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9a

    .line 233
    :cond_11
    :goto_11
    iget v0, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    iget-object v1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 236
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    .line 237
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 238
    iget-object v2, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/bytedance/tea/crash/e/f;->e:J

    add-long/2addr v0, v4

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_b

    .line 212
    :pswitch_34
    iput v1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    .line 214
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-nez v0, :cond_11

    .line 215
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/tea/crash/e/f;->a(Ljava/util/List;)V

    .line 216
    iget v0, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    goto :goto_11

    .line 220
    :pswitch_58
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/tea/crash/e/f;->a(Ljava/util/List;)V

    .line 221
    iget v0, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    goto :goto_11

    .line 224
    :pswitch_6c
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-nez v0, :cond_b

    .line 227
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/tea/crash/e/f;->a(Ljava/util/List;)V

    goto/16 :goto_b

    .line 210
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_6c
        :pswitch_58
    .end packed-switch
.end method
