.class final Lcom/anythink/myoffer/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/a/b;->a(Lcom/anythink/myoffer/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/c/b;

.field final synthetic b:Lcom/anythink/myoffer/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/a/b;Lcom/anythink/myoffer/c/b;)V
    .registers 3

    .prologue
    .line 58
    iput-object p1, p0, Lcom/anythink/myoffer/a/b$1;->b:Lcom/anythink/myoffer/a/b;

    iput-object p2, p0, Lcom/anythink/myoffer/a/b$1;->a:Lcom/anythink/myoffer/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/anythink/myoffer/a/b$1;->b:Lcom/anythink/myoffer/a/b;

    invoke-static {v0}, Lcom/anythink/myoffer/a/b;->a(Lcom/anythink/myoffer/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/myoffer/b/c;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/a/b$1;->a:Lcom/anythink/myoffer/c/b;

    iget-object v1, v1, Lcom/anythink/myoffer/c/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/b/c;->c(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/anythink/myoffer/a/b$1;->b:Lcom/anythink/myoffer/a/b;

    invoke-static {v0}, Lcom/anythink/myoffer/a/b;->a(Lcom/anythink/myoffer/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/myoffer/b/c;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/a/b$1;->a:Lcom/anythink/myoffer/c/b;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/b/c;->a(Lcom/anythink/myoffer/c/b;)J

    .line 66
    return-void
.end method
