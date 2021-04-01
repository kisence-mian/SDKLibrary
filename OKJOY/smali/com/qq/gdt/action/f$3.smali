.class Lcom/qq/gdt/action/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/GDTAction$a;

.field final synthetic b:Lcom/qq/gdt/action/f;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f;Lcom/qq/gdt/action/GDTAction$a;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/gdt/action/f$3;->b:Lcom/qq/gdt/action/f;

    iput-object p2, p0, Lcom/qq/gdt/action/f$3;->a:Lcom/qq/gdt/action/GDTAction$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f$3;->a:Lcom/qq/gdt/action/GDTAction$a;

    invoke-interface {v0}, Lcom/qq/gdt/action/GDTAction$a;->a()V

    return-void
.end method
