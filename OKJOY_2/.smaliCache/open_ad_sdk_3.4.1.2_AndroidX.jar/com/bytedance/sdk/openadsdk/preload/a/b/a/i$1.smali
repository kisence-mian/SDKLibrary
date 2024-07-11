.class Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;
.super Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;ZZ)Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Field;

.field final synthetic b:Z

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/preload/a/f;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

.field final synthetic f:Z

.field final synthetic g:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/bytedance/sdk/openadsdk/preload/a/v;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Z)V
    .registers 11

    .line 121
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->g:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->b:Z

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->d:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->e:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    iput-boolean p10, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->f:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->f:Z

    if-nez v0, :cond_11

    .line 134
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    :cond_11
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 126
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->b:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    goto :goto_1c

    :cond_d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->d:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->e:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    .line 127
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/v;Ljava/lang/reflect/Type;)V

    .line 128
    :goto_1c
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    if-eq v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method
