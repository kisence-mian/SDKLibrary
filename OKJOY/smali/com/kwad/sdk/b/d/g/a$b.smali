.class Lcom/kwad/sdk/b/d/g/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/d/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/d/g/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/g/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/g/a$b;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$b;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/a;->c(Lcom/kwad/sdk/b/d/g/a;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$b;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/a;->d(Lcom/kwad/sdk/b/d/g/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u4fe1\u53f7\u4e0d\u597d\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    return-void
.end method
