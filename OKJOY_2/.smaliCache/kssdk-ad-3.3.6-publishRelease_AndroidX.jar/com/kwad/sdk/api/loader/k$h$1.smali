.class Lcom/kwad/sdk/api/loader/k$h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/loader/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/k$h;->a(Lcom/kwad/sdk/api/loader/k$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/api/loader/k$c<",
        "Lcom/kwad/sdk/api/loader/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/loader/k$c;

.field final synthetic b:Lcom/kwad/sdk/api/loader/k$h;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/loader/k$h;Lcom/kwad/sdk/api/loader/k$c;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/k$h$1;->b:Lcom/kwad/sdk/api/loader/k$h;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/k$h$1;->a:Lcom/kwad/sdk/api/loader/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/loader/a$a;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$h$1;->b:Lcom/kwad/sdk/api/loader/k$h;

    iget-object v0, v0, Lcom/kwad/sdk/api/loader/k$h;->b:Landroid/content/Context;

    iget-wide v1, p1, Lcom/kwad/sdk/api/loader/a$a;->d:J

    const-string v3, "interval"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/api/loader/q;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$h$1;->b:Lcom/kwad/sdk/api/loader/k$h;

    iget-object v0, v0, Lcom/kwad/sdk/api/loader/k$h;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "lastUpdateTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/api/loader/q;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/kwad/sdk/api/loader/a$a;->b()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$h$1;->b:Lcom/kwad/sdk/api/loader/k$h;

    iget-object v0, v0, Lcom/kwad/sdk/api/loader/k$h;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/api/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$h$1;->b:Lcom/kwad/sdk/api/loader/k$h;

    iget-object v0, v0, Lcom/kwad/sdk/api/loader/k$h;->b:Landroid/content/Context;

    sget-object v1, Lcom/kwad/sdk/api/loader/f;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$h$1;->a:Lcom/kwad/sdk/api/loader/k$c;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DynamicType == -1, curVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_52
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_d0

    :cond_57
    iget-object v0, p1, Lcom/kwad/sdk/api/loader/a$a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/api/loader/k$h$1;->b:Lcom/kwad/sdk/api/loader/k$h;

    iget-object v2, v2, Lcom/kwad/sdk/api/loader/k$h;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/api/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/api/loader/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Lcom/kwad/sdk/api/loader/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$h$1;->a:Lcom/kwad/sdk/api/loader/k$c;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new Verson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/kwad/sdk/api/loader/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "maple"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    :cond_91
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$h$1;->a:Lcom/kwad/sdk/api/loader/k$c;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No new sdkVersion. remote sdkVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kwad/sdk/api/loader/a$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentDynamicVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v3

    iget-object v4, p0, Lcom/kwad/sdk/api/loader/k$h$1;->b:Lcom/kwad/sdk/api/loader/k$h;

    iget-object v4, v4, Lcom/kwad/sdk/api/loader/k$h;->b:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/kwad/sdk/api/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dynamicType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p1, p1, Lcom/kwad/sdk/api/loader/a$a;->a:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_52

    :goto_d0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kwad/sdk/api/loader/a$a;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/loader/k$h$1;->a(Lcom/kwad/sdk/api/loader/a$a;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$h$1;->a:Lcom/kwad/sdk/api/loader/k$c;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
