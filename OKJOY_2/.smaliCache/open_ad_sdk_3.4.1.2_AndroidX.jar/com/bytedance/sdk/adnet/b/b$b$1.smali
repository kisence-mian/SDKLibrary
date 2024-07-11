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

    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 9

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/b/c$a;

    .line 177
    :try_start_1a
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/c$a;->a(JJ)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    .line 180
    goto :goto_27

    .line 178
    :catchall_1e
    move-exception v1

    .line 179
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "file loader onDownloadProgress error"

    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :goto_27
    goto :goto_e

    .line 183
    :cond_28
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-eqz v0, :cond_43

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/b/b$a;

    .line 190
    const/4 v2, 0x0

    :try_start_1b
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/b/b$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 193
    goto :goto_27

    .line 191
    :catchall_1f
    move-exception v3

    .line 192
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "file loader onResponse error"

    invoke-static {v3, v5, v4}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :goto_27
    :try_start_27
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v3, v3, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-interface {v1, v3, v4}, Lcom/bytedance/sdk/adnet/b/b$a;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_33

    .line 198
    goto :goto_3b

    .line 196
    :catchall_33
    move-exception v1

    .line 197
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "file loader putFile error"

    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :goto_3b
    goto :goto_e

    .line 200
    :cond_3c
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 203
    :cond_43
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->f:Lcom/bytedance/sdk/adnet/b/b;

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/b/b;->a(Lcom/bytedance/sdk/adnet/b/b;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-eqz v0, :cond_2f

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/b/c$a;

    .line 211
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/b/c$a;->b(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    .line 214
    goto :goto_27

    .line 212
    :catchall_1e
    move-exception v1

    .line 213
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "file loader onErrorResponse error"

    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :goto_27
    goto :goto_e

    .line 216
    :cond_28
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 218
    :cond_2f
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->f:Lcom/bytedance/sdk/adnet/b/b;

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/b/b;->a(Lcom/bytedance/sdk/adnet/b/b;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method
