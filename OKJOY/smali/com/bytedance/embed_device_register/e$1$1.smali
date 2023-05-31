.class Lcom/bytedance/embed_device_register/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embed_device_register/e$1;->a(Lcom/bytedance/embed_device_register/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/embed_device_register/h;

.field final synthetic b:Lcom/bytedance/embed_device_register/e$1;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/e$1;Lcom/bytedance/embed_device_register/h;)V
    .registers 3

    .prologue
    .line 103
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$1$1;->b:Lcom/bytedance/embed_device_register/e$1;

    iput-object p2, p0, Lcom/bytedance/embed_device_register/e$1$1;->a:Lcom/bytedance/embed_device_register/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1$1;->b:Lcom/bytedance/embed_device_register/e$1;

    iget-object v1, v0, Lcom/bytedance/embed_device_register/e$1;->e:Lcom/bytedance/embed_device_register/e;

    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1$1;->a:Lcom/bytedance/embed_device_register/h;

    iget-object v0, v0, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/embed_device_register/e$a$a;

    invoke-virtual {v0}, Lcom/bytedance/embed_device_register/e$a$a;->a()Lcom/bytedance/embed_device_register/e$a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/e;Lcom/bytedance/embed_device_register/e$a;)Lcom/bytedance/embed_device_register/e$a;

    .line 106
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$1$1;->b:Lcom/bytedance/embed_device_register/e$1;

    iget-object v2, v2, Lcom/bytedance/embed_device_register/e$1;->e:Lcom/bytedance/embed_device_register/e;

    invoke-static {v2}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/e$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/e$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1$1;->b:Lcom/bytedance/embed_device_register/e$1;

    iget-object v0, v0, Lcom/bytedance/embed_device_register/e$1;->e:Lcom/bytedance/embed_device_register/e;

    invoke-static {v0}, Lcom/bytedance/embed_device_register/e;->b(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/g$b;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 108
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$1$1;->b:Lcom/bytedance/embed_device_register/e$1;

    iget-object v0, v0, Lcom/bytedance/embed_device_register/e$1;->e:Lcom/bytedance/embed_device_register/e;

    invoke-static {v0}, Lcom/bytedance/embed_device_register/e;->b(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$1$1;->b:Lcom/bytedance/embed_device_register/e$1;

    iget-object v1, v1, Lcom/bytedance/embed_device_register/e$1;->e:Lcom/bytedance/embed_device_register/e;

    invoke-static {v1}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/e$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/embed_device_register/g$b;->a(Ljava/lang/Object;)V

    .line 110
    :cond_5a
    return-void
.end method
