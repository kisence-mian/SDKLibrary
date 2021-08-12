.class public Lcom/kwai/filedownloader/message/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/message/e$b;,
        Lcom/kwai/filedownloader/message/e$a;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/kwai/filedownloader/message/g;

.field private volatile b:Lcom/kwai/filedownloader/message/e$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwai/filedownloader/message/e;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/message/e$a;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 3

    instance-of v0, p1, Lcom/kwai/filedownloader/message/b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kwai/filedownloader/message/e;->b:Lcom/kwai/filedownloader/message/e$b;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwai/filedownloader/message/e;->b:Lcom/kwai/filedownloader/message/e$b;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/message/e$b;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_17

    :cond_e
    iget-object v0, p0, Lcom/kwai/filedownloader/message/e;->a:Lcom/kwai/filedownloader/message/g;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwai/filedownloader/message/e;->a:Lcom/kwai/filedownloader/message/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/message/g;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public a(Lcom/kwai/filedownloader/message/e$b;)V
    .registers 4

    iput-object p1, p0, Lcom/kwai/filedownloader/message/e;->b:Lcom/kwai/filedownloader/message/e$b;

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kwai/filedownloader/message/e;->a:Lcom/kwai/filedownloader/message/g;

    goto :goto_10

    :cond_8
    new-instance v0, Lcom/kwai/filedownloader/message/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/kwai/filedownloader/message/g;-><init>(ILcom/kwai/filedownloader/message/e$b;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/message/e;->a:Lcom/kwai/filedownloader/message/g;

    :goto_10
    return-void
.end method
