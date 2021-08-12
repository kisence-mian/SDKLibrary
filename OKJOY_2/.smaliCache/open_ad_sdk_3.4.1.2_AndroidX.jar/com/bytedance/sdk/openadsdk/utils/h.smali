.class public Lcom/bytedance/sdk/openadsdk/utils/h;
.super Ljava/lang/Object;
.source "CommonPermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/utils/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/bytedance/sdk/openadsdk/IListenerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 1

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/h;->b()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    return-void

    .line 42
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/h$1;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/h$1;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void

    .line 56
    :cond_1b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/h;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/h$a;

    move-result-object p0

    .line 57
    if-nez p0, :cond_22

    .line 58
    return-void

    .line 61
    :cond_22
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/utils/h$a;->a()V

    .line 62
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V
    .registers 3

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-nez p1, :cond_9

    goto :goto_1f

    .line 93
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/h$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/h$3;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/j/e;->b(Ljava/lang/Runnable;I)V

    goto :goto_1e

    .line 107
    :cond_19
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_1e
    return-void

    .line 91
    :cond_1f
    :goto_1f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    return-void

    .line 69
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/h$2;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/h$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void

    .line 82
    :cond_1b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/h;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/h$a;

    move-result-object p0

    .line 83
    if-nez p0, :cond_22

    .line 84
    return-void

    .line 86
    :cond_22
    invoke-interface {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/h$a;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V
    .registers 4

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    array-length v0, p1

    if-gtz v0, :cond_c

    goto :goto_13

    .line 33
    :cond_c
    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/h;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V

    .line 34
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    return-void

    .line 31
    :cond_13
    :goto_13
    return-void
.end method

.method private static b()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 2

    .line 120
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_17

    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 122
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 126
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/h$a;
    .registers 2

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/utils/h$a;

    return-object p0
.end method
