.class public Lokjoy/a/i;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field public final synthetic a:Lokjoy/a/j$a;


# direct methods
.method public constructor <init>(Lokjoy/a/j;JJLokjoy/a/j$a;)V
    .registers 7

    iput-object p6, p0, Lokjoy/a/i;->a:Lokjoy/a/j$a;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 7

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lokjoy/a/i;->a:Lokjoy/a/j$a;

    if-eqz v0, :cond_37

    check-cast v0, Lokjoy/a/g$a;

    if-eqz v0, :cond_35

    .line 1
    sget-object v1, Lokjoy/a/g;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    .line 2
    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isReal()Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_19

    move-object v1, v2

    goto :goto_1a

    :cond_19
    move-object v1, v3

    .line 3
    :goto_1a
    sget-object v4, Lokjoy/a/g;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    .line 4
    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isAdult()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_24

    :cond_23
    move-object v2, v3

    :goto_24
    iget-object v3, v0, Lokjoy/a/g$a;->a:Landroid/app/Activity;

    .line 5
    sget-object v4, Lokjoy/a/g;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    .line 6
    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lokjoy/a/f;

    invoke-direct {v5, v0, v1, v2}, Lokjoy/a/f;-><init>(Lokjoy/a/g$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lokjoy/a/n;)V

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    .line 7
    throw v0

    :cond_37
    :goto_37
    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
