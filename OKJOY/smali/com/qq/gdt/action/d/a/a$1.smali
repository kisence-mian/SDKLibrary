.class Lcom/qq/gdt/action/d/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/d/a/a;->b(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/qq/gdt/action/d/a/a;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/d/a/a;ILjava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/qq/gdt/action/d/a/a$1;->c:Lcom/qq/gdt/action/d/a/a;

    iput p2, p0, Lcom/qq/gdt/action/d/a/a$1;->a:I

    iput-object p3, p0, Lcom/qq/gdt/action/d/a/a$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/qq/gdt/action/d/a/a$1;->c:Lcom/qq/gdt/action/d/a/a;

    iget v1, p0, Lcom/qq/gdt/action/d/a/a$1;->a:I

    iget-object v2, p0, Lcom/qq/gdt/action/d/a/a$1;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/qq/gdt/action/d/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method
