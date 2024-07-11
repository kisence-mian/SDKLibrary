.class public Lokjoy/o/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/u/a;

.field public final synthetic b:Lokjoy/o/f;


# direct methods
.method public constructor <init>(Lokjoy/o/f;Lokjoy/u/a;)V
    .registers 3

    iput-object p1, p0, Lokjoy/o/d;->b:Lokjoy/o/f;

    iput-object p2, p0, Lokjoy/o/d;->a:Lokjoy/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lokjoy/o/d;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lokjoy/o/d;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    iget-object p1, p0, Lokjoy/o/d;->b:Lokjoy/o/f;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v0, p0, Lokjoy/o/d;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lokjoy/o/d;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_f
    iget-object v0, p0, Lokjoy/o/d;->b:Lokjoy/o/f;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v1, Lokjoy/o/c;

    invoke-direct {v1, p0}, Lokjoy/o/c;-><init>(Lokjoy/o/d;)V

    invoke-static {v0, p1, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lokjoy/l/c;)V

    return-void
.end method
