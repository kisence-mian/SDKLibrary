.class final Lcom/anythink/core/b/a/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/b/a/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 326
    iput-object p1, p0, Lcom/anythink/core/b/a/e$3;->b:Lcom/anythink/core/b/a/e;

    iput-object p2, p0, Lcom/anythink/core/b/a/e$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/anythink/core/b/a/e$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->m(Landroid/content/Context;)V

    .line 331
    return-void
.end method
