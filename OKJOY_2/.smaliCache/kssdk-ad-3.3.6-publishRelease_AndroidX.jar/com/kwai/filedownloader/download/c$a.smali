.class public Lcom/kwai/filedownloader/download/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/download/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/download/ConnectTask$a;

.field private b:Lcom/kwai/filedownloader/download/f;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwai/filedownloader/download/ConnectTask$a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/download/ConnectTask$a;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->a:Lcom/kwai/filedownloader/download/ConnectTask$a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/kwai/filedownloader/download/c$a;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->a:Lcom/kwai/filedownloader/download/ConnectTask$a;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a(I)Lcom/kwai/filedownloader/download/ConnectTask$a;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/d/b;)Lcom/kwai/filedownloader/download/c$a;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->a:Lcom/kwai/filedownloader/download/ConnectTask$a;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a(Lcom/kwai/filedownloader/d/b;)Lcom/kwai/filedownloader/download/ConnectTask$a;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/c$a;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->a:Lcom/kwai/filedownloader/download/ConnectTask$a;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/ConnectTask$a;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/download/f;)Lcom/kwai/filedownloader/download/c$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/c$a;->b:Lcom/kwai/filedownloader/download/f;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/c$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/c$a;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$a;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->a:Lcom/kwai/filedownloader/download/ConnectTask$a;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$a;

    return-object p0
.end method

.method public a(Z)Lcom/kwai/filedownloader/download/c$a;
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/download/c$a;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a()Lcom/kwai/filedownloader/download/c;
    .registers 10

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->b:Lcom/kwai/filedownloader/download/f;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->a:Lcom/kwai/filedownloader/download/ConnectTask$a;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a()Lcom/kwai/filedownloader/download/ConnectTask;

    move-result-object v4

    new-instance v0, Lcom/kwai/filedownloader/download/c;

    iget v2, v4, Lcom/kwai/filedownloader/download/ConnectTask;->a:I

    iget-object v1, p0, Lcom/kwai/filedownloader/download/c$a;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/kwai/filedownloader/download/c$a;->b:Lcom/kwai/filedownloader/download/f;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/c$a;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/kwai/filedownloader/download/c$a;->c:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/kwai/filedownloader/download/c;-><init>(IILcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/download/f;ZLjava/lang/String;Lcom/kwai/filedownloader/download/c$1;)V

    return-object v0

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kwai/filedownloader/download/c$a;->b:Lcom/kwai/filedownloader/download/f;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kwai/filedownloader/download/c$a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/kwai/filedownloader/download/c$a;->d:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const-string v2, "%s %s %B"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$a;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c$a;->a:Lcom/kwai/filedownloader/download/ConnectTask$a;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/ConnectTask$a;->b(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$a;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/c$a;->c:Ljava/lang/String;

    return-object p0
.end method
