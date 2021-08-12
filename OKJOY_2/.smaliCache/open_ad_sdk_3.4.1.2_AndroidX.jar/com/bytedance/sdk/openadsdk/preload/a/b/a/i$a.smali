.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/preload/a/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/i;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/i<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/i;

    .line 204
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;->b:Ljava/util/Map;

    .line 205
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    if-nez p2, :cond_6

    .line 237
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 238
    return-void

    .line 241
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 243
    :try_start_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;

    .line 244
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 245
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 246
    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_33

    .line 248
    :cond_2d
    goto :goto_13

    .line 251
    :cond_2e
    nop

    .line 252
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 253
    return-void

    .line 249
    :catch_33
    move-exception p1

    .line 250
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    .line 209
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 210
    const/4 p1, 0x0

    return-object p1

    .line 213
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/i;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/i;->a()Ljava/lang/Object;

    move-result-object v0

    .line 216
    :try_start_13
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c()V

    .line 217
    :goto_16
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 218
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;

    .line 220
    if-eqz v1, :cond_33

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;->j:Z

    if-nez v2, :cond_2f

    goto :goto_33

    .line 223
    :cond_2f
    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;Ljava/lang/Object;)V

    goto :goto_36

    .line 221
    :cond_33
    :goto_33
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->n()V
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_36} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_36} :catch_3c

    .line 225
    :goto_36
    goto :goto_16

    .line 230
    :cond_37
    nop

    .line 231
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d()V

    .line 232
    return-object v0

    .line 228
    :catch_3c
    move-exception p1

    .line 229
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 226
    :catch_43
    move-exception p1

    .line 227
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
