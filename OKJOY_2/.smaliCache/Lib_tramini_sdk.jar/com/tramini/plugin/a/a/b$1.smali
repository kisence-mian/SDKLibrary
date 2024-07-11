.class final Lcom/tramini/plugin/a/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tramini/plugin/a/a/b;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b$1;->b:Lcom/tramini/plugin/a/a/b;

    iput-object p2, p0, Lcom/tramini/plugin/a/a/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$1;->b:Lcom/tramini/plugin/a/a/b;

    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V

    .line 120
    return-void
.end method
