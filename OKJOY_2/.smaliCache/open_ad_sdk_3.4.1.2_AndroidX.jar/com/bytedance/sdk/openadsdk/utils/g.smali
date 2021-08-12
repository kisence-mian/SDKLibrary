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
            "Ljava/util/Map<",
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

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 1

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/g;->b()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 90
    if-eqz p0, :cond_2b

    if-eqz p1, :cond_2b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2b

    .line 93
    :cond_b
    nop

    .line 94
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/f;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 97
    :goto_1e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/utils/g$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3, v1, v4, v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;Ljava/lang/String;Z)V

    .line 112
    return-void

    .line 91
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .line 86
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .registers 3

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 191
    return-void

    .line 194
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 195
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/g$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/g$3;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/j/e;->b(Ljava/lang/Runnable;I)V

    .line 204
    return-void

    .line 207
    :cond_17
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/g;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/g$a;

    move-result-object p0

    .line 208
    if-nez p0, :cond_1e

    .line 209
    return-void

    .line 212
    :cond_1e
    packed-switch p1, :pswitch_data_32

    .line 223
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->c()V

    goto :goto_31

    .line 220
    :pswitch_25
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->c()V

    .line 221
    goto :goto_31

    .line 217
    :pswitch_29
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->b()V

    .line 218
    goto :goto_31

    .line 214
    :pswitch_2d
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->a()V

    .line 215
    nop

    .line 227
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_29
        :pswitch_25
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
    .registers 3

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-nez p1, :cond_9

    goto :goto_1f

    .line 165
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 166
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/g$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/g$2;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/j/e;->b(Ljava/lang/Runnable;I)V

    goto :goto_1e

    .line 176
    :cond_19
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_1e
    return-void

    .line 162
    :cond_1f
    :goto_1f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_9

    goto :goto_10

    .line 63
    :cond_9
    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 64
    invoke-static {p0, p1, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    return-void

    .line 61
    :cond_10
    :goto_10
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;Ljava/lang/String;Z)V
    .registers 6

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_9

    goto :goto_10

    .line 81
    :cond_9
    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 82
    invoke-static {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    return-void

    .line 79
    :cond_10
    :goto_10
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
    .registers 5

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p3, :cond_9

    goto :goto_10

    .line 53
    :cond_9
    invoke-static {p0, p3}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 50
    :cond_10
    :goto_10
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
    .registers 7

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p5, :cond_9

    goto :goto_10

    .line 143
    :cond_9
    invoke-static {p0, p5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 145
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 140
    :cond_10
    :goto_10
    return-void
.end method

.method private static b()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 2

    .line 230
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_17

    .line 231
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 232
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 236
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object v0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 115
    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1f

    .line 116
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    goto :goto_1f

    .line 119
    :cond_c
    invoke-static {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p0

    .line 120
    instance-of p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    if-eqz p1, :cond_1b

    .line 121
    move-object p1, p0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g(Z)V

    .line 123
    :cond_1b
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->g()V

    .line 124
    return-void

    .line 117
    :cond_1f
    :goto_1f
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .line 149
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    .line 153
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    .line 157
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/g$a;
    .registers 2

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 182
    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/utils/g$a;

    return-object p0
.end method
