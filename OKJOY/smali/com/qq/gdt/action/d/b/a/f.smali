.class public Lcom/qq/gdt/action/d/b/a/f;
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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/qq/gdt/action/d/b/a/b$a;->a()Lcom/qq/gdt/action/d/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/g;->d()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string v2, "Client-Time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-interface {p1, v0}, Lcom/qq/gdt/action/d/b/a/b$a;->a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/d/b/i;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v2, "Server-Time"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3f

    const/4 v2, 0x0

    :try_start_32
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/qq/gdt/action/h/u;->a(J)V
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    return-object v1

    :catch_40
    move-exception v0

    const-string v2, "fail to parse server time !"

    invoke-static {v2, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f
.end method
