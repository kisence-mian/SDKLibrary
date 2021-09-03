.class Lcom/tds/tapdb/b/g$f;
.super Lcom/tds/tapdb/b/g$l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/b/g;->a(Ljava/io/File;)Lcom/tds/tapdb/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/tapdb/b/g$l<",
        "Lcom/tds/tapdb/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/io/OutputStream;

.field final synthetic d:Lcom/tds/tapdb/b/g;


# direct methods
.method constructor <init>(Lcom/tds/tapdb/b/g;Ljava/io/Closeable;ZLjava/io/OutputStream;)V
    .registers 5

    iput-object p1, p0, Lcom/tds/tapdb/b/g$f;->d:Lcom/tds/tapdb/b/g;

    iput-object p4, p0, Lcom/tds/tapdb/b/g$f;->c:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/tds/tapdb/b/g$l;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g$f;->c()Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tds/tapdb/b/g$f;->d:Lcom/tds/tapdb/b/g;

    iget-object v1, p0, Lcom/tds/tapdb/b/g$f;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/tds/tapdb/b/g;->a(Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method
