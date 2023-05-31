.class final Lcom/anythink/core/b/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/d$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/core/b/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/d$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 325
    iput-object p1, p0, Lcom/anythink/core/b/d$4;->d:Lcom/anythink/core/b/d;

    iput-object p2, p0, Lcom/anythink/core/b/d$4;->a:Lcom/anythink/core/b/d$a;

    iput-object p3, p0, Lcom/anythink/core/b/d$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/b/d$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/anythink/core/b/d$4;->a:Lcom/anythink/core/b/d$a;

    if-eqz v0, :cond_13

    .line 329
    const-string v0, "4003"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/anythink/core/b/d$4;->a:Lcom/anythink/core/b/d$a;

    invoke-interface {v1, v0}, Lcom/anythink/core/b/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 332
    :cond_13
    return-void
.end method
