.class public Lcom/anythink/myoffer/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/a/a/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/a/a/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/anythink/myoffer/a/a/d$a;

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/anythink/myoffer/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/a/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .registers 6

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/d;->b:Ljava/lang/String;

    .line 35
    iput-boolean p2, p0, Lcom/anythink/myoffer/a/a/d;->c:Z

    .line 36
    iput p3, p0, Lcom/anythink/myoffer/a/a/d;->d:I

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->g:Lcom/anythink/myoffer/a/a/d$a;

    if-eqz v0, :cond_25

    .line 134
    sget-object v0, Lcom/anythink/myoffer/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offer load success, OfferId -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->g:Lcom/anythink/myoffer/a/a/d$a;

    invoke-interface {v0}, Lcom/anythink/myoffer/a/a/d$a;->a()V

    .line 137
    :cond_25
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/d;->b()V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/d;Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/anythink/myoffer/a/a/d;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    return-void
.end method

.method private a(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->g:Lcom/anythink/myoffer/a/a/d$a;

    if-eqz v0, :cond_25

    .line 142
    sget-object v0, Lcom/anythink/myoffer/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offer load failed, OfferId -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->g:Lcom/anythink/myoffer/a/a/d$a;

    invoke-interface {v0, p1}, Lcom/anythink/myoffer/a/a/d$a;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 145
    :cond_25
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/d;->b()V

    .line 146
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-static {}, Lcom/anythink/myoffer/a/a/g;->a()Lcom/anythink/myoffer/a/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/myoffer/a/a/g;->b(Lcom/anythink/myoffer/a/a/g$b;)V

    .line 149
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 150
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 151
    iput-object v1, p0, Lcom/anythink/myoffer/a/a/d;->h:Landroid/os/Handler;

    .line 153
    :cond_13
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->h:Landroid/os/Handler;

    if-nez v0, :cond_1c

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/d;->h:Landroid/os/Handler;

    .line 158
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->h:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/myoffer/a/a/d$1;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/a/a/d$1;-><init>(Lcom/anythink/myoffer/a/a/d;)V

    iget v2, p0, Lcom/anythink/myoffer/a/a/d;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    :cond_1c
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/a/a/d$a;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/d;->e:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/anythink/myoffer/a/a/d;->g:Lcom/anythink/myoffer/a/a/d$a;

    .line 58
    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->C()Ljava/util/List;

    move-result-object v3

    .line 59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 61
    if-nez v4, :cond_17

    .line 62
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/d;->a()V

    .line 107
    :goto_16
    return-void

    .line 66
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/d;->f:Ljava/util/List;

    move v2, v1

    .line 67
    :goto_1f
    if-ge v2, v4, :cond_36

    .line 68
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/e;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 71
    iget-object v5, p0, Lcom/anythink/myoffer/a/a/d;->f:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1f

    .line 75
    :cond_36
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 76
    if-nez v7, :cond_5e

    .line 77
    sget-object v0, Lcom/anythink/myoffer/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offer("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), all files have already exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/d;->a()V

    goto :goto_16

    .line 83
    :cond_5e
    invoke-static {}, Lcom/anythink/myoffer/a/a/g;->a()Lcom/anythink/myoffer/a/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/myoffer/a/a/g;->a(Lcom/anythink/myoffer/a/a/g$b;)V

    .line 1156
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->h:Landroid/os/Handler;

    if-nez v0, :cond_81

    .line 1157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/d;->h:Landroid/os/Handler;

    .line 1158
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->h:Landroid/os/Handler;

    new-instance v2, Lcom/anythink/myoffer/a/a/d$1;

    invoke-direct {v2, p0}, Lcom/anythink/myoffer/a/a/d$1;-><init>(Lcom/anythink/myoffer/a/a/d;)V

    iget v3, p0, Lcom/anythink/myoffer/a/a/d;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    :cond_81
    monitor-enter p0

    move v6, v1

    .line 87
    :goto_83
    if-ge v6, v7, :cond_fc

    .line 88
    :try_start_85
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 92
    invoke-static {v4}, Lcom/anythink/myoffer/a/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 93
    sget-object v0, Lcom/anythink/myoffer/a/a/d;->a:Ljava/lang/String;

    const-string v1, "file is loading -> "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_a8
    :goto_a8
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_83

    .line 96
    :cond_ac
    invoke-static {v4}, Lcom/anythink/myoffer/a/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 97
    sget-object v0, Lcom/anythink/myoffer/a/a/d;->a:Ljava/lang/String;

    const-string v1, "file exist -> "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/anythink/myoffer/a/a/e;->a(Ljava/lang/String;I)V

    .line 99
    invoke-static {}, Lcom/anythink/myoffer/a/a/g;->a()Lcom/anythink/myoffer/a/a/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/anythink/myoffer/a/a/g;->a(Ljava/lang/String;)V

    goto :goto_a8

    .line 107
    :catchall_cd
    move-exception v0

    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_85 .. :try_end_cf} :catchall_cd

    throw v0

    .line 102
    :cond_d0
    const/4 v0, 0x1

    :try_start_d1
    invoke-static {v4, v0}, Lcom/anythink/myoffer/a/a/e;->a(Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/anythink/myoffer/a/a/d;->a:Ljava/lang/String;

    const-string v1, "file not exist -> "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/anythink/myoffer/a/a/h;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/d;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/anythink/myoffer/a/a/d;->c:Z

    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/anythink/myoffer/a/a/h;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {v0}, Lcom/anythink/myoffer/a/a/h;->a()V

    goto :goto_a8

    .line 107
    :cond_fc
    monitor-exit p0
    :try_end_fd
    .catchall {:try_start_d1 .. :try_end_fd} :catchall_cd

    goto/16 :goto_16
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1, v0}, Lcom/anythink/myoffer/a/a/e;->a(Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->f:Ljava/util/List;

    if-eqz v0, :cond_21

    .line 115
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_21

    .line 117
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_21

    .line 118
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/d;->a()V

    .line 122
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 4

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/myoffer/a/a/e;->a(Ljava/lang/String;I)V

    .line 128
    invoke-direct {p0, p2}, Lcom/anythink/myoffer/a/a/d;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 129
    return-void
.end method
