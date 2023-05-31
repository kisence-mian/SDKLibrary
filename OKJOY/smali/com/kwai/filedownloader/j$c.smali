.class Lcom/kwai/filedownloader/j$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/j$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/j$c;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kwai/filedownloader/t;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/t;

    invoke-interface {v0}, Lcom/kwai/filedownloader/t;->d()V

    goto :goto_4

    :cond_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kwai/filedownloader/t;

    invoke-interface {v0}, Lcom/kwai/filedownloader/t;->d()V

    :cond_c
    :goto_c
    return v2

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/j$c;->a(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/kwai/filedownloader/j;->a()Lcom/kwai/filedownloader/j;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/j;->a(Lcom/kwai/filedownloader/j;)V

    goto :goto_c
.end method
