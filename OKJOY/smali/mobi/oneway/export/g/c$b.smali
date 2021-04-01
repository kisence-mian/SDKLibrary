.class Lmobi/oneway/export/g/c$b;
.super Lmobi/oneway/export/g/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lmobi/oneway/export/g/c;


# direct methods
.method private constructor <init>(Lmobi/oneway/export/g/c;Ljavax/net/ssl/SSLSocket;)V
    .registers 3

    iput-object p1, p0, Lmobi/oneway/export/g/c$b;->c:Lmobi/oneway/export/g/c;

    invoke-direct {p0, p1, p2}, Lmobi/oneway/export/g/c$a;-><init>(Lmobi/oneway/export/g/c;Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/oneway/export/g/c;Ljavax/net/ssl/SSLSocket;Lmobi/oneway/export/g/c$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmobi/oneway/export/g/c$b;-><init>(Lmobi/oneway/export/g/c;Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method


# virtual methods
.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 6
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    if-eqz p1, :cond_3e

    array-length v0, p1

    if-ne v0, v2, :cond_3e

    const-string v0, "SSLv3"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmobi/oneway/export/g/c$b;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_42

    const-string v1, "SSLv3"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Removed SSLv3 from enabled protocols"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "protocols":[Ljava/lang/String;
    check-cast p1, [Ljava/lang/String;

    .restart local p1    # "protocols":[Ljava/lang/String;
    :cond_3e
    invoke-super {p0, p1}, Lmobi/oneway/export/g/c$a;->setEnabledProtocols([Ljava/lang/String;)V

    return-void

    :cond_42
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSL stuck with protocol available for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_32
.end method
