.class Lcom/qq/gdt/action/d/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/d/b/a;->a(Lcom/qq/gdt/action/d/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/d/b/b;

.field final synthetic b:Lcom/qq/gdt/action/d/b/a;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/d/b/a;Lcom/qq/gdt/action/d/b/b;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/a$1;->b:Lcom/qq/gdt/action/d/b/a;

    iput-object p2, p0, Lcom/qq/gdt/action/d/b/a$1;->a:Lcom/qq/gdt/action/d/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/d/b/a$1;->b:Lcom/qq/gdt/action/d/b/a;

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/a;->a()Lcom/qq/gdt/action/d/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/a$1;->a:Lcom/qq/gdt/action/d/b/b;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/a$1;->a:Lcom/qq/gdt/action/d/b/b;

    invoke-interface {v1, v0}, Lcom/qq/gdt/action/d/b/b;->a(Lcom/qq/gdt/action/d/b/i;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/a$1;->a:Lcom/qq/gdt/action/d/b/b;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/a$1;->a:Lcom/qq/gdt/action/d/b/b;

    invoke-interface {v1, v0}, Lcom/qq/gdt/action/d/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_f
.end method
