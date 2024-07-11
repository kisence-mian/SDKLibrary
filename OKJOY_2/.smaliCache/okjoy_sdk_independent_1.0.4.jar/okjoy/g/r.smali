.class public Lokjoy/g/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/a$c;


# instance fields
.field public final synthetic a:Lokjoy/g/u;


# direct methods
.method public constructor <init>(Lokjoy/g/u;)V
    .registers 2

    iput-object p1, p0, Lokjoy/g/r;->a:Lokjoy/g/u;

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

    iget-object p1, p0, Lokjoy/g/r;->a:Lokjoy/g/u;

    iget-object p1, p1, Lokjoy/g/u;->d:Lokjoy/g/v;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 1
    sget-object p1, Lokjoy/g/v;->k:Lokjoy/g/v$a;

    if-eqz p1, :cond_14

    .line 2
    iget-object v0, p0, Lokjoy/g/r;->a:Lokjoy/g/u;

    iget-object v0, v0, Lokjoy/g/u;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-interface {p1, v0}, Lokjoy/g/v$a;->a(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    :cond_14
    return-void
.end method
