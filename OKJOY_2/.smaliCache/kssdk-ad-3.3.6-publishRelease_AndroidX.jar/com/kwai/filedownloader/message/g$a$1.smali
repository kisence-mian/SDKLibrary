.class Lcom/kwai/filedownloader/message/g$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/message/MessageSnapshot;

.field final synthetic b:Lcom/kwai/filedownloader/message/g$a;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/message/g$a;Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 3

    iput-object p1, p0, Lcom/kwai/filedownloader/message/g$a$1;->b:Lcom/kwai/filedownloader/message/g$a;

    iput-object p2, p0, Lcom/kwai/filedownloader/message/g$a$1;->a:Lcom/kwai/filedownloader/message/MessageSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/message/g$a$1;->b:Lcom/kwai/filedownloader/message/g$a;

    iget-object v0, v0, Lcom/kwai/filedownloader/message/g$a;->a:Lcom/kwai/filedownloader/message/g;

    invoke-static {v0}, Lcom/kwai/filedownloader/message/g;->a(Lcom/kwai/filedownloader/message/g;)Lcom/kwai/filedownloader/message/e$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/message/g$a$1;->a:Lcom/kwai/filedownloader/message/MessageSnapshot;

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/message/e$b;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    :try_start_d
    iget-object v0, p0, Lcom/kwai/filedownloader/message/g$a$1;->b:Lcom/kwai/filedownloader/message/g$a;

    invoke-static {v0}, Lcom/kwai/filedownloader/message/g$a;->a(Lcom/kwai/filedownloader/message/g$a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/message/g$a$1;->a:Lcom/kwai/filedownloader/message/MessageSnapshot;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v0

    :goto_22
    return-void
.end method
