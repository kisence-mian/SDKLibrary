.class Lcom/umeng/commonsdk/framework/a$2;
.super Landroid/os/Handler;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/framework/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/framework/a;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/framework/a;Landroid/os/Looper;)V
    .registers 3

    .line 261
    iput-object p1, p0, Lcom/umeng/commonsdk/framework/a$2;->a:Lcom/umeng/commonsdk/framework/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 264
    iget p1, p1, Landroid/os/Message;->what:I

    sparse-switch p1, :sswitch_data_34

    goto :goto_32

    .line 284
    :sswitch_6
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->l()V

    .line 286
    goto :goto_32

    .line 288
    :sswitch_a
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->m()V

    .line 290
    goto :goto_32

    .line 266
    :sswitch_e
    const-string p1, "--->>> handleMessage: recv MSG_PROCESS_NEXT msg."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 268
    :try_start_13
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->j()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_30

    .line 271
    :try_start_1e
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->k()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_29

    .line 274
    :try_start_21
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->j()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    :goto_25
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 275
    goto :goto_2f

    .line 272
    :catchall_29
    move-exception p1

    .line 274
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->j()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_30

    goto :goto_25

    .line 280
    :goto_2f
    goto :goto_32

    .line 278
    :catchall_30
    move-exception p1

    .line 282
    nop

    .line 295
    :goto_32
    return-void

    nop

    :sswitch_data_34
    .sparse-switch
        0x111 -> :sswitch_e
        0x112 -> :sswitch_a
        0x200 -> :sswitch_6
    .end sparse-switch
.end method
