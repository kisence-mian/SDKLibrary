.class public Lcom/bytedance/sdk/openadsdk/c/g;
.super Landroid/os/HandlerThread;
.source "AdEventThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/g$b;,
        Lcom/bytedance/sdk/openadsdk/c/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/openadsdk/c/i;",
        ">",
        "Landroid/os/HandlerThread;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field public final c:Lcom/bytedance/sdk/openadsdk/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lcom/bytedance/sdk/openadsdk/core/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:J

.field public g:Z

.field public h:I

.field public i:Landroid/os/Handler;

.field public final j:Lcom/bytedance/sdk/openadsdk/c/g$a;

.field public final k:Lcom/bytedance/sdk/openadsdk/c/g$b;

.field protected l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, "AdEventThread"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/lang/String;

    .line 27
    const-string v0, "ttad_bk"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/c/e<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/core/q<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/c/g$b;",
            "Lcom/bytedance/sdk/openadsdk/c/g$a;",
            ")V"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tt_pangle_thread__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    .line 62
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Lcom/bytedance/sdk/openadsdk/c/g$a;

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    .line 64
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 65
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    .line 66
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/c/e<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/core/q<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/c/g$b;",
            "Lcom/bytedance/sdk/openadsdk/c/g$a;",
            ")V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tt_pangle_thread__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 72
    sput-object p2, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    .line 74
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Lcom/bytedance/sdk/openadsdk/c/g$a;

    .line 75
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    .line 76
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 77
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    .line 78
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Z

    .line 79
    return-void
.end method

.method private a()V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/g$b;->d:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/c/g$b;->e:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/e;->a(IJ)V

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/e;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/e;->b()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    .line 117
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-eqz v0, :cond_3d

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleInitEvent serverBusy, retryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->h()V

    goto :goto_6e

    .line 121
    :cond_3d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    const/16 v1, 0x64

    const-string v2, "_id"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/e;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Ljava/util/List;)V

    .line 123
    const-string v0, "onHandleInitEvent,mCloseSaveAndRetry is false, read db event data"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleInitEvent cacheData count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e()V

    .line 127
    :goto_6e
    return-void
.end method

.method private a(IJ)V
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 366
    iput p1, v0, Landroid/os/Message;->what:I

    .line 367
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 368
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->c(Ljava/util/List;)V

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Ljava/lang/Object;)V

    .line 252
    const-string v0, "onHandleReceivedAdEvent mCloseSaveAndRetry is false, save event into db"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 253
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-eqz v0, :cond_14

    .line 255
    return-void

    .line 257
    :cond_14
    const-string v0, "onHandleReceivedAdEvent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->n()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 260
    const-string p1, "onHandleReceivedAdEvent upload"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e()V

    .line 263
    :cond_2c
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 444
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/c/h;)Z
    .registers 2

    .line 412
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/c/h;->b:I

    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private b()V
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Lcom/bytedance/sdk/openadsdk/c/g$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/g$a;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 157
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v1, v1, Lcom/bytedance/sdk/openadsdk/c/g$b;->c:J

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/g;->a(IJ)V

    .line 158
    const-string v0, "onHandleServerBusyRetryEvent, no net"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 159
    return-void

    .line 161
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    const/16 v1, 0x64

    const-string v2, "_id"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/e;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->c(Ljava/util/List;)V

    .line 163
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/s;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 164
    const-string v0, "onHandleServerBusyRetryEvent, empty list start routine"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->o()V

    .line 169
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->j()V

    .line 170
    return-void

    .line 172
    :cond_35
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_ba

    .line 174
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/c/h;->a:Z

    if-eqz v2, :cond_4b

    .line 175
    const-string v0, "onHandleServerBusyRetryEvent, success"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->g()V

    .line 179
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->f()V

    goto :goto_ba

    .line 181
    :cond_4b
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/h;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 182
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    .line 183
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(I)V

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/c/g$b;->d:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v3, v3, Lcom/bytedance/sdk/openadsdk/c/g$b;->e:J

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Ljava/util/List;IJ)V

    .line 187
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->h()V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleServerBusyRetryEvent, serverbusy, count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    goto :goto_ba

    .line 190
    :cond_85
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Lcom/bytedance/sdk/openadsdk/c/h;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 192
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->g()V

    .line 194
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->f()V

    goto :goto_ba

    .line 196
    :cond_92
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Z

    if-nez v1, :cond_9f

    .line 198
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->i()V

    .line 199
    const-string v0, "onHandleServerBusyRetryEvent, net fail"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    goto :goto_ba

    .line 202
    :cond_9f
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    .line 203
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(I)V

    .line 204
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/c/g$b;->d:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v3, v3, Lcom/bytedance/sdk/openadsdk/c/g$b;->e:J

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Ljava/util/List;IJ)V

    .line 207
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->l()V

    .line 214
    :cond_ba
    :goto_ba
    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    if-eqz p1, :cond_49

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_49

    .line 140
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/c/i;

    .line 142
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/c/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_14

    .line 144
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/c/i;

    .line 145
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/c/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 146
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_47
    goto :goto_2c

    .line 150
    :cond_48
    goto :goto_50

    .line 137
    :cond_49
    :goto_49
    const-string p1, "reloadCacheList adEventList is empty======"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    .line 138
    return-void

    .line 149
    :catch_4f
    move-exception p1

    .line 151
    :goto_50
    return-void
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/c/h;)Z
    .registers 1

    .line 422
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/c/h;->d:Z

    return p0
