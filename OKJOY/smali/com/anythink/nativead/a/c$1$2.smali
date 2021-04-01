.class final Lcom/anythink/nativead/a/c$1$2;
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
.field final synthetic a:Lcom/anythink/nativead/a/c$1;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/a/c$1;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/anythink/nativead/a/c$1$2;->a:Lcom/anythink/nativead/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/anythink/nativead/a/c$1$2;->a:Lcom/anythink/nativead/a/c$1;

    iget-object v0, v0, Lcom/anythink/nativead/a/c$1;->c:Lcom/anythink/nativead/a/c$a;

    if-eqz v0, :cond_d

    .line 118
    iget-object v0, p0, Lcom/anythink/nativead/a/c$1$2;->a:Lcom/anythink/nativead/a/c$1;

    iget-object v0, v0, Lcom/anythink/nativead/a/c$1;->c:Lcom/anythink/nativead/a/c$a;

    invoke-interface {v0}, Lcom/anythink/nativead/a/c$a;->a()V

    .line 120
    :cond_d
    return-void
.end method
