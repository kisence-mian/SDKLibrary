.class public Lcom/kwai/filedownloader/message/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/message/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/message/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/kwai/filedownloader/message/e$b;


# direct methods
.method constructor <init>(ILcom/kwai/filedownloader/message/e$b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwai/filedownloader/message/g;->b:Lcom/kwai/filedownloader/message/e$b;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    const/4 p2, 0x0

    :goto_d
    if-ge p2, p1, :cond_1c

    iget-object v0, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    new-instance v1, Lcom/kwai/filedownloader/message/g$a;

    invoke-direct {v1, p0, p2}, Lcom/kwai/filedownloader/message/g$a;-><init>(Lcom/kwai/filedownloader/message/g;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/kwai/filedownloader/message/g;)Lcom/kwai/filedownloader/message/e$b;
    .registers 1

    iget-object p0, p0, Lcom/kwai/filedownloader/message/g;->b:Lcom/kwai/filedownloader/message/e$b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6c

    :try_start_4
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v2

    iget-object v3, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwai/filedownloader/message/g$a;

    invoke-static {v4}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object v0, v4

    :cond_29
    if-nez v0, :cond_61

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_32
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kwai/filedownloader/message/g$a;

    invoke-static {v5}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4a

    move-object v0, v5

    goto :goto_61

    :cond_4a
    if-eqz v3, :cond_56

    invoke-static {v5}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v3, :cond_32

    :cond_56
    invoke-static {v5}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    move-object v0, v5

    goto :goto_32

    :cond_61
    :goto_61
    invoke-virtual {v0, v2}, Lcom/kwai/filedownloader/message/g$a;->a(I)V

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_4 .. :try_end_65} :catchall_69

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v1

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v1
.end method
