.class public Lcom/anythink/core/common/n;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/anythink/core/common/n;


# instance fields
.field a:I

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/anythink/core/common/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/n;->a:I

    .line 32
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/n;
    .registers 2

    const-class v0, Lcom/anythink/core/common/n;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/n;->c:Lcom/anythink/core/common/n;

    if-nez v1, :cond_e

    .line 36
    new-instance v1, Lcom/anythink/core/common/n;

    invoke-direct {v1}, Lcom/anythink/core/common/n;-><init>()V

    sput-object v1, Lcom/anythink/core/common/n;->c:Lcom/anythink/core/common/n;

    .line 38
    :cond_e
    sget-object v1, Lcom/anythink/core/common/n;->c:Lcom/anythink/core/common/n;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 34
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 50
    new-instance v0, Lcom/anythink/core/common/d/n;

    invoke-direct {v0}, Lcom/anythink/core/common/d/n;-><init>()V

    .line 51
    iput p1, v0, Lcom/anythink/core/common/d/n;->b:I

    .line 52
    iput-object p2, v0, Lcom/anythink/core/common/d/n;->d:Ljava/lang/String;

    .line 53
    iput-object p3, v0, Lcom/anythink/core/common/d/n;->c:Ljava/lang/String;

    .line 54
    iput-object p4, v0, Lcom/anythink/core/common/d/n;->e:Ljava/lang/String;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/d/n;->f:J

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, v0, Lcom/anythink/core/common/d/n;->f:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e

    move-object p1, p4

    goto :goto_30

    :cond_2e
    const-string p1, ""

    :goto_30
    invoke-static {p1}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/anythink/core/common/d/n;->a:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "save request:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "--content:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/e;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/c/e;->a(Lcom/anythink/core/common/d/n;)J

    .line 59
    return-void
.end method

.method public final declared-synchronized b()V
    .registers 7

    monitor-enter p0

    .line 67
    :try_start_1
    iget v0, p0, Lcom/anythink/core/common/n;->a:I

    if-nez v0, :cond_a2

    .line 69
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/e;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/c/e;->c()Ljava/util/List;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_9b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9b

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/anythink/core/common/n;->a:I

    .line 73
    iget-object v1, p0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "neet to send request count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/anythink/core/common/n;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/d/n;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/anythink/core/common/d/n;->f:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-ltz v2, :cond_75

    .line 77
    iget v2, p0, Lcom/anythink/core/common/n;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/anythink/core/common/n;->a:I

    .line 78
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/c/e;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/anythink/core/common/c/e;->b(Lcom/anythink/core/common/d/n;)I

    .line 79
    goto :goto_41

    .line 82
    :cond_75
    iget v2, v1, Lcom/anythink/core/common/d/n;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8a

    .line 83
    new-instance v2, Lcom/anythink/core/common/e/a/d;

    iget-object v3, v1, Lcom/anythink/core/common/d/n;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/anythink/core/common/e/a/d;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v3, Lcom/anythink/core/common/n$1;

    invoke-direct {v3, p0, v1}, Lcom/anythink/core/common/n$1;-><init>(Lcom/anythink/core/common/n;Lcom/anythink/core/common/d/n;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/e/a/d;->a(Lcom/anythink/core/common/e/a/b$a;)V

    .line 97
    goto :goto_41

    .line 98
    :cond_8a
    new-instance v2, Lcom/anythink/core/common/e/i;

    invoke-direct {v2, v1}, Lcom/anythink/core/common/e/i;-><init>(Lcom/anythink/core/common/d/n;)V

    .line 99
    const/4 v1, 0x0

    new-instance v3, Lcom/anythink/core/common/n$2;

    invoke-direct {v3, p0, v2}, Lcom/anythink/core/common/n$2;-><init>(Lcom/anythink/core/common/n;Lcom/anythink/core/common/e/i;)V

    invoke-virtual {v2, v1, v3}, Lcom/anythink/core/common/e/i;->a(ILcom/anythink/core/common/e/g;)V
    :try_end_98
    .catchall {:try_start_1 .. :try_end_98} :catchall_a4

    .line 123
    goto :goto_41

    :cond_99
    monitor-exit p0

    return-void

    .line 125
    :cond_9b
    :try_start_9b
    iget-object v0, p0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    const-string v1, "neet to send request count:0"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_a4

    .line 130
    :cond_a2
    monitor-exit p0

    return-void

    .line 66
    :catchall_a4
    move-exception v0

    monitor-exit p0

    throw v0
.end method
