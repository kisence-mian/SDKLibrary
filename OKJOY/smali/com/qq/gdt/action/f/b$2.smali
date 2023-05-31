.class Lcom/qq/gdt/action/f/b$2;
.super Lcom/qq/gdt/action/d/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/f/b;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/qq/gdt/action/f/b;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f/b;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/gdt/action/f/b$2;->b:Lcom/qq/gdt/action/f/b;

    iput-object p2, p0, Lcom/qq/gdt/action/f/b$2;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/qq/gdt/action/d/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/gdt/action/d/a;)V
    .registers 5

    iget-object v0, p0, Lcom/qq/gdt/action/f/b$2;->b:Lcom/qq/gdt/action/f/b;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/f/b;->b(Lcom/qq/gdt/action/f/b;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/qq/gdt/action/d/a;->a()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/qq/gdt/action/f/b$2;->b:Lcom/qq/gdt/action/f/b;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/b$2;->a:Ljava/util/List;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b$2;->b:Lcom/qq/gdt/action/f/b;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/f/b;->sendMessage(Landroid/os/Message;)Z

    :cond_1e
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/qq/gdt/action/d/a;

    invoke-virtual {p0, p1, p2}, Lcom/qq/gdt/action/f/b$2;->a(ILcom/qq/gdt/action/d/a;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/qq/gdt/action/f/b$2;->b:Lcom/qq/gdt/action/f/b;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/f/b;->b(Lcom/qq/gdt/action/f/b;Ljava/util/List;)V

    return-void
.end method
