.class final Lcom/tramini/plugin/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/c;->a(Lcom/tramini/plugin/b/a;Ljava/util/Set;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/tramini/plugin/a/c;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/c;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4

    .line 189
    iput-object p1, p0, Lcom/tramini/plugin/a/c$1;->c:Lcom/tramini/plugin/a/c;

    iput-object p2, p0, Lcom/tramini/plugin/a/c$1;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/tramini/plugin/a/c$1;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/tramini/plugin/a/c$1;->c:Lcom/tramini/plugin/a/c;

    iget-object v1, p0, Lcom/tramini/plugin/a/c$1;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/tramini/plugin/a/c$1;->b:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/tramini/plugin/a/c;->a(Lcom/tramini/plugin/a/c;Ljava/util/Set;Ljava/util/Set;)V

    .line 194
    return-void
.end method
