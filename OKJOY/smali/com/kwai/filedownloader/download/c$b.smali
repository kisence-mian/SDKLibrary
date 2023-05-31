.class public Lcom/kwai/filedownloader/download/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/download/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/download/ConnectTask$b;

.field private b:Lcom/kwai/filedownloader/download/f;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwai/filedownloader/download/ConnectTask$b;

    invoke-direct {v0}, Lcom/kwai/filedownloader/download/ConnectTask$b;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->a:Lcom/kwai/filedownloader/download/ConnectTask$b;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/kwai/filedownloader/download/c$b;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->a:Lcom/kwai/filedownloader/download/ConnectTask$b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a(I)Lcom/kwai/filedownloader/download/ConnectTask$b;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/c$b;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->a:Lcom/kwai/filedownloader/download/ConnectTask$b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/ConnectTask$b;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/download/f;)Lcom/kwai/filedownloader/download/c$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/c$b;->b:Lcom/kwai/filedownloader/download/f;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/f0/b;)Lcom/kwai/filedownloader/download/c$b;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->a:Lcom/kwai/filedownloader/download/ConnectTask$b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a(Lcom/kwai/filedownloader/f0/b;)Lcom/kwai/filedownloader/download/ConnectTask$b;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/c$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/c$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$b;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->a:Lcom/kwai/filedownloader/download/ConnectTask$b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$b;

    return-object p0
.end method

.method public a(Z)Lcom/kwai/filedownloader/download/c$b;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a()Lcom/kwai/filedownloader/download/c;
    .registers 9

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->b:Lcom/kwai/filedownloader/download/f;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->a:Lcom/kwai/filedownloader/download/ConnectTask$b;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a()Lcom/kwai/filedownloader/download/ConnectTask;

    move-result-object v3

    new-instance v0, Lcom/kwai/filedownloader/download/c;

    iget v1, v3, Lcom/kwai/filedownloader/download/ConnectTask;->a:I

    iget-object v2, p0, Lcom/kwai/filedownloader/download/c$b;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/kwai/filedownloader/download/c$b;->b:Lcom/kwai/filedownloader/download/f;

    iget-object v5, p0, Lcom/kwai/filedownloader/download/c$b;->d:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/kwai/filedownloader/download/c$b;->c:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kwai/filedownloader/download/c;-><init>(IILcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/download/f;ZLjava/lang/String;Lcom/kwai/filedownloader/download/c$a;)V

    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/c$b;->b:Lcom/kwai/filedownloader/download/f;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/kwai/filedownloader/download/c$b;->c:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/kwai/filedownloader/download/c$b;->d:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s %s %B"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$b;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/c$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$b;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$b;->a:Lcom/kwai/filedownloader/download/ConnectTask$b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$b;->b(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$b;

    return-object p0
.end method
