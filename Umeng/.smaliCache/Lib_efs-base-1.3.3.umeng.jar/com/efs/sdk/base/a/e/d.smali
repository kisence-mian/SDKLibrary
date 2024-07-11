.class public final Lcom/efs/sdk/base/a/e/d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/e/d$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/efs/sdk/base/a/e/c;

.field private c:Lcom/efs/sdk/base/a/e/c;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Lcom/efs/sdk/base/a/b/f;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 62
    sget-object v0, Lcom/efs/sdk/base/a/h/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/efs/sdk/base/a/e/d;->a:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/e/d;->d:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/e/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    new-instance v0, Lcom/efs/sdk/base/a/e/a;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/e/a;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/e/d;->b:Lcom/efs/sdk/base/a/e/c;

    .line 64
    new-instance v0, Lcom/efs/sdk/base/a/i/e;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/i/e;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/e/d;->c:Lcom/efs/sdk/base/a/e/c;

    .line 65
    new-instance v0, Lcom/efs/sdk/base/a/b/h;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/e/d;->f:Lcom/efs/sdk/base/a/b/f;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/efs/sdk/base/a/e/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/e/d;
    .registers 1

    .line 79
    invoke-static {}, Lcom/efs/sdk/base/a/e/d$a;->a()Lcom/efs/sdk/base/a/e/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;I)V
    .registers 5

    .line 101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 102
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 103
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 105
    invoke-virtual {p0, v0}, Lcom/efs/sdk/base/a/e/d;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1056
    invoke-static {}, Lcom/efs/sdk/base/a/e/f$a;->a()Lcom/efs/sdk/base/a/e/f;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/e/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "efs.send_log"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1d6

    goto/16 :goto_1d4

    .line 94
    :pswitch_17
    nop

    .line 13112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13115
    if-eqz v0, :cond_25

    .line 13116
    iget-object v3, p0, Lcom/efs/sdk/base/a/e/d;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13119
    :cond_25
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 13120
    nop

    .line 13122
    if-eqz p1, :cond_31

    .line 13123
    iget-object p1, p0, Lcom/efs/sdk/base/a/e/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    goto :goto_32

    .line 13122
    :cond_31
    const/4 p1, 0x0

    .line 13127
    :goto_32
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 13128
    const/4 v0, 0x5

    if-ge p1, v0, :cond_41

    .line 13129
    invoke-virtual {p0, v2}, Lcom/efs/sdk/base/a/e/d;->sendEmptyMessage(I)Z

    return-void

    .line 13133
    :cond_41
    iget-object p1, p0, Lcom/efs/sdk/base/a/e/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13134
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object p1

    .line 14137
    iget-wide v3, p1, Lcom/efs/sdk/base/a/c/a;->k:J

    .line 13134
    invoke-virtual {p0, v2, v3, v4}, Lcom/efs/sdk/base/a/e/d;->sendEmptyMessageDelayed(IJ)Z

    .line 13135
    nop

    .line 15024
    const-string p1, "request error cnt gt 5, next request delay 10s"

    invoke-static {v1, p1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d4

    .line 89
    :pswitch_57
    nop

    .line 2053
    invoke-static {}, Lcom/efs/sdk/base/a/c/c$a;->a()Lcom/efs/sdk/base/a/c/c;

    move-result-object p1

    .line 1167
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/c/c;->a()Ljava/lang/String;

    move-result-object p1

    .line 1169
    const-string v0, "denied"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1bd

    .line 1170
    const-string v0, "disconnected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto/16 :goto_1bd

    .line 1178
    :cond_72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 4075
    :try_start_76
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    move-result-object v0

    .line 1181
    iget v1, p0, Lcom/efs/sdk/base/a/e/d;->a:I

    iget-object v3, p0, Lcom/efs/sdk/base/a/e/d;->f:Lcom/efs/sdk/base/a/b/f;

    .line 4162
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/b/a;->a()V

    .line 4164
    nop

    .line 5117
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/b/a;->a()V

    .line 5120
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v4

    iget-object v4, v4, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v5

    .line 6113
    iget-object v5, v5, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 5120
    invoke-static {v4, v5}, Lcom/efs/sdk/base/a/h/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 5122
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a1

    .line 5123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto/16 :goto_110

    .line 5126
    :cond_a1
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 5129
    iget-boolean v5, v0, Lcom/efs/sdk/base/a/b/a;->b:Z

    if-eqz v5, :cond_dd

    .line 7053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v5

    .line 5130
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 7106
    iget-object v7, v5, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-eqz v7, :cond_da

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v7

    .line 7186
    iget-boolean v7, v7, Lcom/efs/sdk/base/a/c/a;->d:Z

    .line 7106
    if-nez v7, :cond_be

    goto :goto_da

    .line 7109
    :cond_be
    new-instance v7, Lcom/efs/sdk/base/a/i/b;

    const-string v8, "efs_core"

    const-string v9, "log_lag"

    iget-object v10, v5, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    iget-object v10, v10, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/efs/sdk/base/a/i/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7110
    const-string v8, "cnt"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/a/i/b;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7111
    iget-object v5, v5, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    invoke-virtual {v5, v7}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    goto :goto_db

    .line 7107
    :cond_da
    :goto_da
    nop

    .line 5131
    :goto_db
    iput-boolean v2, v0, Lcom/efs/sdk/base/a/b/a;->b:Z

    .line 5135
    :cond_dd
    iget-object v5, v0, Lcom/efs/sdk/base/a/b/a;->d:Lcom/efs/sdk/base/a/b/a$a;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5139
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_ed
    if-ltz v6, :cond_10f

    .line 5141
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v1, :cond_10f

    .line 5144
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 5147
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_10c

    .line 5152
    if-eqz v3, :cond_109

    invoke-interface {v3, v7}, Lcom/efs/sdk/base/a/b/f;->a(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_10c

    .line 5155
    :cond_109
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5139
    :cond_10c
    add-int/lit8 v6, v6, -0x1

    goto :goto_ed

    .line 5157
    :cond_10f
    move-object v3, v5

    .line 4164
    :goto_110
    nop

    .line 4165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4167
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 4168
    invoke-virtual {v0, v3}, Lcom/efs/sdk/base/a/b/a;->a(Ljava/io/File;)Lcom/efs/sdk/base/a/f/b;

    move-result-object v5

    .line 4170
    if-nez v5, :cond_146

    .line 4171
    const-string v5, "efs.cache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file upload error, name is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8025
    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4172
    goto :goto_11a

    .line 4174
    :cond_146
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_149
    .catchall {:try_start_76 .. :try_end_149} :catchall_14e

    .line 4175
    goto :goto_11a

    .line 4176
    :cond_14a
    nop

    .line 1181
    nop

    .line 1183
    move-object p1, v4

    goto :goto_14f

    .line 1182
    :catchall_14e
    move-exception v0

    .line 1185
    :goto_14f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_153
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ab

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/base/a/f/b;

    .line 1186
    nop

    .line 8204
    nop

    .line 9164
    iget-object v1, v0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 8204
    const-string v3, "wa"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 8205
    invoke-static {}, Lcom/efs/sdk/base/a/e/b;->a()Lcom/efs/sdk/base/a/e/b;

    move-result-object v1

    .line 10164
    iget-object v4, v0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v4, v4, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 8205
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/f/b;->a()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lcom/efs/sdk/base/a/e/b;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 8210
    :cond_17f
    iget-object v1, p0, Lcom/efs/sdk/base/a/e/d;->b:Lcom/efs/sdk/base/a/e/c;

    .line 8212
    nop

    .line 11164
    iget-object v4, v0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v4, v4, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 8212
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18e

    .line 8213
    iget-object v1, p0, Lcom/efs/sdk/base/a/e/d;->c:Lcom/efs/sdk/base/a/e/c;

    .line 8216
    :cond_18e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8217
    iget-object v4, p0, Lcom/efs/sdk/base/a/e/d;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8218
    new-instance v4, Lcom/efs/sdk/base/a/e/e;

    invoke-direct {v4, v0, v1, v3}, Lcom/efs/sdk/base/a/e/e;-><init>(Lcom/efs/sdk/base/a/f/b;Lcom/efs/sdk/base/a/e/c;Ljava/lang/String;)V

    .line 8219
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/a/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 8221
    if-nez v0, :cond_1aa

    .line 8222
    const/4 v0, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/efs/sdk/base/a/e/d;->a(Ljava/lang/Object;I)V

    .line 1187
    :cond_1aa
    goto :goto_153

    .line 1190
    :cond_1ab
    iget-object p1, p0, Lcom/efs/sdk/base/a/e/d;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1bc

    .line 1191
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object p1

    .line 12145
    iget-wide v0, p1, Lcom/efs/sdk/base/a/c/a;->l:J

    .line 1191
    invoke-virtual {p0, v2, v0, v1}, Lcom/efs/sdk/base/a/e/d;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    :cond_1bc
    return-void

    .line 1171
    :cond_1bd
    :goto_1bd
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "log cann\'t be send because net status is "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3024
    invoke-static {v1, p1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object p1

    .line 3145
    iget-wide v0, p1, Lcom/efs/sdk/base/a/c/a;->l:J

    .line 1172
    invoke-virtual {p0, v2, v0, v1}, Lcom/efs/sdk/base/a/e/d;->sendEmptyMessageDelayed(IJ)Z

    .line 1173
    return-void

    .line 98
    :cond_1d4
    :goto_1d4
    return-void

    nop

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_57
        :pswitch_17
    .end packed-switch
.end method
