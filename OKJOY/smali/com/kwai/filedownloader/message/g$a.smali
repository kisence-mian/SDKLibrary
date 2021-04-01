.class public Lcom/kwai/filedownloader/message/g$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lcom/kwai/filedownloader/message/g;


# direct methods
.method public constructor <init>(Lcom/kwai/filedownloader/message/g;I)V
    .registers 5

    iput-object p1, p0, Lcom/kwai/filedownloader/message/g$a;->c:Lcom/kwai/filedownloader/message/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/message/g$a;->a:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/message/g$a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/message/g$a;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/message/g$a;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/message/g$a;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/kwai/filedownloader/message/g$a$a;

    invoke-direct {v1, p0, p1}, Lcom/kwai/filedownloader/message/g$a$a;-><init>(Lcom/kwai/filedownloader/message/g$a;Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
