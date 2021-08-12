.class public final Lcom/anythink/china/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/anythink/china/b/a;->a:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 66
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 67
    const-string v0, ""

    return-object v0

    .line 69
    :cond_f
    sget-object v0, Lcom/anythink/china/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 31
    sget-object v0, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v1, "oaid"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    nop

    .line 33
    sput-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 34
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 35
    sget-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 36
    new-instance v0, Lcom/anythink/china/b/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/b/a$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/anythink/china/a/b;->a(Landroid/content/Context;Lcom/anythink/china/a/a;)V

    .line 56
    :cond_2d
    nop

    .line 1094
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1095
    goto :goto_4d

    .line 1099
    :cond_3b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_47

    .line 1100
    invoke-static {p0}, Lcom/anythink/china/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_4c

    .line 1102
    :cond_47
    invoke-static {}, Lcom/anythink/china/b/c;->a()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1105
    :goto_4c
    nop

    .line 56
    :goto_4d
    sput-object v2, Lcom/anythink/china/b/a;->a:Ljava/lang/String;

    .line 57
    invoke-static {p0}, Lcom/anythink/china/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 2

    .line 2062
    const-string v0, "^[0-]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 23
    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 83
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "oaid"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    const-string v0, ""

    return-object v0

    .line 86
    :cond_f
    sget-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 73
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "imei"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 74
    const-string p0, ""

    return-object p0

    .line 76
    :cond_f
    sget-object v0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2046
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 76
    :goto_22
    if-eqz v0, :cond_2a

    .line 77
    invoke-static {p0}, Lcom/anythink/china/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    .line 79
    :cond_2a
    sget-object p0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 23
    sput-object p0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    .line 62
    const-string v0, "^[0-]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
