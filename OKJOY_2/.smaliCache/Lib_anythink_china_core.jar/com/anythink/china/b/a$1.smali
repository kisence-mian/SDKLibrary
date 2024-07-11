.class final Lcom/anythink/china/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/b/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/anythink/china/b/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 5

    .line 40
    invoke-static {p1}, Lcom/anythink/china/b/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 41
    return-void

    .line 43
    :cond_7
    invoke-static {p1}, Lcom/anythink/china/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    iget-object p2, p0, Lcom/anythink/china/b/a$1;->a:Landroid/content/Context;

    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v1, "oaid"

    invoke-static {p2, v0, v1, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
