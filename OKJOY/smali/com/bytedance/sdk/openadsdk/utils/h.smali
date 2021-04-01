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
            "Ljava/util/Map",
            "<",
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

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 1

    .prologue
    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/h;->b()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    :cond_6
    :goto_6
    return-void

    .line 40
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/h$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/h$1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;I)V

    goto :goto_6

    .line 54
    :cond_1b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/h;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/h$a;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_6

    .line 59
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/h$a;->a()V

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V
    .registers 5

    .prologue
    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    .line 107
    :cond_8
    :goto_8
    return-void

    .line 91
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 92
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/h$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/h$3;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;I)V

    goto :goto_8

    .line 105
    :cond_1d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    :cond_6
    :goto_6
    return-void

    .line 67
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/h$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/h$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;I)V

    goto :goto_6

    .line 80
    :cond_1b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/h;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/h$a;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_6

    .line 84
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/h$a;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V
    .registers 4

    .prologue
    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p1, :cond_b

    array-length v0, p1

    if-gtz v0, :cond_c

    .line 33
    :cond_b
    :goto_b
    return-void

    .line 31
    :cond_c
    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/h;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V

    .line 32
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static b()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 2

    .prologue
    .line 118
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_17

    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 120
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 124
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/h$a;
    .registers 2

    .prologue
    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    const/4 v0, 0x0

    .line 114
    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/h;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/utils/h$a;

    goto :goto_7
.end method
