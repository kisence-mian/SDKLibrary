.class Lcom/qq/gdt/action/f/b;
.super Landroid/os/Handler;


# instance fields
.field private final a:Lcom/qq/gdt/action/c/h;

.field private final b:Lcom/qq/gdt/action/c/h;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/qq/gdt/action/f/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/qq/gdt/action/f/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/f/b;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/f/b;->d:Ljava/util/Set;

    const-string v0, "action_records"

    const-class v1, Lcom/qq/gdt/action/f/a/a;

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/c/d;->a(Ljava/lang/String;Ljava/lang/Class;Z)Lcom/qq/gdt/action/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/c/h;

    const-string v0, "events"

    const-class v1, Lcom/qq/gdt/action/f/a/b;

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/c/d;->a(Ljava/lang/String;Ljava/lang/Class;Z)Lcom/qq/gdt/action/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/b;->b:Lcom/qq/gdt/action/c/h;

    const/4 v0, 0x1

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Lcom/qq/gdt/action/f/b;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/f/b;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/f/b;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/f/a/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/f/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/f/b;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method

.method static synthetic b(Lcom/qq/gdt/action/f/b;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/f/b;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/f/a/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/f/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/f/b;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method

.method private c(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/f/a/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_63

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_63

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/f/a/a;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_22
    const-string v4, "eventId"

    const/16 v5, 0x3f3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "actionType"

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/a/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "uniqActionId"

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/a/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "session_id"

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_4e} :catch_4f

    goto :goto_11

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_11

    :cond_54
    const/4 v0, 0x1

    new-instance v2, Lcom/qq/gdt/action/f/b$1;

    invoke-direct {v2, p0, p1}, Lcom/qq/gdt/action/f/b$1;-><init>(Lcom/qq/gdt/action/f/b;Ljava/util/List;)V

    invoke-static {v1, v0, v2}, Lcom/qq/gdt/action/g/a;->a(Lorg/json/JSONArray;ZLcom/qq/gdt/action/d/b/b;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/f/b;->a(Ljava/util/List;)V

    :cond_63
    return-void
.end method

.method private d(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/f/a/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/f/a/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/a/b;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    :cond_25
    const/4 v0, 0x1

    new-instance v2, Lcom/qq/gdt/action/f/b$2;

    invoke-direct {v2, p0, p1}, Lcom/qq/gdt/action/f/b$2;-><init>(Lcom/qq/gdt/action/f/b;Ljava/util/List;)V

    invoke-static {v1, v0, v2}, Lcom/qq/gdt/action/g/a;->a(Lorg/json/JSONArray;ZLcom/qq/gdt/action/d/b/b;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/f/b;->b(Ljava/util/List;)V

    :cond_34
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x1e

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_124

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    const-string v0, "RecorderHandler"

    const-string v1, "\u8f6e\u8be2\uff0c\u95f4\u969430s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/qq/gdt/action/f/d;->a()V

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v3, v0, v1}, Lcom/qq/gdt/action/f/b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    :pswitch_1c
    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/c/h;

    if-eqz v0, :cond_35

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qq/gdt/action/c/a;

    const-string v1, "RecorderHandler_Action"

    const-string v2, "\u8bb0\u5f55Action : %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/c/h;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/c/h;->a(Lcom/qq/gdt/action/c/a;)V

    goto :goto_9

    :cond_35
    const-string v0, "actionRecordBuffer is null , cannot add"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_3b
    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->b:Lcom/qq/gdt/action/c/h;

    if-eqz v0, :cond_54

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qq/gdt/action/c/a;

    const-string v1, "RecorderHandler_Event"

    const-string v2, "\u8bb0\u5f55Event : %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->b:Lcom/qq/gdt/action/c/h;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/c/h;->a(Lcom/qq/gdt/action/c/a;)V

    goto :goto_9

    :cond_54
    const-string v0, "eventBuffer is null , cannot add"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_5a
    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/c/h;

    if-eqz v0, :cond_97

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "RecorderHandler_Action"

    const-string v1, "\u4e0a\u62a5Action\uff0c\u6709\u7f51\u7edc"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/c/h;

    invoke-virtual {v0, v5}, Lcom/qq/gdt/action/c/h;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/f/b;->c(Ljava/util/List;)V

    goto/16 :goto_9

    :cond_8c
    const-string v0, "RecorderHandler_Action"

    const-string v1, "\u4e0a\u62a5Action\uff0c\u65e0\u7f51\u7edc"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_97
    const-string v0, "actionRecordBuffer is null , cannot report"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_9e
    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->b:Lcom/qq/gdt/action/c/h;

    if-eqz v0, :cond_db

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string v0, "RecorderHandler_Event"

    const-string v1, "\u4e0a\u62a5Event\uff0c\u6709\u7f51\u7edc"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->b:Lcom/qq/gdt/action/c/h;

    invoke-virtual {v0, v5}, Lcom/qq/gdt/action/c/h;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/f/b;->d(Ljava/util/List;)V

    goto/16 :goto_9

    :cond_d0
    const-string v0, "RecorderHandler_Event"

    const-string v1, "\u4e0a\u62a5Event\uff0c\u65e0\u7f51\u7edc"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_db
    const-string v0, "eventBuffer is null , cannot report"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_e2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    :pswitch_ed
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    :pswitch_f8
    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/c/h;

    if-eqz v0, :cond_107

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/c/h;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/c/h;->a(Ljava/util/Collection;)V

    goto/16 :goto_9

    :cond_107
    const-string v0, "actionRecordBuffer is null , cannot remove"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_10e
    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->b:Lcom/qq/gdt/action/c/h;

    if-eqz v0, :cond_11d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b;->b:Lcom/qq/gdt/action/c/h;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/c/h;->a(Ljava/util/Collection;)V

    goto/16 :goto_9

    :cond_11d
    const-string v0, "eventBuffer is null , cannot remove"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1c
        :pswitch_3b
        :pswitch_5a
        :pswitch_9e
        :pswitch_e2
        :pswitch_ed
        :pswitch_f8
        :pswitch_10e
    .end packed-switch
.end method
