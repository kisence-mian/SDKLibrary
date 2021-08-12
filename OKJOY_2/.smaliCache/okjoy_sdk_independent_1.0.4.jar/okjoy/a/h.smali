.class public final Lokjoy/a/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/g/v$a;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lokjoy/a/g$b;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lokjoy/a/g$b;ZLjava/lang/String;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 6

    iput-object p1, p0, Lokjoy/a/h;->a:Landroid/app/Activity;

    iput-object p2, p0, Lokjoy/a/h;->b:Lokjoy/a/g$b;

    iput-boolean p3, p0, Lokjoy/a/h;->c:Z

    iput-object p4, p0, Lokjoy/a/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lokjoy/a/h;->e:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, Lokjoy/a/h;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lokjoy/a/h;->b:Lokjoy/a/g$b;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lokjoy/a/h;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lokjoy/a/g$b;->onLogout(Ljava/lang/String;)V

    goto :goto_1e

    :cond_e
    iget-object v0, p0, Lokjoy/a/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lokjoy/a/h;->b:Lokjoy/a/g$b;

    .line 1
    invoke-static {v0, v1}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/g$b;)V

    .line 2
    iget-object v0, p0, Lokjoy/a/h;->b:Lokjoy/a/g$b;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lokjoy/a/h;->e:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-interface {v0, v1}, Lokjoy/a/g$b;->onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public a(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 4

    iget-object v0, p0, Lokjoy/a/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lokjoy/a/h;->b:Lokjoy/a/g$b;

    .line 3
    invoke-static {v0, v1}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/g$b;)V

    .line 4
    iget-object v0, p0, Lokjoy/a/h;->b:Lokjoy/a/g$b;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Lokjoy/a/g$b;->onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    :cond_e
    return-void
.end method
