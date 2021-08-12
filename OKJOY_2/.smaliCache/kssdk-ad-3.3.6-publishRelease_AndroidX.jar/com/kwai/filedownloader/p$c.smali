.class Lcom/kwai/filedownloader/p$c;
.super Ljava/lang/Object;

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
.field private final a:Lcom/kwai/filedownloader/w$b;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/w$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/p$c;->a:Lcom/kwai/filedownloader/w$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwai/filedownloader/p$c;->b:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/kwai/filedownloader/p$c;->a:Lcom/kwai/filedownloader/w$b;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method public run()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/p$c;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwai/filedownloader/p$c;->a:Lcom/kwai/filedownloader/w$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w$b;->p()V

    return-void
.end method
