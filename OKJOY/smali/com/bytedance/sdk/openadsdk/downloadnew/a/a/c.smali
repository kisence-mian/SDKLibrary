.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;
.super Ljava/lang/Object;
.source "LibNetwork.java"

# interfaces
.implements Lcom/ss/android/a/a/a/f;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;->a:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/a/a/a/m;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ss/android/a/a/a/m;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 34
    .line 35
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_96

    :cond_b
    :goto_b
    packed-switch v0, :pswitch_data_a0

    move v2, v6

    .line 45
    :goto_f
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v4

    .line 46
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;Ljava/util/Map;)V

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 60
    :try_start_2a
    invoke-virtual {v4}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/n;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_59

    move-result-object v0

    move-object v1, v0

    .line 64
    :goto_2f
    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/n;->a()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 65
    if-eqz p4, :cond_40

    .line 66
    iget-object v0, v1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4, v0}, Lcom/ss/android/a/a/a/m;->a(Ljava/lang/String;)V

    .line 76
    :cond_40
    :goto_40
    return-void

    .line 35
    :sswitch_41
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v6

    goto :goto_b

    :sswitch_4b
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v7

    goto :goto_b

    :pswitch_55
    move v2, v6

    .line 38
    goto :goto_f

    :pswitch_57
    move v2, v7

    .line 41
    goto :goto_f

    .line 61
    :catch_59
    move-exception v0

    move-object v1, v8

    goto :goto_2f

    .line 69
    :cond_5c
    if-eqz v1, :cond_84

    iget-object v0, v1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v0, :cond_84

    move v0, v7

    .line 70
    :goto_63
    if-eqz v0, :cond_86

    iget-object v0, v1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_6b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 71
    :goto_71
    if-eqz p4, :cond_40

    .line 72
    if-eqz v7, :cond_8a

    iget-object v0, v1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_7b
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v1}, Lcom/ss/android/a/a/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_40

    :cond_84
    move v0, v6

    .line 69
    goto :goto_63

    :cond_86
    move-object v0, v8

    .line 70
    goto :goto_6b

    :cond_88
    move v7, v6

    goto :goto_71

    .line 72
    :cond_8a
    if-eqz v1, :cond_93

    iget-wide v0, v1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_7b

    :cond_93
    const-string v0, ""

    goto :goto_7b

    .line 35
    :sswitch_data_96
    .sparse-switch
        0x11336 -> :sswitch_41
        0x2590a0 -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_55
        :pswitch_57
    .end packed-switch
.end method
