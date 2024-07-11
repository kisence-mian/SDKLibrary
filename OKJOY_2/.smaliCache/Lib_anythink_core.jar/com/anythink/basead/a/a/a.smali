.class public Lcom/anythink/basead/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/a/a/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/a/a/a$a;
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/anythink/basead/a/a/a$a;

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/anythink/basead/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .registers 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/anythink/basead/a/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-object p1, p0, Lcom/anythink/basead/a/a/a;->b:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lcom/anythink/basead/a/a/a;->c:Z

    .line 44
    iput p3, p0, Lcom/anythink/basead/a/a/a;->d:I

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/a/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/basead/a/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a()V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/anythink/basead/a/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    iget-object v0, p0, Lcom/anythink/basead/a/a/a;->g:Lcom/anythink/basead/a/a/a$a;

    if-eqz v0, :cond_25

    .line 147
    sget-object v0, Lcom/anythink/basead/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offer load success, OfferId -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/basead/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/anythink/basead/a/a/a;->g:Lcom/anythink/basead/a/a/a$a;

    invoke-interface {v0}, Lcom/anythink/basead/a/a/a$a;->a()V

    .line 150
    :cond_25
    invoke-direct {p0}, Lcom/anythink/basead/a/a/a;->b()V

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/a/a/a;Lcom/anythink/basead/c/f;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/anythink/basead/a/a/a;->a(Lcom/anythink/basead/c/f;)V

    return-void
.end method

.method private a(Lcom/anythink/basead/c/f;)V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/anythink/basead/a/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    iget-object v0, p0, Lcom/anythink/basead/a/a/a;->g:Lcom/anythink/basead/a/a/a$a;

    if-eqz v0, :cond_25

    .line 156
    sget-object v0, Lcom/anythink/basead/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offer load failed, OfferId -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/basead/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/anythink/basead/a/a/a;->g:Lcom/anythink/basead/a/a/a$a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/a/a/a$a;->a(Lcom/anythink/basead/c/f;)V

    .line 159
    :cond_25
    invoke-direct {p0}, Lcom/anythink/basead/a/a/a;->b()V

    .line 160
    return-void
.end method

.method private b()V
    .registers 3

    .line 163
    invoke-static {}, Lcom/anythink/basead/a/a/c;->a()Lcom/anythink/basead/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/basead/a/a/c;->b(Lcom/anythink/basead/a/a/c$a;)V

    .line 164
    iget-object v0, p0, Lcom/anythink/basead/a/a/a;->h:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    iput-object v1, p0, Lcom/anythink/basead/a/a/a;->h:Landroid/os/Handler;

    .line 168
    :cond_11
    return-void
.end method

