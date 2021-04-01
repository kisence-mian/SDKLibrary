.class public abstract Lcom/qq/gdt/action/d/b/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/qq/gdt/action/d/b/f;[B)Lcom/qq/gdt/action/d/b/h;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/qq/gdt/action/d/b/h;->a(Lcom/qq/gdt/action/d/b/f;[BII)Lcom/qq/gdt/action/d/b/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/qq/gdt/action/d/b/f;[BII)Lcom/qq/gdt/action/d/b/h;
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/qq/gdt/action/d/b/k;->a(JJJ)V

    new-instance v0, Lcom/qq/gdt/action/d/b/h$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/qq/gdt/action/d/b/h$1;-><init>(Lcom/qq/gdt/action/d/b/f;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/qq/gdt/action/d/b/f;
.end method

.method public abstract a(Ljava/io/BufferedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method
