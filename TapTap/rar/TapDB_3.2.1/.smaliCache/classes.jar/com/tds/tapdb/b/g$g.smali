.class Lcom/tds/tapdb/b/g$g;
.super Lcom/tds/tapdb/b/g$l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/b/g;->a(Ljava/lang/Appendable;)Lcom/tds/tapdb/b/g;
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
.field final synthetic c:Ljava/io/BufferedReader;

.field final synthetic d:Ljava/lang/Appendable;

.field final synthetic e:Lcom/tds/tapdb/b/g;


# direct methods
.method constructor <init>(Lcom/tds/tapdb/b/g;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V
    .registers 6

    iput-object p1, p0, Lcom/tds/tapdb/b/g$g;->e:Lcom/tds/tapdb/b/g;

    iput-object p4, p0, Lcom/tds/tapdb/b/g$g;->c:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/tds/tapdb/b/g$g;->d:Ljava/lang/Appendable;

    invoke-direct {p0, p2, p3}, Lcom/tds/tapdb/b/g$l;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g$g;->c()Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/tds/tapdb/b/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tds/tapdb/b/g$g;->e:Lcom/tds/tapdb/b/g;

    invoke-static {v0}, Lcom/tds/tapdb/b/g;->a(Lcom/tds/tapdb/b/g;)I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_a
    iget-object v1, p0, Lcom/tds/tapdb/b/g$g;->c:Ljava/io/BufferedReader;

    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/tds/tapdb/b/g$g;->d:Ljava/lang/Appendable;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_a

    :cond_20
    iget-object v0, p0, Lcom/tds/tapdb/b/g$g;->e:Lcom/tds/tapdb/b/g;

    return-object v0
.end method
