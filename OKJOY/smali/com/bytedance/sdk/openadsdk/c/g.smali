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
            "Lcom/bytedance/sdk/openadsdk/c/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field public d:Lcom/bytedance/sdk/openadsdk/core/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/p",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public f:J

.field public g:Z

.field public h:I

.field public i:Landroid/os/Handler;

.field public final j:Lcom/bytedance/sdk/openadsdk/c/g$a;

.field public final k:Lcom/bytedance/sdk/openadsdk/c/g$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "AdEventThread"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/lang/String;

    .line 25
    const-string v0, "ttad_bk"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/c/e",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/core/p",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/c/g$b;",
            "Lcom/bytedance/sdk/openadsdk/c/g$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    .line 55
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Lcom/bytedance/sdk/openadsdk/c/g$a;

    .line 56
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    .line 57
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/c/e",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/core/p",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/c/g$b;",
            "Lcom/bytedance/sdk/openadsdk/c/g$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    sput-object p2, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    .line 66
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Lcom/bytedance/sdk/openadsdk/c/g$a;

    .line 67
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    .line 68
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    .line 70
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/g$b;->d:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/c/g$b;->e:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/e;->a(IJ)V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/e;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/e;->c()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    .line 108
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-eqz v0, :cond_3d

    .line 109
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

    .line 110
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->h()V

    .line 117
    :goto_3c
    return-void

    .line 112
    :cond_3d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/e;->a()Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Ljava/util/List;)V

    .line 114
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

    .line 115
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e()V

    goto :goto_3c
.end method

.method private a(IJ)V
    .registers 6

    .prologue
    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 315
    iput p1, v0, Landroid/os/Message;->what:I

    .line 316
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Ljava/lang/Object;)V

    .line 229
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-eqz v0, :cond_a

    .line 239
    :cond_9
    :goto_9
    return-void

    .line 233
    :cond_a
    const-string v0, "onHandleReceivedAdEvent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 236
    const-string v0, "onHandleReceivedAdEvent upload"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e()V

    goto :goto_9
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 379
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/c/h;)Z
    .registers 3

    .prologue
    .line 347
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/h;->b:I

    const/16 v1, 0x1fd

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private b()V
    .registers 7

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Lcom/bytedance/sdk/openadsdk/c/g$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/g$a;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 146
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/c/g$b;->c:J

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/g;->a(IJ)V

    .line 147
    const-string v0, "onHandleServerBusyRetryEvent, no net"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 192
    :cond_15
    :goto_15
    return-void

    .line 150
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/e;->a()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 152
    const-string v0, "onHandleServerBusyRetryEvent, empty list start routine"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->n()V

    .line 157
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->j()V

    goto :goto_15

    .line 160
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_15

    .line 162
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/c/h;->a:Z

    if-eqz v2, :cond_44

    .line 163
    const-string v0, "onHandleServerBusyRetryEvent, success"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->g()V

    .line 167
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->f()V

    goto :goto_15

    .line 169
    :cond_44
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/h;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 170
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    .line 171
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/e;->a(I)V

    .line 172
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/c/g$b;->d:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v4, v3, Lcom/bytedance/sdk/openadsdk/c/g$b;->e:J

    invoke-interface {v1, v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Ljava/util/List;IJ)V

    .line 175
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->h()V

    .line 176
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

    goto :goto_15

    .line 178
    :cond_80
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Lcom/bytedance/sdk/openadsdk/c/h;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 180
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->g()V

    .line 182
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->f()V

    goto :goto_15

    .line 185
    :cond_8d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->i()V

    .line 186
    const-string v0, "onHandleServerBusyRetryEvent, net fail"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    goto :goto_15
.end method

.method private b(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    if-eqz p1, :cond_8

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 126
    :cond_8
    const-string v0, "reloadCacheList adEventList is empty======"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 140
    :cond_d
    :goto_d
    return-void

    .line 129
    :cond_e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/i;

    .line 131
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 138
    :catch_2d
    move-exception v0

    goto :goto_d

    .line 133
    :cond_2f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/i;

    .line 134
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 135
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_2d

    goto :goto_33
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/c/h;)Z
    .registers 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/h;->d:Z

    return v0
.end method

.method private c()V
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-eqz v0, :cond_5

    .line 214
    :goto_4
    return-void

    .line 212
    :cond_5
    const-string v0, "onHandleRoutineRetryEvent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e()V

    goto :goto_4
.end method

.method private d()V
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-eqz v0, :cond_5

    .line 224
    :goto_4
    return-void

    .line 222
    :cond_5
    const-string v0, "onHandleRoutineUploadEvent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e()V

    goto :goto_4
.end method

.method private e()V
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:J

    .line 249
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->j()V

    .line 284
    :cond_1d
    :goto_1d
    return-void

    .line 252
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Lcom/bytedance/sdk/openadsdk/c/g$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/g$a;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 253
    const-string v0, "doRoutineUpload no net, wait retry"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->i()V

    goto :goto_1d

    .line 257
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1d

    .line 259
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/c/h;->a:Z

    if-eqz v1, :cond_47

    .line 260
    const-string v0, "doRoutineUpload success"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->g()V

    .line 264
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->f()V

    goto :goto_1d

    .line 267
    :cond_47
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/h;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 268
    const-string v0, "doRoutineUpload serverbusy"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->k()V

    goto :goto_1d

    .line 271
    :cond_56
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Lcom/bytedance/sdk/openadsdk/c/h;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 273
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->g()V

    .line 275
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->f()V

    goto :goto_1d

    .line 276
    :cond_63
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-nez v0, :cond_1d

    .line 278
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->i()V

    .line 279
    const-string v0, "doRoutineUpload net fail retry"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private f()V
    .registers 3

    .prologue
    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:J

    .line 290
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->n()V

    .line 292
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->j()V

    .line 293
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Ljava/util/List;)V

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 298
    return-void
.end method

.method private h()V
    .registers 5

    .prologue
    .line 302
    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->l()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/g;->a(IJ)V

    .line 303
    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 306
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/c/g$b;->c:J

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/g;->a(IJ)V

    .line 307
    return-void
.end method

.method private j()V
    .registers 5

    .prologue
    .line 310
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/c/g$b;->b:J

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/g;->a(IJ)V

    .line 311
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 323
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Z)V

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->h()V

    .line 329
    return-void
.end method

.method private l()J
    .registers 5

    .prologue
    .line 337
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/c/g$b;->f:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private m()Z
    .registers 5

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Lcom/bytedance/sdk/openadsdk/c/g$b;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/g$b;->a:I

    if-ge v0, v1, :cond_1f

    .line 367
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

    .line 366
    :goto_20
    return v0

    .line 367
    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private n()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 371
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Z

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Z)V

    .line 373
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->h:I

    .line 374
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Lcom/bytedance/sdk/openadsdk/c/e;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/e;->a(I)V

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/c/h;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    if-nez v0, :cond_7

    .line 197
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    if-nez v0, :cond_d

    .line 200
    const/4 v0, 0x0

    .line 203
    :goto_c
    return-object v0

    .line 202
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;

    move-result-object v0

    goto :goto_c
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 100
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 85
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/i;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    goto :goto_5

    .line 88
    :pswitch_f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->d()V

    goto :goto_5

    .line 91
    :pswitch_13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->c()V

    goto :goto_5

    .line 94
    :pswitch_17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->b()V

    goto :goto_5

    .line 97
    :pswitch_1b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->a()V

    goto :goto_5

    .line 82
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method

.method protected onLooperPrepared()V
    .registers 3

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:J

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Landroid/os/Handler;

    .line 78
    return-void
.end method
