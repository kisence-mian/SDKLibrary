.class public Lcom/qq/gdt/action/d/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/d/b/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/d/b/a/b$a;)Lcom/qq/gdt/action/d/b/i;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Lcom/qq/gdt/action/d/b/a/b$a;->a()Lcom/qq/gdt/action/d/b/g;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-string v1, "Sending request %s %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/g;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/g;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/qq/gdt/action/d/b/a/b$a;->a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-string v1, "Received response for %s in %.1fms (http status code %d)%n%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/i;->a()Lcom/qq/gdt/action/d/b/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qq/gdt/action/d/b/g;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    sub-long v2, v4, v2

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/i;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v10

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/i;->e()Lcom/qq/gdt/action/d/b/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/d/b/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v1, v6}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
