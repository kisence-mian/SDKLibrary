.class public Lokjoy/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/a$c;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lokjoy/a/f$a;


# direct methods
.method public constructor <init>(Lokjoy/a/f$a;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lokjoy/a/e;->c:Lokjoy/a/f$a;

    iput-boolean p2, p0, Lokjoy/a/e;->a:Z

    iput-object p3, p0, Lokjoy/a/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSureButtonClick(Landroid/view/View;)V
    .registers 3

    iget-boolean p1, p0, Lokjoy/a/e;->a:Z

    if-eqz p1, :cond_19

    .line 1
    sget-object p1, Lokjoy/a/j$b;->a:Lokjoy/a/j;

    .line 2
    invoke-virtual {p1}, Lokjoy/a/j;->a()V

    iget-object p1, p0, Lokjoy/a/e;->c:Lokjoy/a/f$a;

    iget-object p1, p1, Lokjoy/a/f$a;->a:Lokjoy/a/f;

    iget-object p1, p1, Lokjoy/a/f;->c:Lokjoy/a/g$a;

    iget-object p1, p1, Lokjoy/a/g$a;->b:Lokjoy/a/g$b;

    if-eqz p1, :cond_26

    iget-object v0, p0, Lokjoy/a/e;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokjoy/a/g$b;->onLogout(Ljava/lang/String;)V

    goto :goto_26

    :cond_19
    iget-object p1, p0, Lokjoy/a/e;->c:Lokjoy/a/f$a;

    iget-object p1, p1, Lokjoy/a/f$a;->a:Lokjoy/a/f;

    iget-object p1, p1, Lokjoy/a/f;->c:Lokjoy/a/g$a;

    iget-object v0, p1, Lokjoy/a/g$a;->a:Landroid/app/Activity;

    iget-object p1, p1, Lokjoy/a/g$a;->b:Lokjoy/a/g$b;

    .line 3
    invoke-static {v0, p1}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/g$b;)V

    :cond_26
    :goto_26
    return-void
.end method
