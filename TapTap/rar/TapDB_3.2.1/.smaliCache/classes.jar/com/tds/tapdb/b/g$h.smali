.class Lcom/tds/tapdb/b/g$h;
.super Lcom/tds/tapdb/b/g$l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/b/g;->a(Ljava/io/Writer;)Lcom/tds/tapdb/b/g;
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

.field final synthetic d:Ljava/io/Writer;

.field final synthetic e:Lcom/tds/tapdb/b/g;


# direct methods
.method constructor <init>(Lcom/tds/tapdb/b/g;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
    .registers 6

    iput-object p1, p0, Lcom/tds/tapdb/b/g$h;->e:Lcom/tds/tapdb/b/g;

    iput-object p4, p0, Lcom/tds/tapdb/b/g$h;->c:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/tds/tapdb/b/g$h;->d:Ljava/io/Writer;

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

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g$h;->c()Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tds/tapdb/b/g$h;->e:Lcom/tds/tapdb/b/g;

    iget-object v1, p0, Lcom/tds/tapdb/b/g$h;->c:Ljava/io/BufferedReader;

    iget-object v2, p0, Lcom/tds/tapdb/b/g$h;->d:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/tds/tapdb/b/g;->a(Ljava/io/Reader;Ljava/io/Writer;)Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method
