.class final Lcom/anythink/core/c/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/c/d$a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/anythink/core/c/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/d;Lcom/anythink/core/c/c;Ljava/lang/String;Lcom/anythink/core/c/d$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 127
    iput-object p1, p0, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    iput-object p2, p0, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    iput-object p3, p0, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    iput-object p5, p0, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 17

    .line 130
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v13, v0

    .line 132
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    iget-object v1, v7, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 133
    iget-object v0, v7, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    const/4 v15, 0x0

    if-eqz v0, :cond_a2

    .line 136
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->n()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    const/4 v8, 0x1

    xor-int/2addr v0, v8

    if-nez v0, :cond_4d

    iget-object v0, v7, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->Q()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {}, Lcom/anythink/core/common/m;->a()Lcom/anythink/core/common/m;

    move-result-object v0

    iget-object v1, v7, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v7, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/m;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_4d

    .line 278
    :cond_43
    iget-object v0, v7, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_4c

    .line 279
    iget-object v1, v7, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    .line 283
    :cond_4c
    return-void

    .line 141
    :cond_4d
    :goto_4d
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    const-string v1, "Placement strategy expired\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-array v12, v8, [Z

    .line 144
    iget-object v0, v7, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->z()J

    move-result-wide v9

    .line 146
    new-instance v11, Lcom/anythink/core/c/d$1$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move-wide v2, v9

    move-wide v4, v9

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/anythink/core/c/d$1$1;-><init>(Lcom/anythink/core/c/d$1;JJ[Z)V

    .line 162
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-nez v0, :cond_79

    .line 163
    aput-boolean v8, v12, v15

    .line 164
    iget-object v0, v7, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_83

    .line 165
    iget-object v1, v7, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    goto :goto_83

    .line 168
    :cond_79
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    const-string v1, "Update placement strategy\uff0cstart timer"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v11}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 172
    :cond_83
    :goto_83
    new-instance v0, Lcom/anythink/core/common/e/h;

    iget-object v1, v7, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, v7, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    iget-object v1, v7, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    iget-object v2, v7, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    move-object v8, v0

    move-object v3, v11

    move-object v11, v1

    move-object v1, v12

    move-object v12, v2

    invoke-direct/range {v8 .. v14}, Lcom/anythink/core/common/e/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    new-instance v2, Lcom/anythink/core/c/d$1$2;

    invoke-direct {v2, v7, v3, v1}, Lcom/anythink/core/c/d$1$2;-><init>(Lcom/anythink/core/c/d$1;Landroid/os/CountDownTimer;[Z)V

    invoke-virtual {v0, v15, v2}, Lcom/anythink/core/common/e/h;->a(ILcom/anythink/core/common/e/g;)V

    .line 277
    return-void

    .line 285
    :cond_a2
    new-instance v0, Lcom/anythink/core/common/e/h;

    iget-object v1, v7, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, v7, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    iget-object v11, v7, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    iget-object v12, v7, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/anythink/core/common/e/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    new-instance v1, Lcom/anythink/core/c/d$1$3;

    invoke-direct {v1, v7}, Lcom/anythink/core/c/d$1$3;-><init>(Lcom/anythink/core/c/d$1;)V

    invoke-virtual {v0, v15, v1}, Lcom/anythink/core/common/e/h;->a(ILcom/anythink/core/common/e/g;)V

    .line 356
    return-void
.end method
