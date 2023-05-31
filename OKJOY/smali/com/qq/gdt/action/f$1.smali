.class Lcom/qq/gdt/action/f$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/f;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/gdt/action/f$1;->a:Lcom/qq/gdt/action/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/qq/gdt/action/f$1;->a:Lcom/qq/gdt/action/f;

    invoke-static {v0}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/f;)V

    const-string v0, "TICKET"

    iget-object v1, p0, Lcom/qq/gdt/action/f$1;->a:Lcom/qq/gdt/action/f;

    invoke-static {v1}, Lcom/qq/gdt/action/f;->b(Lcom/qq/gdt/action/f;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f$1;->a:Lcom/qq/gdt/action/f;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/f;J)J

    :cond_1e
    return-void
.end method
