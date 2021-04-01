.class public Lcom/JoyFramework/module/point/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/module/point/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FloatWindowManager"

.field private static volatile b:Lcom/JoyFramework/module/point/a/a;


# instance fields
.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/JoyFramework/module/point/a/a;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/JoyFramework/module/point/a/a;->b:Lcom/JoyFramework/module/point/a/a;

    if-nez v0, :cond_13

    .line 41
    const-class v1, Lcom/JoyFramework/module/point/a/a;

    monitor-enter v1

    .line 42
    :try_start_7
    sget-object v0, Lcom/JoyFramework/module/point/a/a;->b:Lcom/JoyFramework/module/point/a/a;

    if-nez v0, :cond_12

    .line 43
    new-instance v0, Lcom/JoyFramework/module/point/a/a;

    invoke-direct {v0}, Lcom/JoyFramework/module/point/a/a;-><init>()V

    sput-object v0, Lcom/JoyFramework/module/point/a/a;->b:Lcom/JoyFramework/module/point/a/a;

    .line 45
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 47
    :cond_13
    sget-object v0, Lcom/JoyFramework/module/point/a/a;->b:Lcom/JoyFramework/module/point/a/a;

    return-object v0

    .line 45
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/JoyFramework/module/point/a/a$a;)V
    .registers 4

    .prologue
    .line 228
    const-string v0, "\u60a8\u7684\u624b\u673a\u6ca1\u6709\u6388\u4e88\u60ac\u6d6e\u7a97\u6743\u9650\uff0c\u8bf7\u5f00\u542f\u540e\u518d\u8bd5"

    invoke-direct {p0, p1, v0, p2}, Lcom/JoyFramework/module/point/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/JoyFramework/module/point/a/a$a;)V

    .line 229
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/JoyFramework/module/point/a/a$a;)V
    .registers 7

    .prologue
    .line 232
    iget-object v0, p0, Lcom/JoyFramework/module/point/a/a;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/JoyFramework/module/point/a/a;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 233
    iget-object v0, p0, Lcom/JoyFramework/module/point/a/a;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 236
    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u73b0\u5728\u53bb\u5f00\u542f"

    new-instance v2, Lcom/JoyFramework/module/point/a/h;

    invoke-direct {v2, p0, p3}, Lcom/JoyFramework/module/point/a/h;-><init>(Lcom/JoyFramework/module/point/a/a;Lcom/JoyFramework/module/point/a/a$a;)V

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6682\u4e0d\u5f00\u542f"

    new-instance v2, Lcom/JoyFramework/module/point/a/g;

    invoke-direct {v2, p0, p3}, Lcom/JoyFramework/module/point/a/g;-><init>(Lcom/JoyFramework/module/point/a/a;Lcom/JoyFramework/module/point/a/a$a;)V

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/point/a/a;->c:Landroid/app/Dialog;

    .line 254
    if-eqz p1, :cond_54

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_54

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_54

    .line 255
    iget-object v0, p0, Lcom/JoyFramework/module/point/a/a;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 256
    :cond_54
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_32

    .line 68
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    .line 78
    :goto_10
    return v0

    .line 70
    :cond_11
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 71
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->f(Landroid/content/Context;)Z

    move-result v0

    goto :goto_10

    .line 72
    :cond_1c
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 73
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->d(Landroid/content/Context;)Z

    move-result v0

    goto :goto_10

    .line 74
    :cond_27
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 75
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->g(Landroid/content/Context;)Z

    move-result v0

    goto :goto_10

    .line 78
    :cond_32
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->h(Landroid/content/Context;)Z

    move-result v0

    goto :goto_10
.end method

.method private d(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 82
    invoke-static {p1}, Lcom/JoyFramework/module/point/a/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private e(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 86
    invoke-static {p1}, Lcom/JoyFramework/module/point/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private f(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 90
    invoke-static {p1}, Lcom/JoyFramework/module/point/a/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private g(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 94
    invoke-static {p1}, Lcom/JoyFramework/module/point/a/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private h(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 100
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->f(Landroid/content/Context;)Z

    move-result v0

    .line 112
    :goto_b
    return v0

    .line 102
    :cond_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_42

    .line 105
    :try_start_16
    const-class v0, Landroid/provider/Settings;

    .line 106
    const-string v2, "canDrawOverlays"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 107
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_38

    .line 112
    :goto_33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b

    .line 108
    :catch_38
    move-exception v0

    .line 109
    const-string v2, "FloatWindowManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    move-object v0, v1

    goto :goto_33
.end method

.method private i(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_f

    .line 118
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 119
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->m(Landroid/content/Context;)V

    .line 128
    :cond_f
    :goto_f
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->n(Landroid/content/Context;)V

    .line 129
    return-void

    .line 120
    :cond_13
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 121
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->l(Landroid/content/Context;)V

    goto :goto_f

    .line 122
    :cond_1d
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 123
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->k(Landroid/content/Context;)V

    goto :goto_f

    .line 124
    :cond_27
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 125
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->j(Landroid/content/Context;)V

    goto :goto_f
.end method

.method private j(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 132
    new-instance v0, Lcom/JoyFramework/module/point/a/b;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/module/point/a/b;-><init>(Lcom/JoyFramework/module/point/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/module/point/a/a;->a(Landroid/content/Context;Lcom/JoyFramework/module/point/a/a$a;)V

    .line 142
    return-void
.end method

.method private k(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 145
    new-instance v0, Lcom/JoyFramework/module/point/a/c;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/module/point/a/c;-><init>(Lcom/JoyFramework/module/point/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/module/point/a/a;->a(Landroid/content/Context;Lcom/JoyFramework/module/point/a/a$a;)V

    .line 155
    return-void
.end method

.method private l(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 158
    new-instance v0, Lcom/JoyFramework/module/point/a/d;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/module/point/a/d;-><init>(Lcom/JoyFramework/module/point/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/module/point/a/a;->a(Landroid/content/Context;Lcom/JoyFramework/module/point/a/a$a;)V

    .line 176
    return-void
.end method

.method private m(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 179
    new-instance v0, Lcom/JoyFramework/module/point/a/e;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/module/point/a/e;-><init>(Lcom/JoyFramework/module/point/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/module/point/a/a;->a(Landroid/content/Context;Lcom/JoyFramework/module/point/a/a$a;)V

    .line 189
    return-void
.end method

.method private n(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 196
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 197
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->l(Landroid/content/Context;)V

    .line 225
    :cond_9
    :goto_9
    return-void

    .line 199
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 201
    new-instance v0, Lcom/JoyFramework/module/point/a/f;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/module/point/a/f;-><init>(Lcom/JoyFramework/module/point/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/module/point/a/a;->a(Landroid/content/Context;Lcom/JoyFramework/module/point/a/a$a;)V

    goto :goto_9
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 52
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->i(Landroid/content/Context;)V

    .line 54
    :cond_9
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 57
    if-eqz p1, :cond_11

    .line 58
    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->d()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/JoyFramework/module/point/a/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59
    :cond_e
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/a/a;->c(Landroid/content/Context;)Z

    .line 63
    :cond_11
    return-void
.end method
