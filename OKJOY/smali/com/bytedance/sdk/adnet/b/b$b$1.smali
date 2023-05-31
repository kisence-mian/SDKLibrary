.class Lcom/bytedance/sdk/adnet/b/b$b$1;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/b$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/b/b$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/b$b;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 10

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/c$a;

    .line 177
    :try_start_1a
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/c$a;->a(JJ)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 178
    :catch_1e
    move-exception v0

    .line 179
    const-string v2, "file loader onDownloadProgress error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 183
    :cond_28
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-eqz v0, :cond_43

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/b$a;

    .line 190
    :try_start_1b
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/b/b$a;->a(Lcom/bytedance/sdk/adnet/core/n;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_33

    .line 195
    :goto_1e
    :try_start_1e
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v3, v1, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/adnet/b/b$a;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_f

    .line 196
    :catch_2a
    move-exception v0

    .line 197
    const-string v1, "file loader putFile error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 191
    :catch_33
    move-exception v1

    .line 192
    const-string v3, "file loader onResponse error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    .line 200
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    :cond_43
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->f:Lcom/bytedance/sdk/adnet/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/b;->a(Lcom/bytedance/sdk/adnet/b/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v1, v1, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-eqz v0, :cond_2f

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/c$a;

    .line 211
    :try_start_1a
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/b/c$a;->b(Lcom/bytedance/sdk/adnet/core/n;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 212
    :catch_1e
    move-exception v0

    .line 213
    const-string v2, "file loader onErrorResponse error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 216
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->f:Lcom/bytedance/sdk/adnet/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/b;->a(Lcom/bytedance/sdk/adnet/b/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v1, v1, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method
