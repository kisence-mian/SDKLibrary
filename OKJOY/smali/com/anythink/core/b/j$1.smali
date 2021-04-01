.class final Lcom/anythink/core/b/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/j;->a(ILcom/anythink/core/b/c/c;Lcom/anythink/core/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/c/c;

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/core/c/a;

.field final synthetic d:Lcom/anythink/core/b/j;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/j;Lcom/anythink/core/b/c/c;ILcom/anythink/core/c/a;)V
    .registers 5

    .prologue
    .line 44
    iput-object p1, p0, Lcom/anythink/core/b/j$1;->d:Lcom/anythink/core/b/j;

    iput-object p2, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    iput p3, p0, Lcom/anythink/core/b/j$1;->b:I

    iput-object p4, p0, Lcom/anythink/core/b/j$1;->c:Lcom/anythink/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 49
    :try_start_2
    const-string v0, "3"

    iget-object v3, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    iget-object v3, v3, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/n;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "1"

    iget-object v3, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    iget-object v3, v3, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    .line 50
    invoke-virtual {v3}, Lcom/anythink/core/b/c/n;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 97
    :cond_22
    :goto_22
    return-void

    .line 54
    :cond_23
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    iget-object v3, v3, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/n;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_22

    .line 58
    iget-object v0, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    iget-object v0, v0, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    check-cast v0, Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 64
    const/4 v0, 0x0

    .line 65
    iget v3, p0, Lcom/anythink/core/b/j$1;->b:I

    sparse-switch v3, :sswitch_data_f6

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 84
    :goto_56
    if-eqz v0, :cond_22

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 85
    invoke-static {}, Lcom/anythink/core/b/g/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    sget-object v2, Lcom/anythink/core/b/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "common -> "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/anythink/core/b/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "data -> "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    invoke-virtual {v5}, Lcom/anythink/core/b/c/c;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v0, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    iget-object v0, p0, Lcom/anythink/core/b/j$1;->d:Lcom/anythink/core/b/j;

    iget-object v5, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    iget-object v5, v5, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    check-cast v5, Lcom/anythink/core/b/c/b;

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/j;->a(Lcom/anythink/core/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/b/c/b;)V

    goto/16 :goto_22

    .line 97
    :catch_b3
    move-exception v0

    goto/16 :goto_22

    .line 67
    :sswitch_b6
    iget-object v0, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    iget-object v0, v0, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    check-cast v0, Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->j()I

    move-result v0

    if-ne v0, v2, :cond_c3

    move v1, v2

    .line 69
    :cond_c3
    iget-object v0, p0, Lcom/anythink/core/b/j$1;->c:Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->l()Ljava/util/Map;

    move-result-object v0

    .line 70
    const-string v2, "show"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 72
    goto :goto_56

    .line 75
    :sswitch_d5
    iget-object v0, p0, Lcom/anythink/core/b/j$1;->a:Lcom/anythink/core/b/c/c;

    iget-object v0, v0, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    check-cast v0, Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->k()I

    move-result v0

    if-ne v0, v2, :cond_e2

    move v1, v2

    .line 77
    :cond_e2
    iget-object v0, p0, Lcom/anythink/core/b/j$1;->c:Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->l()Ljava/util/Map;

    move-result-object v0

    .line 78
    const-string v2, "click"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f0} :catch_b3

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto/16 :goto_56

    .line 65
    nop

    :sswitch_data_f6
    .sparse-switch
        0x6 -> :sswitch_d5
        0xd -> :sswitch_b6
    .end sparse-switch
.end method
