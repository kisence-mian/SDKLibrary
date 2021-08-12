.class public Lcom/kwad/sdk/core/report/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/report/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/report/b;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput p1, v0, Lcom/kwad/sdk/core/report/o$a;->g:I

    const/16 p1, 0x140

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    const/16 v1, 0x45

    iput v1, v0, Lcom/kwad/sdk/core/report/o$a;->d:I

    iput p1, v0, Lcom/kwad/sdk/core/report/o$a;->o:I

    iput p2, v0, Lcom/kwad/sdk/core/report/o$a;->p:I

    const/16 p1, 0x8d

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdReportManager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kwad/sdk/core/report/b$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kwad/sdk/core/report/b$5;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/core/report/n;->c()V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput p1, v0, Lcom/kwad/sdk/core/report/o$a;->b:I

    if-eqz p2, :cond_b

    iput-object p2, v0, Lcom/kwad/sdk/core/report/o$a;->e:Lcom/kwad/sdk/utils/o$a;

    :cond_b
    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;Lorg/json/JSONObject;)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput p1, v0, Lcom/kwad/sdk/core/report/o$a;->b:I

    iput-object p2, v0, Lcom/kwad/sdk/core/report/o$a;->e:Lcom/kwad/sdk/utils/o$a;

    const/4 p1, 0x2

    invoke-static {p0, p1, v0, p3}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput p1, v0, Lcom/kwad/sdk/core/report/o$a;->c:I

    const/4 p1, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput-object p3, v0, Lcom/kwad/sdk/core/report/o$a;->f:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/b$a;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/kwad/sdk/core/report/b$a;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/kwad/sdk/core/report/o$a;->k:Ljava/lang/String;

    :cond_11
    const/16 p1, 0x28

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/o$a;)V
    .registers 4

    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/utils/o$a;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput-object p1, v0, Lcom/kwad/sdk/core/report/o$a;->e:Lcom/kwad/sdk/utils/o$a;

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportAdPv "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdReportManager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/utils/o$a;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput-object p2, v0, Lcom/kwad/sdk/core/report/o$a;->e:Lcom/kwad/sdk/utils/o$a;

    iput-object p3, v0, Lcom/kwad/sdk/core/report/o$a;->f:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p0, p2, v0, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput-object p2, v0, Lcom/kwad/sdk/core/report/o$a;->f:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p0, p2, v0, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    iput v1, v0, Lcom/kwad/sdk/core/report/o$a;->h:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput p1, v0, Lcom/kwad/sdk/core/report/o$a;->g:I

    const/16 p1, 0x141

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput p1, v0, Lcom/kwad/sdk/core/report/o$a;->a:I

    const/16 p1, 0x192

    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/o$a;)V
    .registers 4

    const/16 v0, 0x33

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 3

    const/16 v0, 0x259

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/report/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v0, Lcom/kwad/sdk/core/report/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/report/b$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/report/b$1;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static c(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iput p1, v0, Lcom/kwad/sdk/core/report/o$a;->d:I

    const/16 p1, 0x8c

    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/o$a;)V
    .registers 4

    const/16 v0, 0x34

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    iput v1, v0, Lcom/kwad/sdk/core/report/o$a;->h:I

    const/16 v1, 0x21

    invoke-static {p0, v1, v0, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/core/report/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/report/b$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/report/b$3;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/o$a;)V
    .registers 4

    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    iput v1, v0, Lcom/kwad/sdk/core/report/o$a;->h:I

    const/16 v1, 0x22

    invoke-static {p0, v1, v0, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    return-void
.end method

.method static synthetic e(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/o$a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/report/b;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/o$a;)V

    return-void
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 4

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v0, Lcom/kwad/sdk/core/report/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/report/b$2;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/report/b$2;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    const/16 v0, 0x26

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    return-void
.end method

.method private static f(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/o$a;)V
    .registers 5

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p0

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->o(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/kwad/sdk/utils/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    iput-object v0, p1, Lcom/kwad/sdk/core/report/o$a;->n:Ljava/lang/String;

    iput-object v1, p1, Lcom/kwad/sdk/core/report/o$a;->m:Ljava/lang/String;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    :cond_27
    return-void
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    iput v1, v0, Lcom/kwad/sdk/core/report/o$a;->h:I

    const/16 v1, 0x23

    invoke-static {p0, v1, v0, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3

    const/16 v0, 0x25

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    sget-object v0, Lcom/kwad/sdk/core/report/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/report/b$4;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/report/b$4;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static g(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 3

    const/16 v0, 0x18f

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/report/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 3

    const/16 v0, 0x190

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/report/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static i(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 3

    const/16 v0, 0x1f5

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/report/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static j(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    const/16 v0, 0x143

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    return-void
.end method

.method public static j(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 3

    const/16 v0, 0x1c2

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/report/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static k(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    const/16 v0, 0x3a

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    return-void
.end method

.method public static k(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 3

    const/16 v0, 0x1c3

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/core/report/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static l(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3

    const/16 v0, 0x258

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static m(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->R(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/core/report/o$a;->q:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportDownloadCardClose downloadStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/kwad/sdk/core/report/o$a;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdReportManager"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2c9

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static n(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    const/16 v0, 0x2d2

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    return-void
.end method

.method public static o(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    const/16 v0, 0x2d1

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    return-void
.end method
