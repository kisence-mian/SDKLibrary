.class Lcom/bytedance/embed_device_register/i$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embed_device_register/i$1;->a(Lcom/bytedance/embed_device_register/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/embed_device_register/h;

.field final synthetic b:Lcom/bytedance/embed_device_register/i$1;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/i$1;Lcom/bytedance/embed_device_register/h;)V
    .registers 3

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bytedance/embed_device_register/i$1$1;->b:Lcom/bytedance/embed_device_register/i$1;

    iput-object p2, p0, Lcom/bytedance/embed_device_register/i$1$1;->a:Lcom/bytedance/embed_device_register/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$1$1;->b:Lcom/bytedance/embed_device_register/i$1;

    iget-object v1, v0, Lcom/bytedance/embed_device_register/i$1;->d:Lcom/bytedance/embed_device_register/i;

    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$1$1;->a:Lcom/bytedance/embed_device_register/h;

    iget-object v0, v0, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/embed_device_register/i$b;

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/i;->a(Lcom/bytedance/embed_device_register/i;Lcom/bytedance/embed_device_register/i$b;)Lcom/bytedance/embed_device_register/i$b;

    .line 95
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/embed_device_register/i$1$1;->b:Lcom/bytedance/embed_device_register/i$1;

    iget-object v2, v2, Lcom/bytedance/embed_device_register/i$1;->d:Lcom/bytedance/embed_device_register/i;

    invoke-static {v2}, Lcom/bytedance/embed_device_register/i;->a(Lcom/bytedance/embed_device_register/i;)Lcom/bytedance/embed_device_register/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/i$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$1$1;->b:Lcom/bytedance/embed_device_register/i$1;

    iget-object v0, v0, Lcom/bytedance/embed_device_register/i$1;->d:Lcom/bytedance/embed_device_register/i;

    invoke-static {v0}, Lcom/bytedance/embed_device_register/i;->b(Lcom/bytedance/embed_device_register/i;)Lcom/bytedance/embed_device_register/g$b;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 97
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$1$1;->b:Lcom/bytedance/embed_device_register/i$1;

    iget-object v0, v0, Lcom/bytedance/embed_device_register/i$1;->d:Lcom/bytedance/embed_device_register/i;

    invoke-static {v0}, Lcom/bytedance/embed_device_register/i;->b(Lcom/bytedance/embed_device_register/i;)Lcom/bytedance/embed_device_register/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embed_device_register/i$1$1;->b:Lcom/bytedance/embed_device_register/i$1;

    iget-object v1, v1, Lcom/bytedance/embed_device_register/i$1;->d:Lcom/bytedance/embed_device_register/i;

    invoke-static {v1}, Lcom/bytedance/embed_device_register/i;->a(Lcom/bytedance/embed_device_register/i;)Lcom/bytedance/embed_device_register/i$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/embed_device_register/g$b;->a(Ljava/lang/Object;)V

    .line 99
    :cond_56
    return-void
.end method
