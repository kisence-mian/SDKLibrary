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

    .prologue
    .line 113
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
    .registers 16

    .prologue
    const/4 v7, 0x1

    const/4 v14, 0x0

    .line 116
    iget-object v0, p0, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->i()Ljava/lang/String;

    move-result-object v12

    .line 118
    :goto_c
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 119
    iget-object v0, p0, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    if-eqz v0, :cond_9d

    .line 122
    iget-object v0, p0, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    move v0, v7

    .line 125
    :goto_27
    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->G()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, Lcom/anythink/core/b/k;->a()Lcom/anythink/core/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 127
    :cond_43
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    const-string v1, "Placement strategy expired\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-array v6, v7, [Z

    .line 130
    iget-object v0, p0, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->t()J

    move-result-wide v2

    .line 132
    new-instance v0, Lcom/anythink/core/c/d$1$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/anythink/core/c/d$1$1;-><init>(Lcom/anythink/core/c/d$1;JJ[Z)V

    .line 145
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_86

    .line 146
    aput-boolean v7, v6, v14

    .line 147
    iget-object v1, p0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    iget-object v2, p0, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-interface {v1, v2}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    .line 153
    :goto_68
    new-instance v7, Lcom/anythink/core/b/e/f;

    iget-object v1, p0, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    iget-object v10, p0, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    iget-object v11, p0, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-direct/range {v7 .. v13}, Lcom/anythink/core/b/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    new-instance v1, Lcom/anythink/core/c/d$1$2;

    invoke-direct {v1, p0, v0, v6}, Lcom/anythink/core/c/d$1$2;-><init>(Lcom/anythink/core/c/d$1;Landroid/os/CountDownTimer;[Z)V

    invoke-virtual {v7, v14, v1}, Lcom/anythink/core/b/e/f;->a(ILcom/anythink/core/b/e/e;)V

    .line 328
    :cond_81
    :goto_81
    return-void

    .line 116
    :cond_82
    const/4 v12, 0x0

    goto :goto_c

    :cond_84
    move v0, v14

    .line 122
    goto :goto_27

    .line 149
    :cond_86
    sget-object v1, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    const-string v2, "Update placement strategy\uff0cstart timer"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_68

    .line 257
    :cond_91
    iget-object v0, p0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_81

    .line 258
    iget-object v0, p0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    iget-object v1, p0, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    goto :goto_81

    .line 264
    :cond_9d
    new-instance v7, Lcom/anythink/core/b/e/f;

    iget-object v0, p0, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    iget-object v10, p0, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    iget-object v11, p0, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-direct/range {v7 .. v13}, Lcom/anythink/core/b/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 265
    new-instance v0, Lcom/anythink/core/c/d$1$3;

    invoke-direct {v0, p0}, Lcom/anythink/core/c/d$1$3;-><init>(Lcom/anythink/core/c/d$1;)V

    invoke-virtual {v7, v14, v0}, Lcom/anythink/core/b/e/f;->a(ILcom/anythink/core/b/e/e;)V

    goto :goto_81
.end method
