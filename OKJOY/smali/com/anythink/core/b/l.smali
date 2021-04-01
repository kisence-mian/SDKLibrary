.class public Lcom/anythink/core/b/l;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/anythink/core/b/l;


# instance fields
.field a:I

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/anythink/core/b/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/l;->b:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/b/l;->a:I

    .line 23
    return-void
.end method

.method public static a()Lcom/anythink/core/b/l;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/anythink/core/b/l;->c:Lcom/anythink/core/b/l;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/anythink/core/b/l;

    invoke-direct {v0}, Lcom/anythink/core/b/l;-><init>()V

    sput-object v0, Lcom/anythink/core/b/l;->c:Lcom/anythink/core/b/l;

    .line 29
    :cond_b
    sget-object v0, Lcom/anythink/core/b/l;->c:Lcom/anythink/core/b/l;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 41
    new-instance v1, Lcom/anythink/core/b/c/f;

    invoke-direct {v1}, Lcom/anythink/core/b/c/f;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, v1, Lcom/anythink/core/b/c/f;->b:I

    .line 43
    iput-object p1, v1, Lcom/anythink/core/b/c/f;->d:Ljava/lang/String;

    .line 44
    iput-object p2, v1, Lcom/anythink/core/b/c/f;->c:Ljava/lang/String;

    .line 45
    iput-object p3, v1, Lcom/anythink/core/b/c/f;->e:Ljava/lang/String;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/b/c/f;->f:J

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v1, Lcom/anythink/core/b/c/f;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    move-object v0, p3

    :goto_2e
    invoke-static {v0}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/core/b/c/f;->a:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/anythink/core/b/l;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save request:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/c;->a(Landroid/content/Context;)Lcom/anythink/core/b/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/e;->a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/b/e;->a(Lcom/anythink/core/b/c/f;)J

    .line 50
    return-void

    .line 47
    :cond_66
    const-string v0, ""

    goto :goto_2e
.end method

.method public final declared-synchronized b()V
    .registers 7

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/anythink/core/b/l;->a:I

    if-nez v0, :cond_8e

    .line 60
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/c;->a(Landroid/content/Context;)Lcom/anythink/core/b/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/e;->a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/b/e;->c()Ljava/util/List;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_87

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_87

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/anythink/core/b/l;->a:I

    .line 64
    iget-object v1, p0, Lcom/anythink/core/b/l;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "neet to send request count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/anythink/core/b/l;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/f;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/anythink/core/b/c/f;->f:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-ltz v2, :cond_78

    .line 68
    iget v2, p0, Lcom/anythink/core/b/l;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/anythink/core/b/l;->a:I

    .line 69
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/b/b/c;->a(Landroid/content/Context;)Lcom/anythink/core/b/b/c;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/b/b/e;->a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/b/e;->b(Lcom/anythink/core/b/c/f;)I
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_75

    goto :goto_41

    .line 58
    :catchall_75
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_78
    :try_start_78
    new-instance v2, Lcom/anythink/core/b/e/g;

    invoke-direct {v2, v0}, Lcom/anythink/core/b/e/g;-><init>(Lcom/anythink/core/b/c/f;)V

    .line 73
    const/4 v0, 0x0

    new-instance v3, Lcom/anythink/core/b/l$1;

    invoke-direct {v3, p0, v2}, Lcom/anythink/core/b/l$1;-><init>(Lcom/anythink/core/b/l;Lcom/anythink/core/b/e/g;)V

    invoke-virtual {v2, v0, v3}, Lcom/anythink/core/b/e/g;->a(ILcom/anythink/core/b/e/e;)V

    goto :goto_41

    .line 97
    :cond_87
    iget-object v0, p0, Lcom/anythink/core/b/l;->b:Ljava/lang/String;

    const-string v1, "neet to send request count:0"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_78 .. :try_end_8e} :catchall_75

    .line 102
    :cond_8e
    monitor-exit p0

    return-void
.end method
