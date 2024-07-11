.class public Lokjoy/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/a/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lokjoy/a/g$a;


# direct methods
.method public constructor <init>(Lokjoy/a/g$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lokjoy/a/f;->c:Lokjoy/a/g$a;

    iput-object p2, p0, Lokjoy/a/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lokjoy/a/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lokjoy/a/f;->c:Lokjoy/a/g$a;

    iget-object v0, v0, Lokjoy/a/g$a;->a:Landroid/app/Activity;

    .line 1
    sget-object v0, Lokjoy/a/g;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    .line 2
    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokjoy/a/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lokjoy/a/f;->b:Ljava/lang/String;

    new-instance v3, Lokjoy/a/f$a;

    invoke-direct {v3, p0}, Lokjoy/a/f$a;-><init>(Lokjoy/a/f;)V

    .line 3
    new-instance v4, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;

    invoke-direct {v4}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;-><init>()V

    const-string v5, "rid"

    invoke-virtual {v4, v5, v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "real"

    invoke-virtual {v4, v0, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "adult"

    invoke-virtual {v4, v0, v2}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "verify"

    invoke-virtual {v4, v0, p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lokjoy/a/g;->a(Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/c1;

    invoke-direct {v0, v3}, Lokjoy/h/c1;-><init>(Lokjoy/h/c;)V

    const-string v1, "http://real.ok-joy.com/index.php"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method
