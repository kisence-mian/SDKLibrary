.class final Lcom/anythink/nativead/a/c$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/a/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/SoftReference;

.field final synthetic b:Lcom/anythink/nativead/a/c$1;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/a/c$1;Ljava/lang/ref/SoftReference;)V
    .registers 3

    .prologue
    .line 85
    iput-object p1, p0, Lcom/anythink/nativead/a/c$1$1;->b:Lcom/anythink/nativead/a/c$1;

    iput-object p2, p0, Lcom/anythink/nativead/a/c$1$1;->a:Ljava/lang/ref/SoftReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/anythink/nativead/a/c$1$1;->b:Lcom/anythink/nativead/a/c$1;

    iget-object v0, v0, Lcom/anythink/nativead/a/c$1;->c:Lcom/anythink/nativead/a/c$a;

    if-eqz v0, :cond_15

    .line 89
    iget-object v0, p0, Lcom/anythink/nativead/a/c$1$1;->b:Lcom/anythink/nativead/a/c$1;

    iget-object v1, v0, Lcom/anythink/nativead/a/c$1;->c:Lcom/anythink/nativead/a/c$a;

    iget-object v0, p0, Lcom/anythink/nativead/a/c$1$1;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/anythink/nativead/a/c$a;->a(Landroid/graphics/Bitmap;)V

    .line 91
    :cond_15
    return-void
.end method
