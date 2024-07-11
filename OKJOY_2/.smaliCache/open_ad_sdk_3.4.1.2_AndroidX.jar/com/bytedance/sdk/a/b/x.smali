.class final Lcom/bytedance/sdk/a/b/x;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/x$a;
    }
.end annotation


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/v;

.field final b:Lcom/bytedance/sdk/a/b/a/c/j;

.field final c:Lcom/bytedance/sdk/a/b/y;

.field final d:Z

.field private e:Lcom/bytedance/sdk/a/b/p;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/y;Z)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    .line 53
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/x;->c:Lcom/bytedance/sdk/a/b/y;

    .line 54
    iput-boolean p3, p0, Lcom/bytedance/sdk/a/b/x;->d:Z

    .line 55
    new-instance p2, Lcom/bytedance/sdk/a/b/a/c/j;

    invoke-direct {p2, p1, p3}, Lcom/bytedance/sdk/a/b/a/c/j;-><init>(Lcom/bytedance/sdk/a/b/v;Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/a/b/x;->b:Lcom/bytedance/sdk/a/b/a/c/j;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/a/b/x;)Lcom/bytedance/sdk/a/b/p;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/a/b/x;->e:Lcom/bytedance/sdk/a/b/p;

    return-object p0
.end method

.method static a(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/y;Z)Lcom/bytedance/sdk/a/b/x;
    .registers 4

    .line 60
    new-instance v0, Lcom/bytedance/sdk/a/b/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/a/b/x;-><init>(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/y;Z)V

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/v;->x()Lcom/bytedance/sdk/a/b/p$a;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/a/b/p$a;->a(Lcom/bytedance/sdk/a/b/e;)Lcom/bytedance/sdk/a/b/p;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/a/b/x;->e:Lcom/bytedance/sdk/a/b/p;

    .line 62
    return-object v0
.end method

.method private g()V
    .registers 3

    .line 92
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/g/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x;->b:Lcom/bytedance/sdk/a/b/a/c/j;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Ljava/lang/Object;)V

    .line 94
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/aa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/x;->f:Z

    if-nez v0, :cond_46

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/x;->f:Z

    .line 75
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4e

    .line 76
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/x;->g()V

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->e:Lcom/bytedance/sdk/a/b/p;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;)V

    .line 79
    :try_start_11
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->s()Lcom/bytedance/sdk/a/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/b/n;->a(Lcom/bytedance/sdk/a/b/x;)V

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/x;->f()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1e} :catch_35
    .catchall {:try_start_11 .. :try_end_1e} :catchall_33

    .line 81
    if-eqz v0, :cond_2b

    .line 82
    nop

    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->s()Lcom/bytedance/sdk/a/b/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/a/b/n;->b(Lcom/bytedance/sdk/a/b/x;)V

    .line 82
    return-object v0

    .line 81
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_35
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 87
    :catchall_33
    move-exception v0

    goto :goto_3c

    .line 83
    :catch_35
    move-exception v0

    .line 84
    :try_start_36
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x;->e:Lcom/bytedance/sdk/a/b/p;

    invoke-virtual {v1, p0, v0}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V

    .line 85
    throw v0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_33

    .line 87
    :goto_3c
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->s()Lcom/bytedance/sdk/a/b/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/a/b/n;->b(Lcom/bytedance/sdk/a/b/x;)V

    .line 88
    throw v0

    .line 73
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public b()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->b:Lcom/bytedance/sdk/a/b/a/c/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/c/j;->a()Z

    move-result v0

    return v0
.end method

.method public c()Lcom/bytedance/sdk/a/b/x;
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/x;->c:Lcom/bytedance/sdk/a/b/y;

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/x;->d:Z

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/a/b/x;->a(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/y;Z)Lcom/bytedance/sdk/a/b/x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/x;->c()Lcom/bytedance/sdk/a/b/x;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/x;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/x;->d:Z

    if-eqz v1, :cond_1b

    const-string v1, "web socket"

    goto :goto_1d

    :cond_1b
    const-string v1, "call"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/x;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->c:Lcom/bytedance/sdk/a/b/y;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/bytedance/sdk/a/b/aa;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->v()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->b:Lcom/bytedance/sdk/a/b/a/c/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/a;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->f()Lcom/bytedance/sdk/a/b/m;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/a/b/a/c/a;-><init>(Lcom/bytedance/sdk/a/b/m;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Lcom/bytedance/sdk/a/b/a/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->g()Lcom/bytedance/sdk/a/b/a/a/e;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/a/b/a/a/a;-><init>(Lcom/bytedance/sdk/a/b/a/a/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/a;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/a/b/a/b/a;-><init>(Lcom/bytedance/sdk/a/b/v;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/x;->d:Z

    if-nez v0, :cond_43

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_43
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/b;

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/x;->d:Z

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/a/b/a/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v12, Lcom/bytedance/sdk/a/b/a/c/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/a/b/x;->c:Lcom/bytedance/sdk/a/b/y;

    iget-object v8, p0, Lcom/bytedance/sdk/a/b/x;->e:Lcom/bytedance/sdk/a/b/p;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    .line 206
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->a()I

    move-result v9

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    .line 207
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->b()I

    move-result v10

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->c()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/sdk/a/b/a/c/g;-><init>(Ljava/util/List;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;ILcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;III)V

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/x;->c:Lcom/bytedance/sdk/a/b/y;

    invoke-interface {v12, v0}, Lcom/bytedance/sdk/a/b/t$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    return-object v0
.end method
