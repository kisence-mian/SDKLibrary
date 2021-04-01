.class public Lcom/qq/gdt/action/c/e;
.super Lcom/qq/gdt/action/c/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qq/gdt/action/c/a;",
        ">",
        "Lcom/qq/gdt/action/c/h;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/c/h;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/c/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/qq/gdt/action/c/h;->a(I)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/qq/gdt/action/c/a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/qq/gdt/action/c/h;->a(Lcom/qq/gdt/action/c/a;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/Collection;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/qq/gdt/action/c/h;->a(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
