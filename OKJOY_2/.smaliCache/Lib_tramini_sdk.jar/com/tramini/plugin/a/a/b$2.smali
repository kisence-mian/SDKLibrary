.class final Lcom/tramini/plugin/a/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/b/a;

.field final synthetic b:Lcom/tramini/plugin/a/a/b;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a/b;Lcom/tramini/plugin/b/a;)V
    .registers 3

    .line 200
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b$2;->b:Lcom/tramini/plugin/a/a/b;

    iput-object p2, p0, Lcom/tramini/plugin/a/a/b$2;->a:Lcom/tramini/plugin/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 203
    invoke-static {}, Lcom/tramini/plugin/a/g/b;->a()Lcom/tramini/plugin/a/g/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$2;->a:Lcom/tramini/plugin/b/a;

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/g/b;->a(Lcom/tramini/plugin/b/a;)V

    .line 204
    return-void
.end method
