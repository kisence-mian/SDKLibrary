.class final Lcom/tramini/plugin/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/f/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a;->a(Landroid/content/Intent;Lcom/tramini/plugin/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tramini/plugin/b/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tramini/plugin/a/a;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a;Ljava/lang/String;Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tramini/plugin/a/a$1;->e:Lcom/tramini/plugin/a/a;

    iput-object p2, p0, Lcom/tramini/plugin/a/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tramini/plugin/a/a$1;->b:Lcom/tramini/plugin/b/a;

    iput-object p4, p0, Lcom/tramini/plugin/a/a$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tramini/plugin/a/a$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/a/b/a;)V
    .registers 3

    .prologue
    .line 87
    if-nez p1, :cond_3

    .line 121
    :goto_2
    return-void

    .line 91
    :cond_3
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    new-instance v0, Lcom/tramini/plugin/a/a$1$1;

    invoke-direct {v0, p0, p1}, Lcom/tramini/plugin/a/a$1$1;-><init>(Lcom/tramini/plugin/a/a$1;Lcom/tramini/plugin/a/b/a;)V

    invoke-static {v0}, Lcom/tramini/plugin/a/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
