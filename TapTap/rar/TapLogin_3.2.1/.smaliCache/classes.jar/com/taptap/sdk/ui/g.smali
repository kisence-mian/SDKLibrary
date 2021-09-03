.class public Lcom/taptap/sdk/ui/g;
.super Lcom/taptap/sdk/ui/c;
.source "CloudGameHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/ui/g$c;,
        Lcom/taptap/sdk/ui/g$b;
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/String; = "login_taptap_finish"

.field public static final n:Ljava/lang/String; = "message_result"

.field public static final o:Ljava/lang/String; = "initialize_finish"

.field public static final p:Ljava/lang/String; = "middle_layer_init_finish"

.field public static final q:Ljava/lang/String; = "Gson parse JsonSyntaxException"

.field private static final r:I = 0x2711


# instance fields
.field private a:Lcom/taptap/sdk/ui/a;

.field private b:Landroid/os/Messenger;

.field private c:Lcom/taptap/sdk/ui/g$c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Message;

.field private g:Lcom/taptap/sdk/o/c;

.field private h:Lcom/taptap/sdk/ui/g$b;

.field private i:Lcom/taptap/sdk/LoginRequest;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/ui/a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/c;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/ui/g;->d:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/ui/g;->e:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/ui/g;->k:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/taptap/sdk/ui/g$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/taptap/sdk/ui/g$a;-><init>(Lcom/taptap/sdk/ui/g;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/taptap/sdk/ui/g;->l:Landroid/os/Messenger;

    .line 34
    iput-object p1, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    .line 35
    new-instance p1, Lcom/taptap/sdk/ui/g$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/taptap/sdk/ui/g$b;-><init>(Lcom/taptap/sdk/ui/g;Lcom/taptap/sdk/ui/g$a;)V

    iput-object p1, p0, Lcom/taptap/sdk/ui/g;->h:Lcom/taptap/sdk/ui/g$b;

    .line 36
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/os/Message;
    .registers 5

    .line 65
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 66
    const/16 v1, 0x2711

    iput v1, v0, Landroid/os/Message;->what:I

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 70
    iget-object p1, p0, Lcom/taptap/sdk/ui/g;->l:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic a(Lcom/taptap/sdk/ui/g;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/taptap/sdk/ui/g;->b:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/taptap/sdk/ui/g;)Lcom/taptap/sdk/LoginRequest;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taptap/sdk/ui/g;->i:Lcom/taptap/sdk/LoginRequest;

    return-object p0
.end method

.method private a(Lcom/taptap/sdk/o/e;)V
    .registers 9

    .line 6
    new-instance v6, Lcom/taptap/sdk/LoginResponse;

    iget-object v0, p1, Lcom/taptap/sdk/o/e;->c:Lcom/taptap/sdk/o/d;

    iget-object v2, v0, Lcom/taptap/sdk/o/d;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/taptap/sdk/o/d;->d:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/taptap/sdk/o/d;->c:Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/LoginResponse;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/AccessToken;Z)V

    .line 7
    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taptap/sdk/ui/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/taptap/sdk/LoginResponse;->loginVersion:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/taptap/sdk/o/e;->c:Lcom/taptap/sdk/o/d;

    iget-object v0, p1, Lcom/taptap/sdk/o/d;->a:Ljava/lang/String;

    iput-object v0, v6, Lcom/taptap/sdk/LoginResponse;->code:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcom/taptap/sdk/o/d;->d:Ljava/lang/String;

    const-string v0, "Gson parse JsonSyntaxException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 10
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V

    goto :goto_3b

    .line 12
    :cond_2c
    iget-object p1, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    invoke-virtual {v6}, Lcom/taptap/sdk/LoginResponse;->toIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/taptap/sdk/ui/a;->a(ILandroid/content/Intent;)V

    .line 13
    iget-object p1, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    invoke-virtual {p1}, Lcom/taptap/sdk/ui/a;->a()V

    :goto_3b
    return-void
.end method

