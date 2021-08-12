.class public final Lokjoy/l/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qiyukf/nimlib/sdk/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qiyukf/nimlib/sdk/RequestCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lokjoy/l/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokjoy/l/c;)V
    .registers 3

    iput-object p1, p0, Lokjoy/l/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lokjoy/l/b;->b:Lokjoy/l/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5ba2\u670d\u8bbe\u7f6e\u4fe1\u606f\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/l/b;->b:Lokjoy/l/c;

    if-eqz v0, :cond_21

    invoke-interface {v0, p1}, Lokjoy/l/c;->a(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public onFailed(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5ba2\u670d\u8bbe\u7f6e\u4fe1\u606f\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/l/b;->b:Lokjoy/l/c;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1}, Lokjoy/l/c;->a(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/lang/Void;

    .line 1
    new-instance p1, Lcom/qiyukf/unicorn/api/ConsultSource;

    const-string v0, ""

    invoke-direct {p1, v0, v0, v0}, Lcom/qiyukf/unicorn/api/ConsultSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/l/b;->a:Landroid/content/Context;

    const-string v1, "\u5ba2\u670d"

    invoke-static {v0, v1, p1}, Lcom/qiyukf/unicorn/api/Unicorn;->openServiceActivity(Landroid/content/Context;Ljava/lang/String;Lcom/qiyukf/unicorn/api/ConsultSource;)V

    iget-object p1, p0, Lokjoy/l/b;->b:Lokjoy/l/c;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lokjoy/l/c;->a()V

    :cond_17
    return-void
.end method
