.class final Lcom/anythink/core/b/b$4;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/b;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/anythink/core/b/b$4;->a:Lcom/anythink/core/b/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/anythink/core/b/b$4;->a:Lcom/anythink/core/b/b;

    invoke-static {v0}, Lcom/anythink/core/b/b;->e(Lcom/anythink/core/b/b;)Z

    .line 192
    iget-object v0, p0, Lcom/anythink/core/b/b$4;->a:Lcom/anythink/core/b/b;

    invoke-static {v0}, Lcom/anythink/core/b/b;->f(Lcom/anythink/core/b/b;)V

    .line 193
    return-void
.end method
