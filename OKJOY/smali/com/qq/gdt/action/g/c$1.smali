.class final Lcom/qq/gdt/action/g/c$1;
.super Lcom/qq/gdt/action/d/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/g/c;->a(Ljava/util/List;Lcom/qq/gdt/action/g/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/qq/gdt/action/g/c$a;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;JLjava/lang/String;Lcom/qq/gdt/action/g/c$a;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/qq/gdt/action/g/c$1;->a:Ljava/util/List;

    iput-wide p2, p0, Lcom/qq/gdt/action/g/c$1;->b:J

    iput-object p4, p0, Lcom/qq/gdt/action/g/c$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/qq/gdt/action/g/c$1;->d:Lcom/qq/gdt/action/g/c$a;

    iput-object p6, p0, Lcom/qq/gdt/action/g/c$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qq/gdt/action/d/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/gdt/action/d/f;)V
    .registers 11

    iget-object v1, p0, Lcom/qq/gdt/action/g/c$1;->a:Ljava/util/List;

    iget-wide v2, p0, Lcom/qq/gdt/action/g/c$1;->b:J

    iget-object v4, p0, Lcom/qq/gdt/action/g/c$1;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/qq/gdt/action/d/f;->a()I

    move-result v5

    invoke-virtual {p2}, Lcom/qq/gdt/action/d/f;->b()Ljava/lang/String;

    move-result-object v6

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/qq/gdt/action/g/c;->a(Ljava/util/List;JLjava/lang/String;ILjava/lang/String;I)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_33

    invoke-virtual {p2}, Lcom/qq/gdt/action/d/f;->a()I

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/qq/gdt/action/g/c$1;->d:Lcom/qq/gdt/action/g/c$a;

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/qq/gdt/action/g/c$1;->d:Lcom/qq/gdt/action/g/c$a;

    iget-object v2, p0, Lcom/qq/gdt/action/g/c$1;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/qq/gdt/action/g/c$1;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_2d
    invoke-interface {v1, v2, v0}, Lcom/qq/gdt/action/g/c$a;->a(Ljava/util/List;Z)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_2d

    :cond_33
    iget-object v0, p0, Lcom/qq/gdt/action/g/c$1;->d:Lcom/qq/gdt/action/g/c$a;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/qq/gdt/action/g/c$1;->d:Lcom/qq/gdt/action/g/c$a;

    iget-object v1, p0, Lcom/qq/gdt/action/g/c$1;->a:Ljava/util/List;

    invoke-virtual {p2}, Lcom/qq/gdt/action/d/f;->a()I

    move-result v2

    invoke-virtual {p2}, Lcom/qq/gdt/action/d/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/qq/gdt/action/g/c$a;->a(Ljava/util/List;ILjava/lang/String;I)V

    goto :goto_30
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/qq/gdt/action/d/f;

    invoke-virtual {p0, p1, p2}, Lcom/qq/gdt/action/g/c$1;->a(ILcom/qq/gdt/action/d/f;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .registers 10

    const/4 v7, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.net.SocketTimeoutException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const/4 v0, -0x2

    :goto_31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.net.UnknownHostException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/16 v0, -0x9

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.net.ConnectException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v0, -0x4

    :cond_4c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.net.ProtocolException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    const/4 v0, -0x5

    :cond_59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.net.UnknownServiceException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v0, -0x6

    :cond_66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "body null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const/4 v0, -0x7

    :cond_73
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unexpected end of stream on com.android.okhttp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const/4 v5, -0x8

    :goto_80
    iget-object v1, p0, Lcom/qq/gdt/action/g/c$1;->a:Ljava/util/List;

    iget-wide v2, p0, Lcom/qq/gdt/action/g/c$1;->b:J

    iget-object v4, p0, Lcom/qq/gdt/action/g/c$1;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/qq/gdt/action/g/c;->a(Ljava/util/List;JLjava/lang/String;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/qq/gdt/action/g/c$1;->d:Lcom/qq/gdt/action/g/c$a;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/qq/gdt/action/g/c$1;->d:Lcom/qq/gdt/action/g/c$a;

    iget-object v1, p0, Lcom/qq/gdt/action/g/c$1;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v5, v2, v7}, Lcom/qq/gdt/action/g/c$a;->a(Ljava/util/List;ILjava/lang/String;I)V

    :cond_9c
    return-void

    :cond_9d
    move v5, v0

    goto :goto_80

    :cond_9f
    move v0, v7

    goto :goto_31

    :cond_a1
    move v5, v7

    goto :goto_80
.end method