.method private c()V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/anythink/basead/a/a/a;->h:Landroid/os/Handler;

    if-nez v0, :cond_1a

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/basead/a/a/a;->h:Landroid/os/Handler;

    .line 173
    new-instance v1, Lcom/anythink/basead/a/a/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/a/a/a$1;-><init>(Lcom/anythink/basead/a/a/a;)V

    iget v2, p0, Lcom/anythink/basead/a/a/a;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    :cond_1a
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V
    .registers 9

    .line 63
    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/a/a;->e:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/anythink/basead/a/a/a;->g:Lcom/anythink/basead/a/a/a$a;

    .line 67
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/d/h;->a(Lcom/anythink/core/common/d/j;)Ljava/util/List;

    move-result-object p2

    .line 68
    if-nez p2, :cond_1a

    .line 69
    const-string p1, "30003"

    const-string p2, "Incomplete resource allocation!"

    invoke-static {p1, p2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/basead/a/a/a;->a(Lcom/anythink/basead/c/f;)V

    .line 70
    return-void

    .line 73
    :cond_1a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 75
    if-nez p3, :cond_24

    .line 76
    invoke-direct {p0}, Lcom/anythink/basead/a/a/a;->a()V

    .line 77
    return-void

    .line 80
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/basead/a/a/a;->f:Ljava/util/List;

    .line 81
    const/4 v0, 0x0

    move v1, v0

    :goto_2d
    if-ge v1, p3, :cond_43

    .line 82
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    invoke-static {v2}, Lcom/anythink/basead/a/a/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 85
    iget-object v3, p0, Lcom/anythink/basead/a/a/a;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 89
    :cond_43
    iget-object p2, p0, Lcom/anythink/basead/a/a/a;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 90
    if-nez p2, :cond_6b

    .line 91
    sget-object p1, Lcom/anythink/basead/a/a/a;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Offer("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/anythink/basead/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), all files have already exist"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/anythink/basead/a/a/a;->a()V

    .line 93
    return-void

    .line 97
    :cond_6b
    invoke-static {}, Lcom/anythink/basead/a/a/c;->a()Lcom/anythink/basead/a/a/c;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/anythink/basead/a/a/c;->a(Lcom/anythink/basead/a/a/c$a;)V

    .line 98
    nop

    .line 1171
    iget-object p3, p0, Lcom/anythink/basead/a/a/a;->h:Landroid/os/Handler;

    if-nez p3, :cond_8d

    .line 1172
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/anythink/basead/a/a/a;->h:Landroid/os/Handler;

    .line 1173
    new-instance v1, Lcom/anythink/basead/a/a/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/a/a/a$1;-><init>(Lcom/anythink/basead/a/a/a;)V

    iget v2, p0, Lcom/anythink/basead/a/a/a;->d:I

    int-to-long v2, v2

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    :cond_8d
    monitor-enter p0

    .line 101
    move p3, v0

    :goto_8f
    if-ge p3, p2, :cond_f7

    .line 102
    :try_start_91
    iget-object v1, p0, Lcom/anythink/basead/a/a/a;->f:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 106
    invoke-static {v1}, Lcom/anythink/basead/a/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 107
    sget-object v2, Lcom/anythink/basead/a/a/a;->a:Ljava/lang/String;

    const-string v3, "file is loading -> "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    goto :goto_f4

    .line 109
    :cond_b5
    invoke-static {v1}, Lcom/anythink/basead/a/a/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 110
    sget-object v2, Lcom/anythink/basead/a/a/a;->a:Ljava/lang/String;

    const-string v3, "file exist -> "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v1, v0}, Lcom/anythink/basead/a/a/b;->a(Ljava/lang/String;I)V

    .line 112
    invoke-static {}, Lcom/anythink/basead/a/a/c;->a()Lcom/anythink/basead/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/anythink/basead/a/a/c;->a(Ljava/lang/String;)V

    .line 113
    goto :goto_f4

    .line 115
    :cond_d5
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/anythink/basead/a/a/b;->a(Ljava/lang/String;I)V

    .line 116
    sget-object v2, Lcom/anythink/basead/a/a/a;->a:Ljava/lang/String;

    const-string v3, "file not exist -> "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v2, Lcom/anythink/basead/a/a/d;

    iget-object v3, p0, Lcom/anythink/basead/a/a/a;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/anythink/basead/a/a/a;->c:Z

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/anythink/basead/a/a/d;-><init>(Ljava/lang/String;ZLcom/anythink/core/common/d/h;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Lcom/anythink/basead/a/a/d;->d()V

    .line 101
    :cond_f4
    :goto_f4
    add-int/lit8 p3, p3, 0x1

    goto :goto_8f

    .line 120
    :cond_f7
    monitor-exit p0

    return-void

    :catchall_f9
    move-exception p1

    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_91 .. :try_end_fb} :catchall_f9

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 125
    monitor-enter p0

    .line 126
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1, v0}, Lcom/anythink/basead/a/a/b;->a(Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/anythink/basead/a/a/a;->f:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 128
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p0, Lcom/anythink/basead/a/a/a;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1f

    .line 130
    iget-object p1, p0, Lcom/anythink/basead/a/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 131
    invoke-direct {p0}, Lcom/anythink/basead/a/a/a;->a()V

    .line 135
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 140
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/basead/a/a/b;->a(Ljava/lang/String;I)V

    .line 141
    invoke-direct {p0, p2}, Lcom/anythink/basead/a/a/a;->a(Lcom/anythink/basead/c/f;)V

    .line 142
    return-void
.end method
