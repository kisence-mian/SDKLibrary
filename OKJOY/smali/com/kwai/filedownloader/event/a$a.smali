.class Lcom/kwai/filedownloader/event/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwai/filedownloader/event/a;->a(Lcom/kwai/filedownloader/event/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/event/b;

.field final synthetic b:Lcom/kwai/filedownloader/event/a;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/event/a;Lcom/kwai/filedownloader/event/b;)V
    .registers 3

    iput-object p1, p0, Lcom/kwai/filedownloader/event/a$a;->b:Lcom/kwai/filedownloader/event/a;

    iput-object p2, p0, Lcom/kwai/filedownloader/event/a$a;->a:Lcom/kwai/filedownloader/event/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kwai/filedownloader/event/a$a;->b:Lcom/kwai/filedownloader/event/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/event/a$a;->a:Lcom/kwai/filedownloader/event/b;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/event/a;->b(Lcom/kwai/filedownloader/event/b;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method
