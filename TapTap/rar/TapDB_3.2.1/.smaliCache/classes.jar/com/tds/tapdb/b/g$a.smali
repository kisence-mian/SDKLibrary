.class Lcom/tds/tapdb/b/g$a;
.super Lcom/tds/tapdb/b/g$n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/b/g;->a(Ljava/io/Reader;)Lcom/tds/tapdb/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/tapdb/b/g$n<",
        "Lcom/tds/tapdb/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/io/Reader;

.field final synthetic c:Ljava/io/Writer;

.field final synthetic d:Lcom/tds/tapdb/b/g;


# direct methods
.method constructor <init>(Lcom/tds/tapdb/b/g;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 5

    iput-object p1, p0, Lcom/tds/tapdb/b/g$a;->d:Lcom/tds/tapdb/b/g;

    iput-object p3, p0, Lcom/tds/tapdb/b/g$a;->b:Ljava/io/Reader;

    iput-object p4, p0, Lcom/tds/tapdb/b/g$a;->c:Ljava/io/Writer;

    invoke-direct {p0, p2}, Lcom/tds/tapdb/b/g$n;-><init>(Ljava/io/Flushable;)V

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

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g$a;->c()Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tds/tapdb/b/g$a;->d:Lcom/tds/tapdb/b/g;

    iget-object v1, p0, Lcom/tds/tapdb/b/g$a;->b:Ljava/io/Reader;

    iget-object v2, p0, Lcom/tds/tapdb/b/g$a;->c:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/tds/tapdb/b/g;->a(Ljava/io/Reader;Ljava/io/Writer;)Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method
