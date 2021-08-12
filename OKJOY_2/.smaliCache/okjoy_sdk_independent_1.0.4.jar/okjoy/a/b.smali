.class public Lokjoy/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/a$c;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lokjoy/a/c;


# direct methods
.method public constructor <init>(Lokjoy/a/c;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lokjoy/a/b;->c:Lokjoy/a/c;

    iput-boolean p2, p0, Lokjoy/a/b;->a:Z

    iput-object p3, p0, Lokjoy/a/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSureButtonClick(Landroid/view/View;)V
    .registers 8

    iget-object p1, p0, Lokjoy/a/b;->c:Lokjoy/a/c;

    iget-object p1, p1, Lokjoy/a/c;->a:Lokjoy/a/d;

    iget-object v0, p1, Lokjoy/a/d;->e:Landroid/app/Activity;

    iget-object v1, p1, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-boolean v2, p1, Lokjoy/a/d;->a:Z

    iget-boolean v3, p0, Lokjoy/a/b;->a:Z

    iget-object v4, p0, Lokjoy/a/b;->b:Ljava/lang/String;

    iget-object v5, p1, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    invoke-static/range {v0 .. v5}, Lokjoy/a/g;->a(Landroid/app/Activity;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;ZZLjava/lang/String;Lokjoy/a/g$b;)V

    return-void
.end method
