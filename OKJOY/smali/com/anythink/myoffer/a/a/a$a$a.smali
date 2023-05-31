.class final Lcom/anythink/myoffer/a/a/a$a$a;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/a/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/a/a/a$a;


# direct methods
.method private constructor <init>(Lcom/anythink/myoffer/a/a/a$a;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 822
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/a$a$a;->a:Lcom/anythink/myoffer/a/a/a$a;

    .line 823
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 824
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/myoffer/a/a/a$a;Ljava/io/OutputStream;B)V
    .registers 4

    .prologue
    .line 821
    invoke-direct {p0, p1, p2}, Lcom/anythink/myoffer/a/a/a$a$a;-><init>(Lcom/anythink/myoffer/a/a/a$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .prologue
    .line 847
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 851
    :goto_5
    return-void

    .line 849
    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a$a;->a:Lcom/anythink/myoffer/a/a/a$a;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$a;->b(Lcom/anythink/myoffer/a/a/a$a;)Z

    goto :goto_5
.end method

.method public final flush()V
    .registers 2

    .prologue
    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 860
    :goto_5
    return-void

    .line 858
    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a$a;->a:Lcom/anythink/myoffer/a/a/a$a;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$a;->b(Lcom/anythink/myoffer/a/a/a$a;)Z

    goto :goto_5
.end method

.method public final write(I)V
    .registers 3

    .prologue
    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 833
    :goto_5
    return-void

    .line 831
    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a$a;->a:Lcom/anythink/myoffer/a/a/a$a;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$a;->b(Lcom/anythink/myoffer/a/a/a$a;)Z

    goto :goto_5
.end method

.method public final write([BII)V
    .registers 5

    .prologue
    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 842
    :goto_5
    return-void

    .line 840
    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$a$a;->a:Lcom/anythink/myoffer/a/a/a$a;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$a;->b(Lcom/anythink/myoffer/a/a/a$a;)Z

    goto :goto_5
.end method
