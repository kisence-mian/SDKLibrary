.class public Lcom/umeng/commonsdk/stateless/b;
.super Ljava/lang/Object;
.source "UMSLNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/stateless/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x111

.field private static b:Landroid/content/Context; = null

.field private static c:Landroid/os/HandlerThread; = null

.field private static d:Landroid/os/Handler; = null

.field private static e:Ljava/lang/Object; = null

.field private static final f:I = 0x112

.field private static final g:I = 0x113

.field private static final h:I = 0x200

.field private static i:Lcom/umeng/commonsdk/stateless/b$a;

.field private static j:Landroid/content/IntentFilter;

.field private static k:Z

.field private static l:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->c:Landroid/os/HandlerThread;

    .line 41
    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->d:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->e:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/stateless/b;->k:Z

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    .line 58
    new-instance v0, Lcom/umeng/commonsdk/stateless/b$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/stateless/b$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    if-eqz p1, :cond_bb

    .line 129
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    .line 130
    if-eqz v1, :cond_bb

    .line 131
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->c:Landroid/os/HandlerThread;

    if-nez v1, :cond_bb

    .line 132
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SL-NetWorkSender"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/umeng/commonsdk/stateless/b;->c:Landroid/os/HandlerThread;

    .line 133
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 134
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->i:Lcom/umeng/commonsdk/stateless/b$a;

    if-nez v1, :cond_69

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".emitter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_58

    .line 138
    const-string v3, "MobclickRT"

    const-string v4, "--->>> 2\u53f7\u6570\u636e\u4ed3\u76ee\u5f55\u4e0d\u5b58\u5728\uff0c\u521b\u5efa\u4e4b\u3002"

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 141
    :cond_58
    new-instance v2, Lcom/umeng/commonsdk/stateless/b$a;

    invoke-direct {v2, v1}, Lcom/umeng/commonsdk/stateless/b$a;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/umeng/commonsdk/stateless/b;->i:Lcom/umeng/commonsdk/stateless/b$a;

    .line 142
    invoke-virtual {v2}, Lcom/umeng/commonsdk/stateless/b$a;->startWatching()V

    .line 143
    const-string v1, "MobclickRT"

    const-string v2, "--->>> 2\u53f7\u6570\u636e\u4ed3File Monitor\u542f\u52a8."

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_69
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->d:Landroid/os/Handler;

    if-nez v1, :cond_7a

    .line 146
    new-instance v1, Lcom/umeng/commonsdk/stateless/b$2;

    sget-object v2, Lcom/umeng/commonsdk/stateless/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/umeng/commonsdk/stateless/b$2;-><init>(Lcom/umeng/commonsdk/stateless/b;Landroid/os/Looper;)V

    sput-object v1, Lcom/umeng/commonsdk/stateless/b;->d:Landroid/os/Handler;

    .line 173
    :cond_7a
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 175
    const-string v1, "walle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[stateless] begin register receiver"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->j:Landroid/content/IntentFilter;

    if-nez v1, :cond_bb

    .line 177
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/stateless/b;->j:Landroid/content/IntentFilter;

    .line 178
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->m:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_bb

    .line 180
    const-string v1, "MobclickRT"

    const-string v2, "--->>> 2\u53f7\u6570\u636e\u4ed3\uff1a\u6ce8\u518c\u7f51\u7edc\u72b6\u6001\u76d1\u542c\u5668\u3002"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    sget-object v2, Lcom/umeng/commonsdk/stateless/b;->m:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/umeng/commonsdk/stateless/b;->j:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_b5
    .catchall {:try_start_8 .. :try_end_b5} :catchall_b6

    goto :goto_bb

    .line 190
    :catchall_b6
    move-exception v1

    .line 191
    :try_start_b7
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_bc

    .line 192
    :cond_bb
    :goto_bb
    nop

    .line 193
    :goto_bc
    monitor-exit v0

    .line 195
    return-void

    .line 193
    :catchall_be
    move-exception p1

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_be

    throw p1
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 36
    sput-object p0, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a(I)V
    .registers 2

    .line 202
    sget-boolean v0, Lcom/umeng/commonsdk/stateless/b;->k:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->d:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 203
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 204
    iput p0, v0, Landroid/os/Message;->what:I

    .line 205
    sget-object p0, Lcom/umeng/commonsdk/stateless/b;->d:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    :cond_13
    return-void
.end method

.method public static a()Z
    .registers 2

    .line 115
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->i:Lcom/umeng/commonsdk/stateless/b$a;

    if-eqz v1, :cond_a

    .line 117
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 119
    :cond_a
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 121
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 36
    sput-boolean p0, Lcom/umeng/commonsdk/stateless/b;->k:Z

    return p0
