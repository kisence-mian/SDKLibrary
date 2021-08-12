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
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

    .line 21
    const/4 v0, 0x0

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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    .line 37
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    .line 40
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/tea/crash/e/f;->h:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/tea/crash/e/f;->i:Ljava/util/List;

    .line 59
    iput-boolean v0, p0, Lcom/bytedance/tea/crash/e/f;->k:Z

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

    .line 68
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->b:Lcom/bytedance/tea/crash/e/f;

    if-nez v0, :cond_17

    .line 69
    const-class v0, Lcom/bytedance/tea/crash/e/f;

    monitor-enter v0

    .line 70
    :try_start_7
    sget-object v1, Lcom/bytedance/tea/crash/e/f;->b:Lcom/bytedance/tea/crash/e/f;

    if-nez v1, :cond_12

    .line 71
    new-instance v1, Lcom/bytedance/tea/crash/e/f;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/e/f;-><init>()V

    sput-object v1, Lcom/bytedance/tea/crash/e/f;->b:Lcom/bytedance/tea/crash/e/f;

    .line 73
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 75
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->b:Lcom/bytedance/tea/crash/e/f;

    return-object v0
.end method

.method private static a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 245
    if-eqz p0, :cond_23

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_23

    .line 250
    :cond_9
    :try_start_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 251
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1e

    .line 252
    goto :goto_d

    .line 255
    :cond_1d
    goto :goto_22

    .line 253
    :catch_1e
    move-exception p0

    .line 254
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/Throwable;)V

    .line 256
    :goto_22
    return-void

    .line 246
    :cond_23
    :goto_23
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/util/Printer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 259
    if-eqz p1, :cond_28

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_25

    if-eqz v0, :cond_a

    goto :goto_28

    .line 264
    :cond_a
    :try_start_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;

    .line 265
    invoke-interface {v0, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1f
    .catchall {:try_start_a .. :try_end_1d} :catchall_25

    .line 266
    goto :goto_e

    .line 269
    :cond_1e
    goto :goto_23

    .line 267
    :catch_1f
    move-exception p1

    .line 268
    :try_start_20
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_25

    .line 270
    :goto_23
    monitor-exit p0

    return-void

    .line 258
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1

    .line 260
    :cond_28
    :goto_28
    monitor-exit p0

    return-void
.end method

.method static synthetic c()Landroid/util/Printer;
    .registers 1

    .line 17
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->a:Landroid/util/Printer;

    return-object v0
.end method

.method static synthetic d()Landroid/util/Printer;
    .registers 1

    .line 17
    sget-object v0, Lcom/bytedance/tea/crash/e/f;->j:Landroid/util/Printer;

    return-object v0
.end method

.method private e()Landroid/util/Printer;
    .registers 3

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

    return-object v0

    .line 96
    :catch_1b
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)V
    .registers 11

    .line 128
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/tea/crash/e/f;->a(JLjava/lang/Runnable;IJ)V

    .line 129
    return-void
.end method

.method public a(JLjava/lang/Runnable;IJ)V
    .registers 12

    .line 132
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 133
    return-void

    .line 135
    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-ge v0, p4, :cond_38

    .line 136
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    long-to-int v2, p1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 137
    if-nez v1, :cond_31

    .line 138
    iget-object v3, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    monitor-enter v3

    .line 139
    :try_start_18
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 140
    if-nez v1, :cond_2c

    .line 141
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 142
    iget-object v4, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    :cond_2c
    monitor-exit v3

    goto :goto_31

    :catchall_2e
    move-exception p1

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    throw p1

    .line 147
    :cond_31
    :goto_31
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-long/2addr p1, p5

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 150
    :cond_38
    return-void
.end method

.method public a(Landroid/util/Printer;)V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

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
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 187
    goto :goto_22

    .line 185
    :catch_1e
    move-exception p1

    .line 186
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/Throwable;)V

    .line 188
    :goto_22
    return-void
.end method

.method public b()V
    .registers 3

    .line 79
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/e/f;->k:Z

    if-eqz v0, :cond_5

    .line 80
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
    sget-object v1, Lcom/bytedance/tea/crash/e/f;->j:Landroid/util/Printer;

    if-ne v0, v1, :cond_15

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/tea/crash/e/f;->a:Landroid/util/Printer;

    .line 87
    :cond_15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 88
    return-void
.end method

.method public declared-synchronized b(Landroid/util/Printer;)V
    .registers 3

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 166
    monitor-exit p0

    return-void

    .line 164
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Ljava/lang/String;)V
    .registers 4

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
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    .line 202
    goto :goto_1c

    .line 200
    :catch_18
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 203
    :goto_1c
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    .line 207
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 208
    return v2

    .line 210
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_94

    goto :goto_70

    .line 220
    :pswitch_12
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/tea/crash/e/f;->a(Ljava/util/List;)V

    .line 221
    iget p1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    .line 222
    goto :goto_70

    .line 224
    :pswitch_25
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    if-nez p1, :cond_4d

    .line 227
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/tea/crash/e/f;->a(Ljava/util/List;)V

    .line 229
    :cond_4d
    return v2

    .line 212
    :pswitch_4e
    iput v1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    .line 214
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    if-nez p1, :cond_70

    .line 215
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/tea/crash/e/f;->a(Ljava/util/List;)V

    .line 216
    iget p1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    .line 233
    :cond_70
    :goto_70
    iget p1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    iget-object v1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_7b

    .line 234
    return v2

    .line 236
    :cond_7b
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/bytedance/tea/crash/e/f;->d:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    int-to-long v3, p1

    .line 237
    const-wide/32 v5, 0x7fffffff

    cmp-long p1, v3, v5

    if-eqz p1, :cond_93

    .line 238
    iget-object p1, p0, Lcom/bytedance/tea/crash/e/f;->c:Landroid/os/Handler;

    iget-wide v5, p0, Lcom/bytedance/tea/crash/e/f;->e:J

    add-long/2addr v5, v3

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 241
    :cond_93
    return v2

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_25
        :pswitch_12
    .end packed-switch
.end method
