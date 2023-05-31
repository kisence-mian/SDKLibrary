.class final Lcom/tramini/plugin/a/a/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/a/b$1;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a/b$1;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b$1$1;->a:Lcom/tramini/plugin/a/a/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/b/a;)V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$1$1;->a:Lcom/tramini/plugin/a/a/b$1;

    iget-object v0, v0, Lcom/tramini/plugin/a/a/b$1;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v0, p1}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;Lcom/tramini/plugin/b/a;)V

    .line 114
    return-void
.end method
