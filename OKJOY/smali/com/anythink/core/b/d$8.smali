.class final Lcom/anythink/core/b/d$8;
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

.field final synthetic d:Lcom/anythink/core/api/AdError;

.field final synthetic e:Lcom/anythink/core/b/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/d$a;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 6

    .prologue
    .line 448
    iput-object p1, p0, Lcom/anythink/core/b/d$8;->e:Lcom/anythink/core/b/d;

    iput-object p2, p0, Lcom/anythink/core/b/d$8;->a:Lcom/anythink/core/b/d$a;

    iput-object p3, p0, Lcom/anythink/core/b/d$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/b/d$8;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/b/d$8;->d:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/anythink/core/b/d$8;->a:Lcom/anythink/core/b/d$a;

    if-eqz v0, :cond_b

    .line 452
    iget-object v0, p0, Lcom/anythink/core/b/d$8;->a:Lcom/anythink/core/b/d$a;

    iget-object v1, p0, Lcom/anythink/core/b/d$8;->d:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/core/b/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 454
    :cond_b
    return-void
.end method
