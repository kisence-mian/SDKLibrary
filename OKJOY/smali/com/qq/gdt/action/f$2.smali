.class Lcom/qq/gdt/action/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/f;->a(Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/qq/gdt/action/GDTAction$a;

.field final synthetic c:Lcom/qq/gdt/action/f;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V
    .registers 4

    iput-object p1, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    iput-object p2, p0, Lcom/qq/gdt/action/f$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/qq/gdt/action/f$2;->b:Lcom/qq/gdt/action/GDTAction$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    iget-object v1, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    invoke-static {v1}, Lcom/qq/gdt/action/f;->c(Lcom/qq/gdt/action/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/f;Landroid/content/Context;)V

    invoke-static {}, Lcom/qq/gdt/action/h/e;->a()V

    iget-object v0, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    invoke-static {v0}, Lcom/qq/gdt/action/f;->d(Lcom/qq/gdt/action/f;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    invoke-static {v0}, Lcom/qq/gdt/action/f;->e(Lcom/qq/gdt/action/f;)V

    :try_start_18
    iget-object v0, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    iget-object v1, p0, Lcom/qq/gdt/action/f$2;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/qq/gdt/action/h/a;->a(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/f;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aesKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    invoke-static {v1}, Lcom/qq/gdt/action/f;->f(Lcom/qq/gdt/action/f;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/r;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4a} :catch_60

    iget-object v0, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    invoke-static {v0}, Lcom/qq/gdt/action/f;->c(Lcom/qq/gdt/action/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    iget-object v0, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    iget-object v1, p0, Lcom/qq/gdt/action/f$2;->b:Lcom/qq/gdt/action/GDTAction$a;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/f;Lcom/qq/gdt/action/GDTAction$a;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    invoke-static {v0}, Lcom/qq/gdt/action/f;->g(Lcom/qq/gdt/action/f;)V

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cErrorCode:01\uff0c\u8bf7\u8054\u7cfb\u5e7f\u70b9\u901a\u8fd0\u8425"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/f$2;->c:Lcom/qq/gdt/action/f;

    iget-object v2, p0, Lcom/qq/gdt/action/f$2;->b:Lcom/qq/gdt/action/GDTAction$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cErrorCode:01\uff0c\u8bf7\u8054\u7cfb\u5e7f\u70b9\u901a\u8fd0\u8425"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/f;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    goto :goto_5f
.end method
