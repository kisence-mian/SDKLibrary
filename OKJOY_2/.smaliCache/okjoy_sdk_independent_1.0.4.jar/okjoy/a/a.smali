.class public Lokjoy/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/g/v$a;


# instance fields
.field public final synthetic a:Lokjoy/a/d;


# direct methods
.method public constructor <init>(Lokjoy/a/d;)V
    .registers 2

    iput-object p1, p0, Lokjoy/a/a;->a:Lokjoy/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lokjoy/a/a;->a:Lokjoy/a/d;

    iget-object v1, v0, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    if-eqz v1, :cond_b

    iget-object v0, v0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-interface {v1, v0}, Lokjoy/a/g$b;->onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    :cond_b
    return-void
.end method

.method public a(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 3

    iget-object v0, p0, Lokjoy/a/a;->a:Lokjoy/a/d;

    iget-object v0, v0, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lokjoy/a/g$b;->onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    :cond_9
    return-void
.end method
