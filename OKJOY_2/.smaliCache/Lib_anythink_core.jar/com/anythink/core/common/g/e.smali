.class public final Lcom/anythink/core/common/g/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anythink/core/common/g/e;->c:Z

    .line 20
    sput-boolean v0, Lcom/anythink/core/common/g/e;->d:Z

    .line 21
    sput-boolean v0, Lcom/anythink/core/common/g/e;->e:Z

    .line 22
    sput-boolean v0, Lcom/anythink/core/common/g/e;->f:Z

    .line 23
    sput-boolean v0, Lcom/anythink/core/common/g/e;->g:Z

    .line 24
    const/4 v1, 0x0

    sput-boolean v1, Lcom/anythink/core/common/g/e;->a:Z

    .line 25
    sput-boolean v0, Lcom/anythink/core/common/g/e;->b:Z

    .line 26
    sput-boolean v1, Lcom/anythink/core/common/g/e;->h:Z

    .line 30
    sput-boolean v1, Lcom/anythink/core/common/g/e;->c:Z

    .line 31
    sput-boolean v1, Lcom/anythink/core/common/g/e;->d:Z

    .line 32
    sput-boolean v1, Lcom/anythink/core/common/g/e;->e:Z

    .line 33
    sput-boolean v1, Lcom/anythink/core/common/g/e;->f:Z

    .line 34
    sput-boolean v1, Lcom/anythink/core/common/g/e;->g:Z

    .line 35
    sput-boolean v1, Lcom/anythink/core/common/g/e;->a:Z

    .line 36
    sput-boolean v1, Lcom/anythink/core/common/g/e;->b:Z

    .line 37
    sput-boolean v1, Lcom/anythink/core/common/g/e;->h:Z

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 87
    sget-boolean v0, Lcom/anythink/core/common/g/e;->d:Z

    if-eqz v0, :cond_7

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_7
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 72
    sget-boolean v0, Lcom/anythink/core/common/g/e;->c:Z

    if-eqz v0, :cond_7

    .line 73
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_7
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 182
    sget-boolean v0, Lcom/anythink/core/common/g/e;->f:Z

    if-eqz v0, :cond_7

    .line 183
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    :cond_7
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    sget-boolean v0, Lcom/anythink/core/common/g/e;->e:Z

    if-eqz v0, :cond_7

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_7
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 104
    sget-boolean v0, Lcom/anythink/core/common/g/e;->d:Z

    if-eqz v0, :cond_7

    .line 105
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :cond_7
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 151
    sget-boolean v0, Lcom/anythink/core/common/g/e;->f:Z

    if-eqz v0, :cond_7

    .line 152
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_7
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 136
    sget-boolean v0, Lcom/anythink/core/common/g/e;->e:Z

    if-eqz v0, :cond_7

    .line 137
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :cond_7
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 197
    sget-boolean v0, Lcom/anythink/core/common/g/e;->g:Z

    if-eqz v0, :cond_7

    .line 198
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_7
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 168
    sget-boolean v0, Lcom/anythink/core/common/g/e;->f:Z

    if-eqz v0, :cond_7

    .line 169
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_7
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 55
    sget-boolean v0, Lcom/anythink/core/common/g/e;->c:Z

    if-eqz v0, :cond_7

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_7
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 214
    sget-boolean v0, Lcom/anythink/core/common/g/e;->g:Z

    if-eqz v0, :cond_7

    .line 215
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_7
    nop

    .line 219
    return-void
.end method
