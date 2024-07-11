.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;
.super Ljava/lang/Object;
.source "LibNetwork.java"

# interfaces
.implements Lcom/ss/android/a/a/a/g;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;->a:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/m;Lcom/ss/android/a/a/a/p;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/android/a/a/a/p;",
            ")V"
        }
    .end annotation

    .line 92
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 93
    if-eqz p2, :cond_49

    .line 94
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/ss/android/a/a/a/p;->a(Ljava/lang/String;)V

    goto :goto_49

    .line 97
    :cond_12
    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v1, :cond_1b

    move v1, v0

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 98
    :goto_1c
    if-eqz v1, :cond_25

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 99
    xor-int/2addr v0, v1

    if-eqz p2, :cond_49

    .line 100
    if-eqz v0, :cond_36

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_36
    if-eqz p1, :cond_3f

    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_3f
    const-string p1, ""

    .line 101
    :goto_41
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/ss/android/a/a/a/p;->a(Ljava/lang/Throwable;)V

    .line 104
    :cond_49
    :goto_49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/a/a/a/p;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ss/android/a/a/a/p;",
            ")V"
        }
    .end annotation

    .line 34
    nop

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_52

    :cond_a
    goto :goto_1f

    :sswitch_b
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v1

    goto :goto_20

    :sswitch_15
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_20

    :goto_1f
    const/4 p1, -0x1

    :goto_20
    packed-switch p1, :pswitch_data_5c

    move v5, v2

    goto :goto_2a

    .line 40
    :pswitch_25
    nop

    .line 41
    move v5, v1

    goto :goto_2a

    .line 37
    :pswitch_28
    nop

    .line 38
    move v5, v2

    .line 45
    :goto_2a
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;Ljava/util/Map;)V

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 57
    const/4 p2, 0x0

    .line 60
    :try_start_48
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p2
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4d

    .line 62
    goto :goto_4e

    .line 61
    :catchall_4d
    move-exception p1

    .line 63
    :goto_4e
    invoke-direct {p0, p2, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;->a(Lcom/bytedance/sdk/adnet/core/m;Lcom/ss/android/a/a/a/p;)V

    .line 64
    return-void

    :sswitch_data_52
    .sparse-switch
        0x11336 -> :sswitch_15
        0x2590a0 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;ILcom/ss/android/a/a/a/p;)V
    .registers 14

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object p4

    .line 71
    new-instance v7, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$2;

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;[BLjava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$2;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 83
    nop

    .line 85
    :try_start_20
    invoke-virtual {p4}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_25

    .line 87
    goto :goto_27

    .line 86
    :catchall_25
    move-exception p1

    const/4 p1, 0x0

    .line 88
    :goto_27
    invoke-direct {p0, p1, p5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;->a(Lcom/bytedance/sdk/adnet/core/m;Lcom/ss/android/a/a/a/p;)V

    .line 89
    return-void
.end method
