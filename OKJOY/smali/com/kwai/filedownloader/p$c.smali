.class Lcom/kwai/filedownloader/p$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/x$b;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/x$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/p$c;->a:Lcom/kwai/filedownloader/x$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/p$c;->b:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/kwai/filedownloader/p$c;->a:Lcom/kwai/filedownloader/x$b;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public run()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/p$c;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwai/filedownloader/p$c;->a:Lcom/kwai/filedownloader/x$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x$b;->start()V

    goto :goto_4
.end method