.end method

.method public static b()V
    .registers 2

    .line 455
    const-string v0, "MobclickRT"

    const-string v1, "--->>>\u4fe1\u5c01\u6784\u5efa\u6210\u529f\uff1a \u89e6\u53d12\u53f7\u6570\u636e\u4ed3\u4fe1\u5c01\u6d88\u8d39\u52a8\u4f5c\u3002"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/16 v0, 0x112

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/b;->b(I)V

    .line 457
    return-void
.end method

.method public static b(I)V
    .registers 2

    .line 215
    :try_start_0
    sget-boolean v0, Lcom/umeng/commonsdk/stateless/b;->k:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 216
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 217
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 218
    iput p0, v0, Landroid/os/Message;->what:I

    .line 219
    sget-object p0, Lcom/umeng/commonsdk/stateless/b;->d:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 224
    :cond_1b
    goto :goto_22

    .line 222
    :catchall_1c
    move-exception p0

    .line 223
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 225
    :goto_22
    return-void
.end method

.method public static c()V
    .registers 1

    .line 463
    const/16 v0, 0x113

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/b;->b(I)V

    .line 464
    return-void
.end method

.method public static d()V
    .registers 1

    .line 470
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/b;->b(I)V

    .line 471
    return-void
.end method

.method static synthetic e()Landroid/content/Context;
    .registers 1

    .line 36
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->m()V

    return-void
.end method

.method static synthetic g()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->o()V

    return-void
.end method

.method static synthetic h()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->q()V

    return-void
.end method

.method static synthetic i()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->r()V

    return-void
.end method