.method static synthetic a(Lcom/taptap/sdk/ui/g;Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taptap/sdk/ui/g;Lorg/json/JSONObject;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/g;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 2

    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/taptap/sdk/o/c;->a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/c;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/ui/g;->g:Lcom/taptap/sdk/o/c;

    .line 15
    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/g;->a(Lcom/taptap/sdk/o/c;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 16
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->f()V

    goto :goto_1b

    .line 18
    :cond_10
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1b

    .line 21
    :catch_14
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V

    :goto_1b
    return-void
.end method

.method private a(Lcom/taptap/sdk/o/c;)Z
    .registers 3

    .line 23
    iget-object v0, p1, Lcom/taptap/sdk/o/c;->c:Lcom/taptap/sdk/o/c$b;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/taptap/sdk/o/c$b;->b:Lcom/taptap/sdk/o/c$a;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/taptap/sdk/o/c$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 27
    iget-object p1, p1, Lcom/taptap/sdk/o/c;->c:Lcom/taptap/sdk/o/c$b;

    iget-object p1, p1, Lcom/taptap/sdk/o/c$b;->b:Lcom/taptap/sdk/o/c$a;

    iget-object p1, p1, Lcom/taptap/sdk/o/c$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/taptap/sdk/ui/g;->j:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xbdb3

    if-eq v0, v1, :cond_a

    goto :goto_14

    :cond_a
    const-string v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, -0x1

    :goto_15
    if-eqz p1, :cond_1a

    const-string p1, "0"

    goto :goto_1c

    :cond_1a
    const-string p1, "1"

    :goto_1c
    return-object p1
.end method

.method private b()V
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->c:Lcom/taptap/sdk/ui/g$c;

    if-eqz v0, :cond_7

    .line 10
    invoke-interface {v0}, Lcom/taptap/sdk/ui/g$c;->a()V

    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/taptap/sdk/ui/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->g()V

    return-void
.end method

.method static synthetic b(Lcom/taptap/sdk/ui/g;Lorg/json/JSONObject;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/g;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 2

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/taptap/sdk/o/e;->a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/e;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/g;->a(Lcom/taptap/sdk/o/e;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_f

    .line 6
    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V

    :goto_f
    return-void
.end method

.method static synthetic c(Lcom/taptap/sdk/ui/g;)Lcom/taptap/sdk/ui/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    return-object p0
.end method

.method static synthetic c(Lcom/taptap/sdk/ui/g;Lorg/json/JSONObject;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/g;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 4

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/taptap/sdk/o/g;->a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/g;

    move-result-object p1

    .line 5
    iget-object v0, p1, Lcom/taptap/sdk/o/g;->c:Lcom/taptap/sdk/o/f;

    iget-boolean v0, v0, Lcom/taptap/sdk/o/f;->a:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/taptap/sdk/o/g;->c:Lcom/taptap/sdk/o/f;

    iget-object v1, v1, Lcom/taptap/sdk/o/f;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/taptap/sdk/o/g;->c:Lcom/taptap/sdk/o/f;

    iget-object p1, p1, Lcom/taptap/sdk/o/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 7
    :cond_22
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2d

    .line 10
    :catch_26
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private d()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->k:Ljava/util/ArrayList;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcom/taptap/sdk/ui/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->e()V

    return-void
.end method

.method private e()V
    .registers 7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    iget-object v0, v0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/LoginRequest;->generateSDKInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "initialize"

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_77

    const-string v2, "message_id"

    .line 5
    :try_start_1a
    iget-object v3, p0, Lcom/taptap/sdk/ui/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_77

    const-string v3, "package_name"

    .line 8
    :try_start_26
    iget-object v4, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    iget-object v4, v4, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    invoke-virtual {v4}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk_info"

    .line 9
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 13
    iget-object v4, p0, Lcom/taptap/sdk/ui/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4a

    :cond_5a
    const-string v4, "login"

    .line 16
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CGPN"

    .line 17
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    .line 18
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taptap/sdk/ui/g;->a(Ljava/lang/String;)Landroid/os/Message;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/taptap/sdk/ui/g;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception v0

    .line 22
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V

    :goto_7b
    return-void
.end method

.method static synthetic e(Lcom/taptap/sdk/ui/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V

    return-void
.end method

.method private f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->f:Landroid/os/Message;

    if-nez v0, :cond_5

    return-void

    .line 6
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/taptap/sdk/ui/g;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    .line 8
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V

    :goto_f
    return-void
.end method

.method private g()V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "middle_layer_init"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_2b

    const-string v1, "package_name"

    .line 3
    :try_start_e
    iget-object v2, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    iget-object v2, v2, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    invoke-virtual {v2}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taptap/sdk/ui/g;->a(Ljava/lang/String;)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/taptap/sdk/ui/g;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 7
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V

    :goto_2f
    return-void
.end method


# virtual methods
.method a(Lcom/taptap/sdk/LoginRequest;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/taptap/sdk/ui/g;->i:Lcom/taptap/sdk/LoginRequest;

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    const-string v1, "type"

    const-string v2, "login_taptap"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object v1, p0, Lcom/taptap/sdk/ui/g;->d:Ljava/lang/String;

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    invoke-static {}, Lcom/taptap/sdk/e;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "client_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getPermissions()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_38

    aget-object v6, v3, v5

    .line 38
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_38
    nop

    .line 40
    const-string v3, "scopes"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_version"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object v2, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    invoke-virtual {v2}, Lcom/taptap/sdk/ui/a;->b()Z

    move-result v2

    const-string v3, "portrait"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_info"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getResponseType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "response_type"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getCodeChallenge()Ljava/lang/String;

    move-result-object v2

    const-string v3, "code_challenge"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getCodeChallengeMethod()Ljava/lang/String;

    move-result-object p1

    const-string v2, "code_challenge_method"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string p1, "data"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/g;->a(Ljava/lang/String;)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/ui/g;->f:Landroid/os/Message;

    .line 52
    const-string p1, "cloud_play"

    invoke-static {p1}, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationOpen(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/taptap/sdk/ui/g;->g:Lcom/taptap/sdk/o/c;

    if-eqz p1, :cond_a1

    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/g;->a(Lcom/taptap/sdk/o/c;)Z

    move-result p1

    if-nez p1, :cond_a1

    .line 56
    invoke-direct {p0}, Lcom/taptap/sdk/ui/g;->b()V

    return-void

    .line 60
    :cond_a1
    iget-object p1, p0, Lcom/taptap/sdk/ui/g;->b:Landroid/os/Messenger;

    if-eqz p1, :cond_ae

    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->g:Lcom/taptap/sdk/o/c;

    if-eqz v0, :cond_ae

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->f:Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 64
    :cond_ae
    invoke-static {}, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationBack()V

    return-void
.end method

.method public a(Lcom/taptap/sdk/ui/g$c;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/taptap/sdk/ui/g;->c:Lcom/taptap/sdk/ui/g$c;

    return-void
.end method

.method public a()Z
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cloud.taptap.gaming.daemon"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v1, "com.cloud.taptap.gaming"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/taptap/sdk/ui/g;->a:Lcom/taptap/sdk/ui/a;

    iget-object v1, v1, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    invoke-virtual {v1}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/taptap/sdk/ui/g;->h:Lcom/taptap/sdk/ui/g$b;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/taptap/sdk/ui/g$b;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/taptap/sdk/ui/g;->h:Lcom/taptap/sdk/ui/g$b;

    return-object v0
.end method
