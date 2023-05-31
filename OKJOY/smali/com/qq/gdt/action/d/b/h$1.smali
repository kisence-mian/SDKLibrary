.class final Lcom/qq/gdt/action/d/b/h$1;
.super Lcom/qq/gdt/action/d/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/d/b/h;->a(Lcom/qq/gdt/action/d/b/f;[BII)Lcom/qq/gdt/action/d/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/d/b/f;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/d/b/f;I[BI)V
    .registers 5

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/h$1;->a:Lcom/qq/gdt/action/d/b/f;

    iput p2, p0, Lcom/qq/gdt/action/d/b/h$1;->b:I

    iput-object p3, p0, Lcom/qq/gdt/action/d/b/h$1;->c:[B

    iput p4, p0, Lcom/qq/gdt/action/d/b/h$1;->d:I

    invoke-direct {p0}, Lcom/qq/gdt/action/d/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/d/b/f;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/h$1;->a:Lcom/qq/gdt/action/d/b/f;

    return-object v0
.end method

.method public a(Ljava/io/BufferedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/h$1;->c:[B

    iget v1, p0, Lcom/qq/gdt/action/d/b/h$1;->d:I

    iget v2, p0, Lcom/qq/gdt/action/d/b/h$1;->b:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public b()J
    .registers 3

    iget v0, p0, Lcom/qq/gdt/action/d/b/h$1;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