.end method

.method private c()V
    .registers 2

    .line 230
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-eqz v0, :cond_5

    .line 232
    return-void

    .line 234
    :cond_5
    const-string v0, "onHandleRoutineRetryEvent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e()V

    .line 236
    return-void
.end method

.method private c(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 267
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Z

    if-eqz v0, :cond_99

    if-nez p1, :cond_8

    goto/16 :goto_99

    .line 270
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_35

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start and return, checkAndDeleteEvent local size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u5c0f\u4e8e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 272
    return-void

    .line 275
    :cond_35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42960000    # 75.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start checkAndDeleteEvent local size,deleteCnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    const/4 v2, 0x0

    :goto_68
    if-ge v2, v0, :cond_76

    .line 279
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/c/i;

    .line 280
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 282
    :cond_76
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Ljava/util/List;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end checkAndDeleteEvent local size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 285
    return-void

    .line 268
    :cond_99
    :goto_99
    return-void
.end method

.method private d()V
    .registers 2

    .line 240
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-eqz v0, :cond_5

    .line 242
    return-void

    .line 244
    :cond_5
    const-string v0, "onHandleRoutineUploadEvent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e()V

    .line 246
    return-void
.end method

.method private e()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/s;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:J

    .line 295
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->j()V

    .line 296
    return-void

    .line 298
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Lcom/bytedance/sdk/openadsdk/c/g$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/g$a;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 299
    const-string v0, "doRoutineUpload no net, wait retry"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->i()V

    .line 301
    return-void

    .line 303
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_77

    .line 305
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/c/h;->a:Z

    if-eqz v1, :cond_47

    .line 306
    const-string v0, "doRoutineUpload success"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->g()V

    .line 310
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->f()V

    goto :goto_77

    .line 313
    :cond_47
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/h;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 314
    const-string v0, "doRoutineUpload serverbusy"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->k()V

    goto :goto_77

    .line 317
    :cond_56
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Lcom/bytedance/sdk/openadsdk/c/h;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 319
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->g()V

    .line 321
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->f()V

    goto :goto_77

    .line 322
    :cond_63
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-nez v0, :cond_77

    .line 323
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Z

    if-nez v0, :cond_74

    .line 325
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->i()V

    .line 326
    const-string v0, "doRoutineUpload net fail retry"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    goto :goto_77

    .line 328
    :cond_74
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->l()V

    .line 334
    :cond_77
    :goto_77
    return-void
.end method

.method private f()V
    .registers 3

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:J

    .line 340
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->o()V

    .line 342
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->j()V

    .line 343
    return-void
.end method

.method private g()V
    .registers 3

    .line 346
    const-string v0, "clearCacheList, delete event from cache and db"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Ljava/util/List;)V

    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    return-void
.end method

.method private h()V
    .registers 4

    .line 353
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->m()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(IJ)V

    .line 354
    return-void
.end method

.method private i()V
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/c/g$b;->c:J

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(IJ)V

    .line 358
    return-void
.end method

.method private j()V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/c/g$b;->b:J

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(IJ)V

    .line 362
    return-void
.end method

.method private k()V
    .registers 3

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    .line 375
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Z)V

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->h()V

    .line 380
    return-void
.end method

.method private l()V
    .registers 3

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    .line 389
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Z)V

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->h()V

    .line 394
    return-void
.end method

.method private m()J
    .registers 5

    .line 402
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/c/g$b;->f:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private n()Z
    .registers 5

    .line 431
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/g$b;->a:I

    if-ge v0, v1, :cond_1f

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/c/g$b;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 431
    :goto_22
    return v0
.end method

.method private o()V
    .registers 3

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    .line 437
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Z)V

    .line 438
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    .line 439
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/e;->a(I)V

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/c/h;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    if-nez v0, :cond_7

    .line 219
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    if-nez v0, :cond_d

    .line 222
    const/4 p1, 0x0

    return-object p1

    .line 224
    :cond_d
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;

    move-result-object p1

    .line 225
    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    .line 106
    :pswitch_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->a()V

    goto :goto_1e

    .line 103
    :pswitch_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->b()V

    .line 104
    goto :goto_1e

    .line 100
    :pswitch_e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->c()V

    .line 101
    goto :goto_1e

    .line 97
    :pswitch_12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->d()V

    .line 98
    goto :goto_1e

    .line 94
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/c/i;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 95
    nop

    .line 109
    :goto_1e
    const/4 p1, 0x1

    return p1

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method protected onLooperPrepared()V
    .registers 3

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:J

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    .line 87
    return-void
.end method
