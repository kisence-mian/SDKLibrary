.class public Lcom/kwai/filedownloader/message/g;
.super Ljava/lang/Object;
.source ""


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
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/message/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/kwai/filedownloader/message/e$b;


# direct methods
.method constructor <init>(ILcom/kwai/filedownloader/message/e$b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwai/filedownloader/message/g;->b:Lcom/kwai/filedownloader/message/e$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_1c

    iget-object v1, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    new-instance v2, Lcom/kwai/filedownloader/message/g$a;

    invoke-direct {v2, p0, v0}, Lcom/kwai/filedownloader/message/g$a;-><init>(Lcom/kwai/filedownloader/message/g;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/kwai/filedownloader/message/g;)Lcom/kwai/filedownloader/message/e$b;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/message/g;->b:Lcom/kwai/filedownloader/message/e$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_73

    :try_start_4
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v4

    iget-object v0, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/message/g$a;

    invoke-static {v0}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_75

    move-result v5

    if-eqz v5, :cond_e

    move-object v1, v0

    :cond_29
    if-nez v1, :cond_49

    const/4 v2, 0x0

    :try_start_2c
    iget-object v0, p0, Lcom/kwai/filedownloader/message/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/message/g$a;

    invoke-static {v0}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_77

    move-result v6

    if-gtz v6, :cond_51

    move-object v1, v0

    :cond_49
    :try_start_49
    invoke-virtual {v1, v4}, Lcom/kwai/filedownloader/message/g$a;->a(I)V

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_6b

    invoke-virtual {v1, p1}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void

    :cond_51
    if-eqz v2, :cond_5d

    :try_start_53
    invoke-static {v0}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v2, :cond_68

    :cond_5d
    invoke-static {v0}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_77

    move-result v1

    :goto_65
    move v2, v1

    move-object v1, v0

    goto :goto_32

    :cond_68
    move-object v0, v1

    move v1, v2

    goto :goto_65

    :catchall_6b
    move-exception v0

    :goto_6c
    :try_start_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    :goto_6f
    invoke-virtual {v1, p1}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    throw v0

    :catchall_73
    move-exception v0

    goto :goto_6f

    :catchall_75
    move-exception v0

    goto :goto_6c

    :catchall_77
    move-exception v0

    goto :goto_6c
.end method
