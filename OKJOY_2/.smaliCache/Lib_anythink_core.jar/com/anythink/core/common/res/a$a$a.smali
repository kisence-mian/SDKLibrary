.class final Lcom/anythink/core/common/res/a$a$a;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/res/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/res/a$a;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/res/a$a;Ljava/io/OutputStream;)V
    .registers 3

    .line 812
    iput-object p1, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    .line 813
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 814
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/core/common/res/a$a;Ljava/io/OutputStream;B)V
    .registers 4

    .line 811
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/res/a$a$a;-><init>(Lcom/anythink/core/common/res/a$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 840
    return-void

    .line 838
    :catch_6
    move-exception v0

    .line 839
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    invoke-static {v0}, Lcom/anythink/core/common/res/a$a;->b(Lcom/anythink/core/common/res/a$a;)Z

    .line 841
    return-void
.end method

.method public final flush()V
    .registers 2

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 849
    return-void

    .line 847
    :catch_6
    move-exception v0

    .line 848
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    invoke-static {v0}, Lcom/anythink/core/common/res/a$a;->b(Lcom/anythink/core/common/res/a$a;)Z

    .line 850
    return-void
.end method

.method public final write(I)V
    .registers 3

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 822
    return-void

    .line 820
    :catch_6
    move-exception p1

    .line 821
    iget-object p1, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    invoke-static {p1}, Lcom/anythink/core/common/res/a$a;->b(Lcom/anythink/core/common/res/a$a;)Z

    .line 823
    return-void
.end method

.method public final write([BII)V
    .registers 5

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 831
    return-void

    .line 829
    :catch_6
    move-exception p1

    .line 830
    iget-object p1, p0, Lcom/anythink/core/common/res/a$a$a;->a:Lcom/anythink/core/common/res/a$a;

    invoke-static {p1}, Lcom/anythink/core/common/res/a$a;->b(Lcom/anythink/core/common/res/a$a;)Z

    .line 832
    return-void
.end method
