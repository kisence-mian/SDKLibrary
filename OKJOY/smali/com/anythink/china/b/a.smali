.class public final Lcom/anythink/china/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/b/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lcom/anythink/china/b/a;->a:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/anythink/china/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 24
    sget-object v0, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v1, "oaid"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/b/g/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 26
    invoke-static {p0}, Lcom/anythink/china/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 28
    new-instance v0, Lcom/anythink/china/a/a;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/a;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v1, Lcom/anythink/china/b/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/china/b/a$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/china/a/a;->a(Lcom/anythink/china/a/b;)V

    .line 1085
    :cond_2a
    :goto_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_40

    .line 1086
    invoke-static {p0}, Lcom/anythink/china/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_34
    sput-object v0, Lcom/anythink/china/b/a;->a:Ljava/lang/String;

    .line 52
    invoke-static {p0}, Lcom/anythink/china/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    .line 54
    return-void

    .line 48
    :cond_3d
    sput-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    goto :goto_2a

    .line 1088
    :cond_40
    invoke-static {}, Lcom/anythink/china/b/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 2057
    const-string v0, "^[0-]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 16
    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2037
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 65
    :goto_11
    if-eqz v0, :cond_19

    .line 66
    invoke-static {p0}, Lcom/anythink/china/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    .line 68
    :cond_19
    sget-object v0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    return-object v0

    .line 2037
    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sput-object p0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    sget-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 77
    sget-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    .line 83
    :goto_a
    return-object v0

    .line 80
    :cond_b
    :try_start_b
    new-instance v0, Lcom/anythink/china/b/a$a;

    invoke-direct {v0, p0}, Lcom/anythink/china/b/a$a;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/anythink/china/b/a$a;->b:Ljava/lang/String;

    .line 81
    sput-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_a

    .line 83
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_a
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 57
    const-string v0, "^[0-]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
