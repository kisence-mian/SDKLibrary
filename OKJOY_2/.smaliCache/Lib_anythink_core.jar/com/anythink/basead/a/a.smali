.class public final Lcom/anythink/basead/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = 0x1b

.field public static final B:I = 0x1c

.field public static final C:I = 0x1d

.field public static final D:I = 0x1e

.field public static final E:I = 0x1f

.field public static final F:I = 0x20

.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field public static final j:I = 0xa

.field public static final k:I = 0xb

.field public static final l:I = 0xc

.field public static final m:I = 0xd

.field public static final n:I = 0xe

.field public static final o:I = 0xf

.field public static final p:I = 0x10

.field public static final q:I = 0x11

.field public static final r:I = 0x12

.field public static final s:I = 0x13

.field public static final t:I = 0x14

.field public static final u:I = 0x15

.field public static final v:I = 0x16

.field public static final w:I = 0x17

.field public static final x:I = 0x18

.field public static final y:I = 0x19

.field public static final z:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V
    .registers 4

    .line 107
    new-instance v0, Lcom/anythink/basead/a/a$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/anythink/basead/a/a$2;-><init>(Lcom/anythink/core/common/d/h;ILcom/anythink/basead/c/h;)V

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-ne p0, p1, :cond_13

    .line 126
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 128
    :cond_13
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public static a(ILcom/anythink/core/common/d/j;)Z
    .registers 4

    .line 135
    nop

    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_24

    :pswitch_6
    goto :goto_22

    .line 150
    :pswitch_7
    instance-of p0, p1, Lcom/anythink/core/common/d/v;

    if-eqz p0, :cond_22

    .line 151
    check-cast p1, Lcom/anythink/core/common/d/v;

    .line 152
    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->t()I

    move-result p0

    if-ne p0, v1, :cond_22

    move v0, v1

    goto :goto_22

    .line 144
    :pswitch_15
    instance-of p0, p1, Lcom/anythink/core/common/d/v;

    if-eqz p0, :cond_22

    .line 145
    check-cast p1, Lcom/anythink/core/common/d/v;

    .line 146
    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->s()I

    move-result p0

    if-ne p0, v1, :cond_22

    move v0, v1

    .line 157
    :cond_22
    :goto_22
    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_6
        :pswitch_6
        :pswitch_15
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Lcom/anythink/basead/c/e;Ljava/lang/String;)Z
    .registers 14

    .line 76
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v2

    .line 77
    if-eqz p3, :cond_16

    iget-object v1, p3, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object p3, p3, Lcom/anythink/basead/c/e;->c:Ljava/lang/String;

    goto :goto_18

    :cond_16
    const-string p3, ""

    :goto_18
    move-object v7, p3

    .line 78
    if-eqz v2, :cond_29

    .line 79
    new-instance v8, Lcom/anythink/basead/a/a$1;

    invoke-direct {v8, p2, p0}, Lcom/anythink/basead/a/a$1;-><init>(Lcom/anythink/core/common/d/h;Landroid/content/Context;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Lcom/anythink/core/api/IExHandler;->handleOfferClick(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    .line 88
    const/4 p0, 0x1

    return p0

    .line 92
    :cond_29
    nop

    .line 94
    return v0

    .line 90
    :catchall_2b
    move-exception p0

    .line 91
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 173
    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_19

    .line 177
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    .line 178
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_17
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    .line 179
    const/4 p0, 0x1

    return p0

    .line 182
    :catchall_15
    move-exception p0

    .line 183
    return v0

    .line 180
    :catch_17
    move-exception p0

    .line 181
    return v0

    .line 174
    :cond_19
    :goto_19
    return v0
.end method

.method private static a(Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)Z
    .registers 5

    .line 161
    nop

    .line 162
    instance-of v0, p0, Lcom/anythink/core/common/d/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 163
    instance-of p0, p1, Lcom/anythink/core/common/d/v;

    if-eqz p0, :cond_22

    .line 164
    check-cast p1, Lcom/anythink/core/common/d/v;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->r()I

    move-result p0

    if-ne p0, v2, :cond_22

    move v1, v2

    goto :goto_22

    .line 166
    :cond_15
    instance-of p1, p0, Lcom/anythink/core/common/d/p;

    if-eqz p1, :cond_22

    .line 167
    check-cast p0, Lcom/anythink/core/common/d/p;

    invoke-virtual {p0}, Lcom/anythink/core/common/d/p;->y()I

    move-result p0

    if-ne p0, v2, :cond_22

    move v1, v2

    .line 169
    :cond_22
    :goto_22
    return v1
.end method
