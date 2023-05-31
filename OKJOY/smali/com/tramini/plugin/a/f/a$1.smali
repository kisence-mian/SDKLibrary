.class final Lcom/tramini/plugin/a/f/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/f/a;->a(Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/f/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/b/a;

.field final synthetic b:Lcom/tramini/plugin/a/f/a$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/b/a;Lcom/tramini/plugin/a/f/a$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tramini/plugin/a/f/a$1;->a:Lcom/tramini/plugin/b/a;

    iput-object p2, p0, Lcom/tramini/plugin/a/f/a$1;->b:Lcom/tramini/plugin/a/f/a$a;

    iput-object p3, p0, Lcom/tramini/plugin/a/f/a$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tramini/plugin/a/f/a$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/tramini/plugin/a/f/a$1;->a:Lcom/tramini/plugin/b/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 42
    if-nez v0, :cond_14

    .line 43
    iget-object v0, p0, Lcom/tramini/plugin/a/f/a$1;->b:Lcom/tramini/plugin/a/f/a$a;

    if-eqz v0, :cond_13

    .line 44
    iget-object v0, p0, Lcom/tramini/plugin/a/f/a$1;->b:Lcom/tramini/plugin/a/f/a$a;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/tramini/plugin/a/f/a$a;->a(Lcom/tramini/plugin/a/b/a;)V

    .line 97
    :cond_13
    :goto_13
    return-void

    .line 48
    :cond_14
    iget-object v2, p0, Lcom/tramini/plugin/a/f/a$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tramini/plugin/a/b/b;

    .line 49
    if-eqz v0, :cond_3d

    iget-object v2, v0, Lcom/tramini/plugin/a/b/b;->d:Ljava/lang/String;

    .line 50
    :goto_20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 51
    iget-object v0, p0, Lcom/tramini/plugin/a/f/a$1;->b:Lcom/tramini/plugin/a/f/a$a;

    if-eqz v0, :cond_13

    .line 52
    iget-object v0, p0, Lcom/tramini/plugin/a/f/a$1;->b:Lcom/tramini/plugin/a/f/a$a;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/tramini/plugin/a/f/a$a;->a(Lcom/tramini/plugin/a/b/a;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_13

    :catch_31
    move-exception v0

    :goto_32
    move-object v0, v1

    .line 94
    :goto_33
    iget-object v1, p0, Lcom/tramini/plugin/a/f/a$1;->b:Lcom/tramini/plugin/a/f/a$a;

    if-eqz v1, :cond_13

    .line 95
    iget-object v1, p0, Lcom/tramini/plugin/a/f/a$1;->b:Lcom/tramini/plugin/a/f/a$a;

    invoke-interface {v1, v0}, Lcom/tramini/plugin/a/f/a$a;->a(Lcom/tramini/plugin/a/b/a;)V

    goto :goto_13

    .line 49
    :cond_3d
    :try_start_3d
    const-string v2, ""

    goto :goto_20

    .line 57
    :cond_40
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/tramini/plugin/a/f/a$1;->c:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ba

    :cond_4f
    :goto_4f
    packed-switch v2, :pswitch_data_d4

    goto :goto_32

    .line 73
    :pswitch_53
    iget-object v0, p0, Lcom/tramini/plugin/a/f/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/tramini/plugin/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    goto :goto_33

    .line 65
    :sswitch_5a
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v2, 0x0

    goto :goto_4f

    :sswitch_64
    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v2, 0x1

    goto :goto_4f

    :sswitch_6e
    const-string v5, "8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v2, 0x2

    goto :goto_4f

    :sswitch_78
    const-string v5, "15"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v2, 0x3

    goto :goto_4f

    :sswitch_82
    const-string v5, "28"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v2, 0x4

    goto :goto_4f

    :sswitch_8c
    const-string v5, "29"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v2, 0x5

    goto :goto_4f

    .line 76
    :pswitch_96
    iget-object v2, p0, Lcom/tramini/plugin/a/f/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/tramini/plugin/a/d/d;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    goto :goto_33

    .line 79
    :pswitch_9d
    iget-object v2, p0, Lcom/tramini/plugin/a/f/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/tramini/plugin/a/d/b;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    goto :goto_33

    .line 82
    :pswitch_a4
    iget-object v2, p0, Lcom/tramini/plugin/a/f/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/tramini/plugin/a/d/g;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    goto :goto_33

    .line 85
    :pswitch_ab
    iget-object v2, p0, Lcom/tramini/plugin/a/f/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/tramini/plugin/a/d/c;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    goto :goto_33

    .line 88
    :pswitch_b2
    iget-object v2, p0, Lcom/tramini/plugin/a/f/a$1;->d:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/tramini/plugin/a/d/f;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_b7} :catch_31

    move-result-object v0

    goto/16 :goto_33

    .line 65
    :sswitch_data_ba
    .sparse-switch
        0x32 -> :sswitch_5a
        0x36 -> :sswitch_64
        0x38 -> :sswitch_6e
        0x624 -> :sswitch_78
        0x646 -> :sswitch_82
        0x647 -> :sswitch_8c
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_53
        :pswitch_96
        :pswitch_9d
        :pswitch_a4
        :pswitch_ab
        :pswitch_b2
    .end packed-switch
.end method
