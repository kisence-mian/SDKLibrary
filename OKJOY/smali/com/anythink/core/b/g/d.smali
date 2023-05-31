.class public final Lcom/anythink/core/b/g/d;
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

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 12
    sput-boolean v1, Lcom/anythink/core/b/g/d;->c:Z

    .line 13
    sput-boolean v1, Lcom/anythink/core/b/g/d;->d:Z

    .line 14
    sput-boolean v1, Lcom/anythink/core/b/g/d;->e:Z

    .line 15
    sput-boolean v1, Lcom/anythink/core/b/g/d;->f:Z

    .line 16
    sput-boolean v1, Lcom/anythink/core/b/g/d;->g:Z

    .line 17
    sput-boolean v0, Lcom/anythink/core/b/g/d;->a:Z

    .line 18
    sput-boolean v1, Lcom/anythink/core/b/g/d;->b:Z

    .line 19
    sput-boolean v0, Lcom/anythink/core/b/g/d;->h:Z

    .line 23
    sput-boolean v0, Lcom/anythink/core/b/g/d;->c:Z

    .line 24
    sput-boolean v0, Lcom/anythink/core/b/g/d;->d:Z

    .line 25
    sput-boolean v0, Lcom/anythink/core/b/g/d;->e:Z

    .line 26
    sput-boolean v0, Lcom/anythink/core/b/g/d;->f:Z

    .line 27
    sput-boolean v0, Lcom/anythink/core/b/g/d;->g:Z

    .line 28
    sput-boolean v0, Lcom/anythink/core/b/g/d;->a:Z

    .line 29
    sput-boolean v0, Lcom/anythink/core/b/g/d;->b:Z

    .line 30
    sput-boolean v0, Lcom/anythink/core/b/g/d;->h:Z

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 80
    sget-boolean v0, Lcom/anythink/core/b/g/d;->d:Z

    if-eqz v0, :cond_7

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_7
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 65
    sget-boolean v0, Lcom/anythink/core/b/g/d;->c:Z

    if-eqz v0, :cond_7

    .line 66
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_7
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 175
    sget-boolean v0, Lcom/anythink/core/b/g/d;->f:Z

    if-eqz v0, :cond_7

    .line 176
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :cond_7
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 112
    sget-boolean v0, Lcom/anythink/core/b/g/d;->e:Z

    if-eqz v0, :cond_7

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_7
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 97
    sget-boolean v0, Lcom/anythink/core/b/g/d;->d:Z

    if-eqz v0, :cond_7

    .line 98
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_7
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 190
    sget-boolean v0, Lcom/anythink/core/b/g/d;->g:Z

    if-eqz v0, :cond_7

    .line 191
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_7
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 129
    sget-boolean v0, Lcom/anythink/core/b/g/d;->e:Z

    if-eqz v0, :cond_7

    .line 130
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_7
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 48
    sget-boolean v0, Lcom/anythink/core/b/g/d;->c:Z

    if-eqz v0, :cond_7

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_7
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 161
    sget-boolean v0, Lcom/anythink/core/b/g/d;->f:Z

    if-eqz v0, :cond_7

    .line 162
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_7
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 144
    sget-boolean v0, Lcom/anythink/core/b/g/d;->f:Z

    if-eqz v0, :cond_7

    .line 145
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_7
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 207
    sget-boolean v0, Lcom/anythink/core/b/g/d;->g:Z

    if-eqz v0, :cond_7

    .line 208
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :cond_7
    sget-boolean v0, Lcom/anythink/core/b/g/d;->h:Z

    if-nez v0, :cond_b

    .line 214
    :cond_b
    return-void
.end method
