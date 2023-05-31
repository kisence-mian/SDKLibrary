.class public Lcom/qq/gdt/action/f/a/a;
.super Lcom/qq/gdt/action/c/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/qq/gdt/action/c/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/qq/gdt/action/c/a;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/f/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/gdt/action/f/a/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/qq/gdt/action/f/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/c/c;
    .registers 3

    invoke-virtual {p0}, Lcom/qq/gdt/action/f/a/a;->c()Lcom/qq/gdt/action/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/c/c;->a(Ljava/lang/String;)Lcom/qq/gdt/action/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/c/c;->a(Ljava/lang/String;)Lcom/qq/gdt/action/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/c/c;->a(Ljava/lang/String;)Lcom/qq/gdt/action/c/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/qq/gdt/action/c/c;)V
    .registers 3

    invoke-virtual {p1}, Lcom/qq/gdt/action/c/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/qq/gdt/action/c/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/qq/gdt/action/c/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionRecord{sessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionUniqueId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
