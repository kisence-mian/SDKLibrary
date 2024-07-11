.class final Lcom/anythink/china/common/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/common/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a;->e(Lcom/anythink/china/common/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/common/a;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/a;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/common/a/e;J)V
    .registers 7

    .line 258
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/common/a$2$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/china/common/a$2$2;-><init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/e;J)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;JJ)V
    .registers 15

    .line 234
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartBefore: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v8, Lcom/anythink/china/common/a$2$1;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/anythink/china/common/a$2$1;-><init>(Lcom/anythink/china/common/a$2;JJLcom/anythink/china/common/a/e;)V

    invoke-virtual {v0, v8}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;JJI)V
    .registers 17

    .line 317
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "onCancel: "

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v9, Lcom/anythink/china/common/a$2$5;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p6

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/anythink/china/common/a$2$5;-><init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/e;IJJ)V

    invoke-virtual {v0, v9}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;Ljava/lang/String;)V
    .registers 6

    .line 299
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") download fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/common/a$2$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/china/common/a$2$4;-><init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public final b(Lcom/anythink/china/common/a/e;JJ)V
    .registers 15

    .line 289
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v8, Lcom/anythink/china/common/a$2$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/anythink/china/common/a$2$3;-><init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/e;JJ)V

    invoke-virtual {v0, v8}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method
