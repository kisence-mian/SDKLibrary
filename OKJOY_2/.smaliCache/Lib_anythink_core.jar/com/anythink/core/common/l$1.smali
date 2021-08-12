.class final Lcom/anythink/core/common/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/l;->a(ILcom/anythink/core/common/d/e;Lcom/anythink/core/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/e;

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/core/c/a;

.field final synthetic d:Lcom/anythink/core/common/l;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/l;Lcom/anythink/core/common/d/e;ILcom/anythink/core/c/a;)V
    .registers 5

    .line 52
    iput-object p1, p0, Lcom/anythink/core/common/l$1;->d:Lcom/anythink/core/common/l;

    iput-object p2, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    iput p3, p0, Lcom/anythink/core/common/l$1;->b:I

    iput-object p4, p0, Lcom/anythink/core/common/l$1;->c:Lcom/anythink/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 57
    :try_start_0
    const-string v0, "3"

    iget-object v1, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    iget-object v1, v1, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/aa;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "1"

    iget-object v1, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    iget-object v1, v1, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    .line 58
    invoke-virtual {v1}, Lcom/anythink/core/common/d/aa;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 59
    return-void

    .line 62
    :cond_21
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    iget-object v1, v1, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/aa;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 63
    if-nez v0, :cond_3c

    .line 64
    return-void

    .line 66
    :cond_3c
    iget-object v0, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    iget-object v0, v0, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    check-cast v0, Lcom/anythink/core/common/d/d;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 68
    return-void

    .line 71
    :cond_4d
    nop

    .line 72
    const/4 v0, 0x0

    .line 73
    iget v1, p0, Lcom/anythink/core/common/l$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_ee

    goto :goto_8e

    .line 75
    :sswitch_57
    iget-object v0, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    iget-object v0, v0, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    check-cast v0, Lcom/anythink/core/common/d/d;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->k()I

    move-result v0

    if-ne v0, v3, :cond_64

    move v2, v3

    .line 77
    :cond_64
    iget-object v0, p0, Lcom/anythink/core/common/l$1;->c:Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->v()Ljava/util/Map;

    move-result-object v0

    .line 78
    const-string v1, "show"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    goto :goto_8e

    .line 83
    :sswitch_73
    iget-object v0, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    iget-object v0, v0, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    check-cast v0, Lcom/anythink/core/common/d/d;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->l()I

    move-result v0

    if-ne v0, v3, :cond_80

    move v2, v3

    .line 85
    :cond_80
    iget-object v0, p0, Lcom/anythink/core/common/l$1;->c:Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->v()Ljava/util/Map;

    move-result-object v0

    .line 86
    const-string v1, "click"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    :goto_8e
    if-eqz v2, :cond_eb

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 93
    invoke-static {}, Lcom/anythink/core/common/g/k;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    sget-object v2, Lcom/anythink/core/common/l;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "common -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v2, Lcom/anythink/core/common/l;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/e;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v1, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/e;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    iget-object v1, p0, Lcom/anythink/core/common/l$1;->d:Lcom/anythink/core/common/l;

    iget-object v2, p0, Lcom/anythink/core/common/l$1;->a:Lcom/anythink/core/common/d/e;

    iget-object v2, v2, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    move-object v6, v2

    check-cast v6, Lcom/anythink/core/common/d/d;

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/anythink/core/common/l;->a(Lcom/anythink/core/common/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/d/d;)V
    :try_end_eb
    .catchall {:try_start_0 .. :try_end_eb} :catchall_ec

    .line 104
    :cond_eb
    return-void

    .line 102
    :catchall_ec
    move-exception v0

    .line 105
    return-void

    :sswitch_data_ee
    .sparse-switch
        0x6 -> :sswitch_73
        0xd -> :sswitch_57
    .end sparse-switch
.end method
