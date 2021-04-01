.class Lcom/kwai/filedownloader/download/ConnectTask$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/download/ConnectTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/kwai/filedownloader/f0/b;

.field private e:Lcom/kwai/filedownloader/download/a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/kwai/filedownloader/download/ConnectTask$b;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/ConnectTask$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->e:Lcom/kwai/filedownloader/download/a;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/f0/b;)Lcom/kwai/filedownloader/download/ConnectTask$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->d:Lcom/kwai/filedownloader/f0/b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method a()Lcom/kwai/filedownloader/download/ConnectTask;
    .registers 8

    iget-object v2, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    iget-object v1, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->e:Lcom/kwai/filedownloader/download/a;

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->d:Lcom/kwai/filedownloader/f0/b;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/kwai/filedownloader/download/ConnectTask;-><init>(Lcom/kwai/filedownloader/download/a;ILjava/lang/String;Ljava/lang/String;Lcom/kwai/filedownloader/f0/b;Lcom/kwai/filedownloader/download/ConnectTask$a;)V

    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/ConnectTask$b;->b:Ljava/lang/String;

    return-object p0
.end method
