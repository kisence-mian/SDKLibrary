.class public Lcom/anythink/core/b/a;
.super Lcom/anythink/core/b/d;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/anythink/core/b/b/a;

.field private e:J

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/anythink/core/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/d/a;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Lcom/anythink/core/b/d;-><init>(Lcom/anythink/core/common/d/a;)V

    .line 44
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/anythink/core/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/anythink/core/b/a;->l:Lcom/anythink/core/common/d/a;

    iget-object v0, v0, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/b/a;->b:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/b/a;->c:Ljava/util/List;

    .line 51
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;
    .registers 1

    .line 160
    invoke-static {p0}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/core/b/a;ZLcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/c/c$b;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/b/a;->a(ZLcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/c/c$b;)V

    return-void
.end method

.method private declared-synchronized a(ZLcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/c/c$b;)V
    .registers 8

    monitor-enter p0

    .line 136
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/b/a;->e:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/anythink/core/b/a;->a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/k;J)V

    .line 138
    iget-object p2, p0, Lcom/anythink/core/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_42

    .line 139
    iget-object p2, p0, Lcom/anythink/core/b/a;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object p2, p0, Lcom/anythink/core/b/a;->b:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object p2, p0, Lcom/anythink/core/b/a;->d:Lcom/anythink/core/b/b/a;

    if-eqz p2, :cond_2e

    .line 143
    if-eqz p1, :cond_29

    .line 144
    iget-object p1, p0, Lcom/anythink/core/b/a;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Lcom/anythink/core/b/b/a;->a(Ljava/util/List;)V

    goto :goto_2e

    .line 146
    :cond_29
    iget-object p1, p0, Lcom/anythink/core/b/a;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Lcom/anythink/core/b/b/a;->b(Ljava/util/List;)V

    .line 149
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lcom/anythink/core/b/a;->c:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    iget-object p1, p0, Lcom/anythink/core/b/a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_42

    .line 152
    iget-object p1, p0, Lcom/anythink/core/b/a;->d:Lcom/anythink/core/b/b/a;

    if-eqz p1, :cond_42

    .line 153
    invoke-interface {p1}, Lcom/anythink/core/b/b/a;->a()V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 157
    :cond_42
    monitor-exit p0

    return-void

    .line 135
    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 8

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 166
    iget-object v0, p0, Lcom/anythink/core/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    sget-object v0, Lcom/anythink/core/b/a;->a:Ljava/lang/String;

    const-string v1, "c2s bid request timeout"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/anythink/core/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 171
    iget-object v2, p0, Lcom/anythink/core/b/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v2, "bid timeout!"

    .line 6160
    invoke-static {v2}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v2

    .line 173
    nop

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/anythink/core/b/a;->e:J

    sub-long/2addr v3, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/anythink/core/b/a;->a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/k;J)V

    .line 175
    goto :goto_1c

    .line 176
    :cond_3f
    iget-object v0, p0, Lcom/anythink/core/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    iget-object v0, p0, Lcom/anythink/core/b/a;->d:Lcom/anythink/core/b/b/a;

    if-eqz v0, :cond_4d

    .line 179
    iget-object v1, p0, Lcom/anythink/core/b/a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/anythink/core/b/b/a;->b(Ljava/util/List;)V

    .line 181
    :cond_4d
    iget-object v0, p0, Lcom/anythink/core/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    iget-object v0, p0, Lcom/anythink/core/b/a;->d:Lcom/anythink/core/b/b/a;

    if-eqz v0, :cond_59

    .line 184
    invoke-interface {v0}, Lcom/anythink/core/b/b/a;->a()V

    .line 186
    :cond_59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/b/a;->d:Lcom/anythink/core/b/b/a;
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 188
    :cond_5c
    monitor-exit p0

    return-void

    .line 164
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lcom/anythink/core/b/b/a;)V
    .registers 11

    .line 55
    iput-object p1, p0, Lcom/anythink/core/b/a;->d:Lcom/anythink/core/b/b/a;

    .line 57
    iget-object p1, p0, Lcom/anythink/core/b/a;->l:Lcom/anythink/core/common/d/a;

    iget-object p1, p1, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/core/b/a;->e:J

    .line 62
    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_89

    .line 63
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 64
    invoke-static {v3}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v4

    .line 66
    if-nez v4, :cond_3e

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/anythink/core/c/c$b;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "not exist!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1160
    invoke-static {v4}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v4

    .line 67
    nop

    .line 68
    invoke-direct {p0, v1, v4, v3}, Lcom/anythink/core/b/a;->a(ZLcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/c/c$b;)V

    .line 70
    goto :goto_86

    .line 73
    :cond_3e
    :try_start_3e
    new-instance v5, Lcom/anythink/core/b/a$1;

    invoke-direct {v5, p0, v3}, Lcom/anythink/core/b/a$1;-><init>(Lcom/anythink/core/b/a;Lcom/anythink/core/c/c$b;)V

    .line 81
    sget-object v6, Lcom/anythink/core/b/a;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "start c2s bid request: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v6, v3, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-static {v6}, Lcom/anythink/core/common/g/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 83
    iget-object v7, p0, Lcom/anythink/core/b/a;->l:Lcom/anythink/core/common/d/a;

    iget-object v7, v7, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    invoke-virtual {v4, v7, v6, v5}, Lcom/anythink/core/api/ATBaseAdAdapter;->startBiddingRequest(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 84
    const-string v4, "This network don\'t support head bidding in current TopOn\'s version."

    .line 2160
    invoke-static {v4}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v4

    .line 84
    nop

    .line 85
    invoke-direct {p0, v1, v4, v3}, Lcom/anythink/core/b/a;->a(ZLcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/c/c$b;)V
    :try_end_75
    .catchall {:try_start_3e .. :try_end_75} :catchall_76

    .line 91
    :cond_75
    goto :goto_86

    .line 87
    :catchall_76
    move-exception v4

    .line 88
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 3160
    invoke-static {v4}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v4

    .line 89
    nop

    .line 90
    invoke-direct {p0, v1, v4, v3}, Lcom/anythink/core/b/a;->a(ZLcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/c/c$b;)V

    .line 62
    :goto_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 94
    :cond_89
    return-void
.end method

.method protected final a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/k;J)V
    .registers 13

    .line 99
    iget-boolean v0, p2, Lcom/anythink/core/common/d/k;->isSuccess:Z

    if-eqz v0, :cond_50

    .line 100
    iput-wide p3, p1, Lcom/anythink/core/c/c$b;->s:J

    .line 101
    iget-wide p3, p2, Lcom/anythink/core/common/d/k;->price:D

    iput-wide p3, p1, Lcom/anythink/core/c/c$b;->m:D

    .line 102
    iget-object p2, p2, Lcom/anythink/core/common/d/k;->token:Ljava/lang/String;

    iput-object p2, p1, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 103
    const/4 p2, 0x0

    iput p2, p1, Lcom/anythink/core/c/c$b;->q:I

    .line 105
    sget-object p2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    iget-object p3, p0, Lcom/anythink/core/b/a;->l:Lcom/anythink/core/common/d/a;

    iget-object p3, p3, Lcom/anythink/core/common/d/a;->c:Ljava/lang/String;

    iget-object p4, p0, Lcom/anythink/core/b/a;->l:Lcom/anythink/core/common/d/a;

    iget p4, p4, Lcom/anythink/core/common/d/a;->d:I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/anythink/core/common/g/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4, p1}, Lcom/anythink/core/common/g/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 108
    new-instance p2, Lcom/anythink/core/common/d/l;

    const/4 v1, 0x1

    iget-wide v2, p1, Lcom/anythink/core/c/c$b;->m:D

    iget-object v4, p1, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/common/d/l;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    nop

    .line 3908
    iget-wide p3, p1, Lcom/anythink/core/c/c$b;->x:J

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/anythink/core/common/d/l;->f:J

    .line 110
    nop

    .line 4908
    iget-wide p3, p1, Lcom/anythink/core/c/c$b;->x:J

    .line 110
    iput-wide p3, p2, Lcom/anythink/core/common/d/l;->e:J

    .line 113
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object p3

    iget-object p1, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;Lcom/anythink/core/common/d/l;)V

    .line 120
    return-void

    .line 121
    :cond_50
    iput-wide p3, p1, Lcom/anythink/core/c/c$b;->s:J

    .line 122
    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/anythink/core/c/c$b;->m:D

    .line 123
    const/4 p3, -0x1

    iput p3, p1, Lcom/anythink/core/c/c$b;->q:I

    .line 124
    iput p3, p1, Lcom/anythink/core/c/c$b;->a:I

    .line 125
    iget-object p3, p2, Lcom/anythink/core/common/d/k;->errorMsg:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_69

    .line 126
    nop

    .line 5016
    const-string p2, "bid error"

    iput-object p2, p1, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 126
    goto :goto_6d

    .line 128
    :cond_69
    iget-object p2, p2, Lcom/anythink/core/common/d/k;->errorMsg:Ljava/lang/String;

    .line 6016
    iput-object p2, p1, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 131
    :goto_6d
    sget-object p2, Lcom/anythink/core/common/b/e$e;->g:Ljava/lang/String;

    iget-object p3, p0, Lcom/anythink/core/b/a;->l:Lcom/anythink/core/common/d/a;

    iget-object p3, p3, Lcom/anythink/core/common/d/a;->c:Ljava/lang/String;

    iget-object p4, p0, Lcom/anythink/core/b/a;->l:Lcom/anythink/core/common/d/a;

    iget p4, p4, Lcom/anythink/core/common/d/a;->d:I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/anythink/core/common/g/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4, p1}, Lcom/anythink/core/common/g/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V

    .line 133
    return-void
.end method
