.class public Lcom/bytedance/sdk/openadsdk/utils/g;
.super Ljava/lang/Object;
.source "CommonDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/utils/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/bytedance/sdk/openadsdk/IListenerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 1

    .prologue
    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/g;->b()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    :cond_6
    :goto_6
    return-void

    .line 118
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/g$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/g$2;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;I)V

    goto :goto_6

    .line 131
    :cond_1b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/g;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/g$a;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_6

    .line 136
    packed-switch p1, :pswitch_data_34

    .line 147
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->c()V

    goto :goto_6

    .line 138
    :pswitch_28
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->a()V

    goto :goto_6

    .line 141
    :pswitch_2c
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->b()V

    goto :goto_6

    .line 144
    :pswitch_30
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->c()V

    goto :goto_6

    .line 136
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2c
        :pswitch_30
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
    .registers 5

    .prologue
    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    .line 102
    :cond_8
    :goto_8
    return-void

    .line 89
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/g$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/g$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;I)V

    goto :goto_8

    .line 100
    :cond_1d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
    .registers 5

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p3, :cond_9

    .line 48
    :cond_8
    :goto_8
    return-void

    .line 45
    :cond_9
    invoke-static {p0, p3}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 47
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
    .registers 7

    .prologue
    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p5, :cond_9

    .line 70
    :cond_8
    :goto_8
    return-void

    .line 67
    :cond_9
    invoke-static {p0, p5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 69
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private static b()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 2

    .prologue
    .line 154
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_17

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 156
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 160
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/g$a;
    .registers 2

    .prologue
    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 106
    const/4 v0, 0x0

    .line 109
    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/utils/g$a;

    goto :goto_7
.end method
