.class Lcom/kwad/sdk/api/loader/SecurityChecker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/loader/SecurityChecker$a;,
        Lcom/kwad/sdk/api/loader/SecurityChecker$State;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/kwad/sdk/api/loader/SecurityChecker$State;


# direct methods
.method static synthetic a()Lcom/kwad/sdk/api/loader/SecurityChecker$State;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/api/loader/SecurityChecker;->a:Lcom/kwad/sdk/api/loader/SecurityChecker$State;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/api/loader/SecurityChecker$State;)Lcom/kwad/sdk/api/loader/SecurityChecker$State;
    .registers 1

    sput-object p0, Lcom/kwad/sdk/api/loader/SecurityChecker;->a:Lcom/kwad/sdk/api/loader/SecurityChecker$State;

    return-object p0
.end method

.method static a(Ljava/io/File;Lcom/kwad/sdk/api/loader/a$a;Lcom/kwad/sdk/api/loader/SecurityChecker$a;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/api/loader/SecurityChecker$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/kwad/sdk/api/loader/SecurityChecker$1;-><init>(Lcom/kwad/sdk/api/loader/a$a;Ljava/io/File;Lcom/kwad/sdk/api/loader/SecurityChecker$a;)V

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/i;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Ljava/io/File;)Z
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/SecurityChecker;->b(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/SecurityChecker;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/io/File;)Z
    .registers 5

    sget-object v0, Lcom/kwad/sdk/api/loader/SecurityChecker$State;->DATA_VALID:Lcom/kwad/sdk/api/loader/SecurityChecker$State;

    sput-object v0, Lcom/kwad/sdk/api/loader/SecurityChecker;->a:Lcom/kwad/sdk/api/loader/SecurityChecker$State;

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/kwad/sdk/api/loader/SecurityChecker$State;->MD5:Lcom/kwad/sdk/api/loader/SecurityChecker$State;

    sput-object v0, Lcom/kwad/sdk/api/loader/SecurityChecker;->a:Lcom/kwad/sdk/api/loader/SecurityChecker$State;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/p;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
