.class final Lcom/anythink/china/a/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/a/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/a/b$1;


# direct methods
.method constructor <init>(Lcom/anythink/china/a/b$1;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/anythink/china/a/b$1$1;->a:Lcom/anythink/china/a/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/anythink/china/a/b$1$1;->a:Lcom/anythink/china/a/b$1;

    iget-object v0, v0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/a/b$1$1;->a:Lcom/anythink/china/a/b$1;

    iget-object v1, v1, Lcom/anythink/china/a/b$1;->a:Lcom/anythink/china/a/a;

    invoke-static {v0, v1}, Lcom/anythink/china/a/b;->b(Landroid/content/Context;Lcom/anythink/china/a/a;)V

    .line 121
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/anythink/china/a/b$1$1;->a:Lcom/anythink/china/a/b$1;

    iget-object v0, v0, Lcom/anythink/china/a/b$1;->a:Lcom/anythink/china/a/a;

    if-eqz v0, :cond_d

    .line 114
    iget-object v0, p0, Lcom/anythink/china/a/b$1$1;->a:Lcom/anythink/china/a/b$1;

    iget-object v0, v0, Lcom/anythink/china/a/b$1;->a:Lcom/anythink/china/a/a;

    invoke-interface {v0, p1, p2}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    .line 116
    :cond_d
    return-void
.end method
