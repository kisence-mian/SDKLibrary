.class Lcom/qq/gdt/action/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/GDTAction$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/qq/gdt/action/f;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/qq/gdt/action/f$4;->c:Lcom/qq/gdt/action/f;

    iput-object p2, p0, Lcom/qq/gdt/action/f$4;->a:Lcom/qq/gdt/action/GDTAction$a;

    iput-object p3, p0, Lcom/qq/gdt/action/f$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/f$4;->a:Lcom/qq/gdt/action/GDTAction$a;

    iget-object v1, p0, Lcom/qq/gdt/action/f$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qq/gdt/action/GDTAction$a;->a(Ljava/lang/String;)V

    return-void
.end method
