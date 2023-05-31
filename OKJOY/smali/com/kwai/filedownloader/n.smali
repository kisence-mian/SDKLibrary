.class Lcom/kwai/filedownloader/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/u;
.implements Lcom/kwai/filedownloader/services/e$a;


# static fields
.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/kwai/filedownloader/services/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kwai/filedownloader/services/FileDownloadService$SharedMainProcessService;

    sput-object v0, Lcom/kwai/filedownloader/n;->c:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/n;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kwai/filedownloader/n;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 5

    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/kwai/filedownloader/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/kwai/filedownloader/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/kwai/filedownloader/n;->c:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/services/e;)V
    .registers 6

    iput-object p1, p0, Lcom/kwai/filedownloader/n;->b:Lcom/kwai/filedownloader/services/e;

    iget-object v0, p0, Lcom/kwai/filedownloader/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/kwai/filedownloader/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    :cond_23
    invoke-static {}, Lcom/kwai/filedownloader/f;->a()Lcom/kwai/filedownloader/f;

    move-result-object v0

    new-instance v1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;

    sget-object v2, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->connected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v3, Lcom/kwai/filedownloader/n;->c:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/event/a;->a(Lcom/kwai/filedownloader/event/b;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/n;->b:Lcom/kwai/filedownloader/services/e;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/n;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/kwai/filedownloader/h0/a;->a(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/kwai/filedownloader/n;->b:Lcom/kwai/filedownloader/services/e;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/e;->a(I)Z

    move-result v0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)Z
    .registers 20

    invoke-virtual {p0}, Lcom/kwai/filedownloader/n;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1, p2, p3}, Lcom/kwai/filedownloader/h0/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/kwai/filedownloader/n;->b:Lcom/kwai/filedownloader/services/e;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/kwai/filedownloader/services/e;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)V

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public b(I)B
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/n;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/kwai/filedownloader/h0/a;->b(I)B

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/kwai/filedownloader/n;->b:Lcom/kwai/filedownloader/services/e;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/e;->b(I)B

    move-result v0

    goto :goto_a
.end method

.method public b()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/n;->b:Lcom/kwai/filedownloader/services/e;

    invoke-static {}, Lcom/kwai/filedownloader/f;->a()Lcom/kwai/filedownloader/f;

    move-result-object v0

    new-instance v1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;

    sget-object v2, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->disconnected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v3, Lcom/kwai/filedownloader/n;->c:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/event/a;->a(Lcom/kwai/filedownloader/event/b;)V

    return-void
.end method

.method public c(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/n;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/kwai/filedownloader/h0/a;->c(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/kwai/filedownloader/n;->b:Lcom/kwai/filedownloader/services/e;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/e;->c(I)Z

    move-result v0

    goto :goto_a
.end method
