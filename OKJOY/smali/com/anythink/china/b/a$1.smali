.class final Lcom/anythink/china/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/b/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/anythink/china/b/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 34
    invoke-static {p1}, Lcom/anythink/china/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    :goto_6
    return-void

    .line 37
    :cond_7
    invoke-static {p1}, Lcom/anythink/china/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/anythink/china/b/a$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "oaid"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method
