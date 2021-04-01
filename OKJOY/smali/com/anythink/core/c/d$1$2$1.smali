.class final Lcom/anythink/core/c/d$1$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/d$1$2;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/d$1$2;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/d$1$2;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/anythink/core/c/d$1$2$1;->a:Lcom/anythink/core/c/d$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 183
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    const-string v1, "Update placement strategy success\uff0ccancel timer"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2$1;->a:Lcom/anythink/core/c/d$1$2;

    iget-object v0, v0, Lcom/anythink/core/c/d$1$2;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_14

    .line 185
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2$1;->a:Lcom/anythink/core/c/d$1$2;

    iget-object v0, v0, Lcom/anythink/core/c/d$1$2;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 187
    :cond_14
    return-void
.end method
