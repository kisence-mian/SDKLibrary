.class final Lcom/anythink/china/common/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/common/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a;->e(Lcom/anythink/china/common/a/c;)V
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

    .prologue
    .line 186
    iput-object p1, p0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/common/a/c;J)V
    .registers 8

    .prologue
    .line 206
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/common/a$2$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/china/common/a$2$2;-><init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/c;J)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;JJ)V
    .registers 14

    .prologue
    .line 189
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartBefore: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v7

    new-instance v0, Lcom/anythink/china/common/a$2$1;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/anythink/china/common/a$2$1;-><init>(Lcom/anythink/china/common/a$2;JJLcom/anythink/china/common/a/c;)V

    invoke-virtual {v7, v0}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;JJI)V
    .registers 17

    .prologue
    .line 258
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "onCancel: "

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v8

    new-instance v0, Lcom/anythink/china/common/a$2$5;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p6

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/anythink/china/common/a$2$5;-><init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/c;IJJ)V

    invoke-virtual {v8, v0}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 240
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

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

    .line 241
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/common/a$2$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/china/common/a$2$4;-><init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public final b(Lcom/anythink/china/common/a/c;JJ)V
    .registers 14

    .prologue
    .line 230
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/common/a$2$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/anythink/china/common/a$2$3;-><init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/c;JJ)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method
