.class final Lcom/tramini/plugin/a/e/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/e/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/e/a$1;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/e/a$1;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tramini/plugin/a/e/a$1$1;->a:Lcom/tramini/plugin/a/e/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 98
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/a/b;->b(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 103
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/a/b;->b(Landroid/content/Context;)V

    .line 104
    return-void
.end method