.method private static j()V
    .registers 5

    .line 231
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/d;->c(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_27

    .line 233
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 234
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 236
    :cond_15
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    .line 237
    sget-object v4, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 240
    :cond_27
    return-void
.end method

.method private static k()Ljava/lang/String;
    .registers 2

    .line 243
    nop

    .line 245
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_16

    .line 246
    if-eqz v1, :cond_15

    .line 247
    :try_start_c
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_15

    .line 249
    :catchall_12
    move-exception v0

    move-object v0, v1

    goto :goto_17

    .line 251
    :cond_15
    :goto_15
    goto :goto_18

    .line 249
    :catchall_16
    move-exception v1

    :goto_17
    move-object v1, v0

    .line 252
    :goto_18
    return-object v1
.end method

.method private static l()V
    .registers 9

    .line 258
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-string v1, "MobclickRT"

    if-gtz v0, :cond_10

    .line 259
    const-string v0, "--->>> todoList\u65e0\u5185\u5bb9\uff0c\u65e0\u9700\u5904\u7406\u3002"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 263
    :cond_10
    nop

    .line 265
    :goto_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_20

    .line 266
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_24

    .line 269
    :cond_20
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->k()Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 274
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 276
    const-string v2, "--->>> \u4fe1\u5c01\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u5904\u7406\u4e0b\u4e00\u4e2a\u6587\u4ef6\u3002"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    goto :goto_82

    .line 279
    :cond_3b
    new-instance v3, Lcom/umeng/commonsdk/stateless/c;

    sget-object v4, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/umeng/commonsdk/stateless/c;-><init>(Landroid/content/Context;)V

    .line 280
    nop

    .line 281
    const/4 v4, 0x0

    .line 283
    :try_start_44
    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/d;->a(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_49

    .line 284
    :goto_48
    goto :goto_4b

    :catch_49
    move-exception v5

    goto :goto_48

    .line 286
    :goto_4b
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 288
    nop

    .line 289
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 290
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_5f

    .line 289
    :cond_5d
    const-string v6, "u"

    .line 293
    :goto_5f
    invoke-static {v5}, Lcom/umeng/commonsdk/stateless/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 294
    sget-object v7, Lcom/umeng/commonsdk/stateless/a;->j:Ljava/lang/String;

    .line 295
    invoke-static {v5}, Lcom/umeng/commonsdk/stateless/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    sget-object v8, Lcom/umeng/commonsdk/vchannel/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 298
    sget-object v7, Lcom/umeng/commonsdk/vchannel/a;->a:Ljava/lang/String;

    .line 301
    :cond_73
    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/umeng/commonsdk/stateless/c;->a([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 302
    if-eqz v3, :cond_82

    .line 303
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_82

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 311
    :cond_82
    :goto_82
    if-nez v0, :cond_8a

    .line 313
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 314
    return-void

    .line 311
    :cond_8a
    goto :goto_11
.end method

.method private static m()V
    .registers 10

    .line 331
    const-string v0, "walle"

    sget-boolean v1, Lcom/umeng/commonsdk/stateless/b;->k:Z

    if-eqz v1, :cond_103

    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    if-nez v1, :cond_c

    goto/16 :goto_103

    .line 335
    :cond_c
    nop

    .line 338
    :cond_d
    :try_start_d
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 339
    if-eqz v1, :cond_f6

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_f6

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f6

    .line 340
    new-instance v2, Lcom/umeng/commonsdk/stateless/c;

    sget-object v3, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/stateless/c;-><init>(Landroid/content/Context;)V

    .line 341
    nop

    .line 342
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 343
    const-string v4, "umpx_internal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ea

    const-string v4, "umpx_crash"

    .line 344
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ea

    const-string v4, "umpx_oplus_lbs"

    .line 345
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    goto/16 :goto_ea

    .line 351
    :cond_5d
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[stateless] handleProcessNext, pathUrl is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v0, v6}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_d .. :try_end_78} :catchall_f9

    .line 352
    const/4 v6, 0x0

    .line 354
    :try_start_79
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/umeng/commonsdk/stateless/d;->a(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_82
    .catchall {:try_start_79 .. :try_end_81} :catchall_f9

    .line 356
    goto :goto_83

    .line 355
    :catch_82
    move-exception v7

    .line 357
    :goto_83
    :try_start_83
    const-string v7, ""

    .line 358
    sget-object v8, Lcom/umeng/commonsdk/vchannel/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 359
    sget-object v7, Lcom/umeng/commonsdk/vchannel/a;->a:Ljava/lang/String;

    .line 362
    :cond_8f
    const-string v8, "u"

    .line 363
    sget-object v9, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_SHARE:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 364
    const-string v8, "s"

    .line 366
    :cond_9b
    sget-object v9, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_PUSH_LAUNCH:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b3

    sget-object v9, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_PUSH_REGIST:Ljava/lang/String;

    .line 367
    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b3

    sget-object v9, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_PUSH_LOG:Ljava/lang/String;

    .line 368
    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 369
    :cond_b3
    const-string v8, "p"

    .line 371
    :cond_b5
    invoke-virtual {v2, v6, v3, v7, v8}, Lcom/umeng/commonsdk/stateless/c;->a([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 372
    if-eqz v2, :cond_e0

    .line 373
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "[stateless] Send envelope file success, delete it."

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_df

    .line 376
    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "[stateless] Failed to delete already processed file. We try again after delete failed."

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 379
    :cond_df
    goto :goto_f6

    .line 380
    :cond_e0
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "[stateless] Send envelope file failed, abandon and wait next trigger!"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    return-void

    .line 347
    :cond_ea
    :goto_ea
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_f6
    .catchall {:try_start_83 .. :try_end_f6} :catchall_f9

    .line 388
    :cond_f6
    :goto_f6
    if-nez v1, :cond_d

    .line 391
    goto :goto_ff

    .line 389
    :catchall_f9
    move-exception v0

    .line 390
    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 393
    :goto_ff
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->n()V

    .line 394
    return-void

    .line 332
    :cond_103
    :goto_103
    return-void
.end method

.method private static n()V
    .registers 3

    .line 399
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stateless"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    nop

    .line 403
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 404
    const-string v1, "MobclickRT"

    const-string v2, "--->>> 2\u53f7\u6570\u636e\u4ed3\uff1a\u5220\u9664stateless\u76ee\u5f55\u3002"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/d;->a(Ljava/io/File;)Z
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    .line 409
    :cond_3b
    goto :goto_3d

    .line 407
    :catchall_3c
    move-exception v0

    .line 410
    :goto_3d
    return-void
.end method

.method private static o()V
    .registers 1

    .line 414
    sget-boolean v0, Lcom/umeng/commonsdk/stateless/b;->k:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    if-nez v0, :cond_9

    goto :goto_13

    .line 418
    :cond_9
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->j()V

    .line 419
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->l()V

    .line 420
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->c()V

    .line 422
    return-void

    .line 415
    :cond_13
    :goto_13
    return-void
.end method

.method private static p()V
    .registers 3

    .line 431
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stateless"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    nop

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 436
    const-string v0, "MobclickRT"

    const-string v1, "--->>>2\u53f7\u6570\u636e\u4ed3\uff1a\u68c0\u6d4b\u5230stateless\u76ee\u5f55\u3002"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/b;->b(I)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3e

    .line 441
    :cond_3d
    goto :goto_3f

    .line 439
    :catchall_3e
    move-exception v0

    .line 442
    :goto_3f
    return-void
.end method

.method private static q()V
    .registers 0

    .line 448
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->p()V

    .line 449
    return-void
.end method

.method private static r()V
    .registers 0

    .line 477
    return-void
.end method
