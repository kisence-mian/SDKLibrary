.class Lcom/ssjj/fnsdk/core/stat/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/stat/k$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/ssjj/fnsdk/core/stat/j;

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->e:Z

    iput p2, p0, Lcom/ssjj/fnsdk/core/stat/k;->d:I

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/k;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/stat/k;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/stat/k;->d:I

    return p0
.end method

.method private a(II)Lcom/ssjj/fnsdk/core/stat/j;
    .registers 9

    move v0, p1

    :goto_1
    add-int/lit8 v1, p1, 0x14

    if-lt v0, v1, :cond_2a

    rem-int/lit8 p1, p1, 0x14

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/stat/j;->a(II)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/ssjj/fnsdk/core/stat/j;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/ssjj/fnsdk/core/stat/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/stat/j;->e()Z

    iput p1, p0, Lcom/ssjj/fnsdk/core/stat/k;->b:I

    return-object v0

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    rem-int/lit8 v1, v0, 0x14

    invoke-static {v1, p2}, Lcom/ssjj/fnsdk/core/stat/j;->a(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/stat/k;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_90

    new-instance v3, Lcom/ssjj/fnsdk/core/stat/j;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/stat/k;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/ssjj/fnsdk/core/stat/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/stat/j;->g()V

    iget-boolean v4, v3, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    if-nez v4, :cond_89

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Get -> "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    iput v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->b:I

    return-object v3

    :cond_89
    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/stat/j;->d()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_90
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Create -> "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    iput v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->b:I

    new-instance p1, Lcom/ssjj/fnsdk/core/stat/j;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/stat/k;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v2}, Lcom/ssjj/fnsdk/core/stat/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/stat/l;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/stat/l;-><init>(Lcom/ssjj/fnsdk/core/stat/k;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    array-length v1, v0

    if-nez v1, :cond_16

    goto :goto_45

    :cond_16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/stat/m;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/stat/m;-><init>(Lcom/ssjj/fnsdk/core/stat/k;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last file name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/stat/j;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v0, 0x0

    :goto_46
    iput v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->b:I

    iget v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->b:I

    iget v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->d:I

    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/stat/k;->a(II)Lcom/ssjj/fnsdk/core/stat/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load pointer --> pointer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/stat/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load pointer --> file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/stat/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/ssjj/fnsdk/core/stat/k$a;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->e:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/k;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->e:Z

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Record --> data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/stat/j;->g()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    iget-boolean v0, v0, Lcom/ssjj/fnsdk/core/stat/j;->g:Z

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogFile \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/stat/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is posting, record to next file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/k;->b()Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/core/stat/k$a;)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_a0

    monitor-exit p0

    return-void

    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/stat/j;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    iget-boolean v0, v0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    if-eqz v0, :cond_69

    const-string v0, "Record log error because file is full"

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/k;->b()Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/core/stat/k$a;)V

    goto :goto_9e

    :cond_69
    const-string p1, "Record log error, write file error"

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    goto :goto_9e

    :cond_6f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Record log to LogFile \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/stat/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' success"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    iget-boolean p1, p1, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    if-eqz p1, :cond_9e

    if-eqz p2, :cond_9b

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-interface {p2, p1}, Lcom/ssjj/fnsdk/core/stat/k$a;->a(Lcom/ssjj/fnsdk/core/stat/j;)V

    goto :goto_9e

    :cond_9b
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/k;->b()Lcom/ssjj/fnsdk/core/stat/j;
    :try_end_9e
    .catchall {:try_start_4e .. :try_end_9e} :catchall_a0

    :cond_9e
    :goto_9e
    monitor-exit p0

    return-void

    :catchall_a0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/ssjj/fnsdk/core/stat/j;
    .registers 3

    iget v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->b:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->b:I

    iget v1, p0, Lcom/ssjj/fnsdk/core/stat/k;->d:I

    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/stat/k;->a(II)Lcom/ssjj/fnsdk/core/stat/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/k;->c:Lcom/ssjj/fnsdk/core/stat/j;

    return-object v0
.end method
