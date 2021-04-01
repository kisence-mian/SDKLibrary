.class Lcom/qq/gdt/action/d/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/d/a/a;->c(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/qq/gdt/action/d/a/a;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/d/a/a;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/gdt/action/d/a/a$2;->b:Lcom/qq/gdt/action/d/a/a;

    iput-object p2, p0, Lcom/qq/gdt/action/d/a/a$2;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/d/a/a$2;->b:Lcom/qq/gdt/action/d/a/a;

    iget-object v1, p0, Lcom/qq/gdt/action/d/a/a$2;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/a/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method
