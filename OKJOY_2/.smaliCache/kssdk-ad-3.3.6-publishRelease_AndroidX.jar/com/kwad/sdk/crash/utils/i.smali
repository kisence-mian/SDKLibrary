.class public Lcom/kwad/sdk/crash/utils/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/String;

.field private static e:Ljava/text/SimpleDateFormat;

.field private static f:[C

.field private static g:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kwad/sdk/crash/utils/i;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kwad/sdk/crash/utils/i;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/crash/utils/i;->c:Ljava/util/List;

    sput-object v0, Lcom/kwad/sdk/crash/utils/i;->d:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/crash/utils/i;->e:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x1d

    new-array v1, v0, [C

    sput-object v1, Lcom/kwad/sdk/crash/utils/i;->f:[C

    new-array v0, v0, [C

    sput-object v0, Lcom/kwad/sdk/crash/utils/i;->g:[C

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_9

    const-string p0, "unknown"

    return-object p0

    :cond_9
    sget-object v0, Lcom/kwad/sdk/crash/utils/i;->e:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
