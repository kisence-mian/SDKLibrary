.class final Lcom/tramini/plugin/a/a/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tramini/plugin/a/a/b;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a/b;Ljava/lang/String;)V
    .registers 3

    .line 290
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b$5;->b:Lcom/tramini/plugin/a/a/b;

    iput-object p2, p0, Lcom/tramini/plugin/a/a/b$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 293
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$5;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v0}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tramini"

    const-string v2, "P_CE_PE"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tramini/plugin/a/g/c;->c(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$5;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v0}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tramini/plugin/a/a/b;->b(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V

    .line 297
    return-void
.end method
