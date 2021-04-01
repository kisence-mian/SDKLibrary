.class public Lcom/ss/android/downloadlib/a/a;
.super Ljava/lang/Object;
.source "AdDeepLinkManager.java"


# static fields
.field private static a:Lcom/ss/android/downloadlib/a/a;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ss/android/a/a/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a;->b:Ljava/util/Map;

    .line 53
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a/a;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/ss/android/downloadlib/a/a;->a:Lcom/ss/android/downloadlib/a/a;

    if-nez v0, :cond_13

    .line 42
    const-class v1, Lcom/ss/android/downloadlib/a/a;

    monitor-enter v1

    .line 43
    :try_start_7
    sget-object v0, Lcom/ss/android/downloadlib/a/a;->a:Lcom/ss/android/downloadlib/a/a;

    if-nez v0, :cond_12

    .line 44
    new-instance v0, Lcom/ss/android/downloadlib/a/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/a;->a:Lcom/ss/android/downloadlib/a/a;

    .line 46
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 48
    :cond_13
    sget-object v0, Lcom/ss/android/downloadlib/a/a;->a:Lcom/ss/android/downloadlib/a/a;

    return-object v0

    .line 46
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Lcom/ss/android/a/a/c/b;
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/c/b;

    .line 84
    if-eqz v0, :cond_f

    .line 85
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_f
    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/a/a/b/c;)V
    .registers 15

    .prologue
    .line 123
    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 131
    :cond_c
    :goto_c
    return-void

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->c:Ljava/util/Map;

    if-nez v0, :cond_18

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a;->c:Ljava/util/Map;

    .line 129
    :cond_18
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->c:Ljava/util/Map;

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lcom/ss/android/downloadlib/a/b/a;

    const-wide/16 v2, 0x0

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->e()J

    move-result-wide v6

    .line 130
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->f()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->s()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/downloadlib/a/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public a(Lcom/ss/android/a/a/c/b;)V
    .registers 4

    .prologue
    .line 65
    if-nez p1, :cond_3

    .line 74
    :goto_2
    return-void

    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 69
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ss/android/a/a/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_17
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ss/android/a/a/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->c:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    :cond_a
    :goto_a
    return-void

    .line 141
    :cond_b
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 142
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/b/a;

    .line 143
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/a;->a()V

    .line 144
    invoke-static {}, Lcom/ss/android/downloadlib/a/a/a;->a()Lcom/ss/android/downloadlib/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/a/a/a;->a(Lcom/ss/android/downloadlib/a/b/a;)V

    .line 145
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)Z
    .registers 9
    .param p2    # Lcom/ss/android/downloadad/a/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 98
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/b;

    move-result-object v1

    .line 99
    if-nez v1, :cond_f

    .line 116
    :cond_e
    :goto_e
    return v0

    .line 102
    :cond_f
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v2

    const-string v4, "deeplink_url_app"

    invoke-virtual {v2, v4, p2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 104
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/d;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a/b/d;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    .line 112
    :pswitch_27
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v2, "deeplink_open_fail"

    invoke-virtual {v1, v2, p2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_e

    .line 108
    :pswitch_31
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "deeplink_open_success"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 109
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->c()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->s()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v2

    move-object v4, v3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/a/a/a/b;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    goto :goto_e

    .line 105
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_31
        :pswitch_27
        :pswitch_31
    .end packed-switch
.end method
