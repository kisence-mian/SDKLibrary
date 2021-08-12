.class final Lcom/qq/e/comm/managers/plugin/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "e_qq_com_plugin"

    invoke-static {v0}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/managers/plugin/d;->a:Ljava/lang/String;

    const-string v0, "e_qq_com_dex"

    invoke-static {v0}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/managers/plugin/d;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    sget-object v0, Lcom/qq/e/comm/managers/plugin/d;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/d;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.jar"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static c(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/d;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.tmp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static d(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/d;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.next"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static e(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/d;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.jar.sig"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static f(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/d;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.tmp.sig"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static g(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/d;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.next.sig"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static h(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/d;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "update_lc"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    sget-object v0, Lcom/qq/e/comm/managers/plugin/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
