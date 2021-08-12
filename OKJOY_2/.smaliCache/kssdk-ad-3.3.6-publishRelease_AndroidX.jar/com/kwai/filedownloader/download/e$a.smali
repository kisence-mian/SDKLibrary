.class public Lcom/kwai/filedownloader/download/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/download/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/kwai/filedownloader/download/c;

.field b:Lcom/kwai/filedownloader/a/b;

.field c:Lcom/kwai/filedownloader/download/a;

.field d:Lcom/kwai/filedownloader/download/f;

.field e:Ljava/lang/String;

.field f:Ljava/lang/Boolean;

.field g:Ljava/lang/Integer;

.field h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/kwai/filedownloader/download/e$a;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e$a;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/a/b;)Lcom/kwai/filedownloader/download/e$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e$a;->b:Lcom/kwai/filedownloader/a/b;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/e$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e$a;->c:Lcom/kwai/filedownloader/download/a;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/download/c;)Lcom/kwai/filedownloader/download/e$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e$a;->a:Lcom/kwai/filedownloader/download/c;

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/download/f;)Lcom/kwai/filedownloader/download/e$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e$a;->d:Lcom/kwai/filedownloader/download/f;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/e$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/kwai/filedownloader/download/e$a;
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e$a;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a()Lcom/kwai/filedownloader/download/e;
    .registers 12

    iget-object v0, p0, Lcom/kwai/filedownloader/download/e$a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/kwai/filedownloader/download/e$a;->b:Lcom/kwai/filedownloader/a/b;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/kwai/filedownloader/download/e$a;->c:Lcom/kwai/filedownloader/download/a;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/kwai/filedownloader/download/e$a;->d:Lcom/kwai/filedownloader/download/f;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/kwai/filedownloader/download/e$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/kwai/filedownloader/download/e$a;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/kwai/filedownloader/download/e$a;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_40

    new-instance v0, Lcom/kwai/filedownloader/download/e;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/e$a;->b:Lcom/kwai/filedownloader/a/b;

    iget-object v3, p0, Lcom/kwai/filedownloader/download/e$a;->c:Lcom/kwai/filedownloader/download/a;

    iget-object v4, p0, Lcom/kwai/filedownloader/download/e$a;->a:Lcom/kwai/filedownloader/download/c;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/e$a;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/kwai/filedownloader/download/e$a;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lcom/kwai/filedownloader/download/e$a;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lcom/kwai/filedownloader/download/e$a;->d:Lcom/kwai/filedownloader/download/f;

    iget-object v9, p0, Lcom/kwai/filedownloader/download/e$a;->e:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/kwai/filedownloader/download/e;-><init>(Lcom/kwai/filedownloader/a/b;Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/download/c;IIZLcom/kwai/filedownloader/download/f;Ljava/lang/String;Lcom/kwai/filedownloader/download/e$1;)V

    return-object v0

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b(I)Lcom/kwai/filedownloader/download/e$a;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e$a;->h:Ljava/lang/Integer;

    return-object p0
.end method
