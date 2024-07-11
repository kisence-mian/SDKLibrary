.class final Lcom/tramini/plugin/a/g/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/g/a;->a(Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/g/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/b/a;

.field final synthetic b:Lcom/tramini/plugin/a/g/a$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/b/a;Lcom/tramini/plugin/a/g/a$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 40
    iput-object p1, p0, Lcom/tramini/plugin/a/g/a$1;->a:Lcom/tramini/plugin/b/a;

    iput-object p2, p0, Lcom/tramini/plugin/a/g/a$1;->b:Lcom/tramini/plugin/a/g/a$a;

    iput-object p3, p0, Lcom/tramini/plugin/a/g/a$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tramini/plugin/a/g/a$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 44
    nop

    .line 47
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/tramini/plugin/a/g/a$1;->a:Lcom/tramini/plugin/b/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/b/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 49
    if-nez v1, :cond_12

    .line 50
    iget-object v1, p0, Lcom/tramini/plugin/a/g/a$1;->b:Lcom/tramini/plugin/a/g/a$a;

    if-eqz v1, :cond_11

    .line 51
    invoke-interface {v1, v0}, Lcom/tramini/plugin/a/g/a$a;->a(Lcom/tramini/plugin/a/c/a;)V

    .line 53
    :cond_11
    return-void

    .line 55
    :cond_12
    iget-object v2, p0, Lcom/tramini/plugin/a/g/a$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tramini/plugin/a/c/c;

    .line 56
    if-eqz v1, :cond_1f

    iget-object v2, v1, Lcom/tramini/plugin/a/c/c;->d:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    const-string v2, ""

    .line 57
    :goto_21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 58
    iget-object v1, p0, Lcom/tramini/plugin/a/g/a$1;->b:Lcom/tramini/plugin/a/g/a$a;

    if-eqz v1, :cond_2e

    .line 59
    invoke-interface {v1, v0}, Lcom/tramini/plugin/a/g/a$a;->a(Lcom/tramini/plugin/a/c/a;)V

    .line 61
    :cond_2e
    return-void

    .line 64
    :cond_2f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/tramini/plugin/a/g/a$1;->c:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_b2

    :cond_3e
    goto :goto_7a

    :sswitch_3f
    const-string v5, "29"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v4, 0x5

    goto :goto_7a

    :sswitch_49
    const-string v5, "28"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v4, 0x4

    goto :goto_7a

    :sswitch_53
    const-string v5, "15"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v4, 0x3

    goto :goto_7a

    :sswitch_5d
    const-string v5, "8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v4, 0x2

    goto :goto_7a

    :sswitch_67
    const-string v5, "6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v4, 0x1

    goto :goto_7a

    :sswitch_71
    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v4, 0x0

    :goto_7a
    packed-switch v4, :pswitch_data_cc

    goto :goto_a8

    .line 95
    :pswitch_7e
    iget-object v2, p0, Lcom/tramini/plugin/a/g/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/tramini/plugin/a/e/f;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;

    move-result-object v0

    goto :goto_a8

    .line 92
    :pswitch_85
    iget-object v2, p0, Lcom/tramini/plugin/a/g/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/tramini/plugin/a/e/c;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;

    move-result-object v0

    .line 93
    goto :goto_aa

    .line 89
    :pswitch_8c
    iget-object v2, p0, Lcom/tramini/plugin/a/g/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/tramini/plugin/a/e/g;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;

    move-result-object v0

    .line 90
    goto :goto_aa

    .line 86
    :pswitch_93
    iget-object v2, p0, Lcom/tramini/plugin/a/g/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/tramini/plugin/a/e/b;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;

    move-result-object v0

    .line 87
    goto :goto_aa

    .line 83
    :pswitch_9a
    iget-object v2, p0, Lcom/tramini/plugin/a/g/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/tramini/plugin/a/e/d;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;

    move-result-object v0

    .line 84
    goto :goto_aa

    .line 80
    :pswitch_a1
    iget-object v1, p0, Lcom/tramini/plugin/a/g/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tramini/plugin/a/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;

    move-result-object v0
    :try_end_a7
    .catchall {:try_start_2 .. :try_end_a7} :catchall_a9

    .line 81
    goto :goto_aa

    .line 99
    :goto_a8
    goto :goto_aa

    .line 98
    :catchall_a9
    move-exception v1

    .line 101
    :goto_aa
    iget-object v1, p0, Lcom/tramini/plugin/a/g/a$1;->b:Lcom/tramini/plugin/a/g/a$a;

    if-eqz v1, :cond_b1

    .line 102
    invoke-interface {v1, v0}, Lcom/tramini/plugin/a/g/a$a;->a(Lcom/tramini/plugin/a/c/a;)V

    .line 104
    :cond_b1
    return-void

    :sswitch_data_b2
    .sparse-switch
        0x32 -> :sswitch_71
        0x36 -> :sswitch_67
        0x38 -> :sswitch_5d
        0x624 -> :sswitch_53
        0x646 -> :sswitch_49
        0x647 -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_9a
        :pswitch_93
        :pswitch_8c
        :pswitch_85
        :pswitch_7e
    .end packed-switch
.end method
