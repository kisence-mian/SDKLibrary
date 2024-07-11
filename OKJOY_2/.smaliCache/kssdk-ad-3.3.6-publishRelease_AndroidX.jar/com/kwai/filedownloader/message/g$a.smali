.class public Lcom/kwai/filedownloader/message/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/message/g;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/kwai/filedownloader/message/g;I)V
    .registers 4

    iput-object p1, p0, Lcom/kwai/filedownloader/message/g$a;->a:Lcom/kwai/filedownloader/message/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/message/g$a;->b:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Flow-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lcom/kwai/filedownloader/f/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/message/g$a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/kwai/filedownloader/message/g$a;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/message/g$a;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/message/g$a;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/kwai/filedownloader/message/g$a$1;

    invoke-direct {v1, p0, p1}, Lcom/kwai/filedownloader/message/g$a$1;-><init>(Lcom/kwai/filedownloader/message/g$a;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
