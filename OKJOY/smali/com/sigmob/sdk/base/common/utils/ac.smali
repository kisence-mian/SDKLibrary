.class public Lcom/sigmob/sdk/base/common/utils/ac;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/sigmob/sdk/base/common/utils/ae;

.field private static final b:Lcom/sigmob/sdk/base/common/utils/af;


# instance fields
.field private final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sigmob/sdk/base/common/utils/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/sigmob/sdk/base/common/utils/ae;

.field private final e:Lcom/sigmob/sdk/base/common/utils/af;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ac$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/utils/ac$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ac;->a:Lcom/sigmob/sdk/base/common/utils/ae;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ac$2;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/utils/ac$2;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ac;->b:Lcom/sigmob/sdk/base/common/utils/af;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/utils/ae;Lcom/sigmob/sdk/base/common/utils/af;ZLjava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sigmob/sdk/base/common/utils/ab;",
            ">;",
            "Lcom/sigmob/sdk/base/common/utils/ae;",
            "Lcom/sigmob/sdk/base/common/utils/af;",
            "Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ac;->c:Ljava/util/EnumSet;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/utils/ac;->d:Lcom/sigmob/sdk/base/common/utils/ae;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/utils/ac;->e:Lcom/sigmob/sdk/base/common/utils/af;

    iput-boolean p4, p0, Lcom/sigmob/sdk/base/common/utils/ac;->g:Z

    iput-object p5, p0, Lcom/sigmob/sdk/base/common/utils/ac;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/ac;->h:Z

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/ac;->i:Z

    iput-boolean p6, p0, Lcom/sigmob/sdk/base/common/utils/ac;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/utils/ae;Lcom/sigmob/sdk/base/common/utils/af;ZLjava/lang/String;ZLcom/sigmob/sdk/base/common/utils/ac$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/sigmob/sdk/base/common/utils/ac;-><init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/utils/ae;Lcom/sigmob/sdk/base/common/utils/af;ZLjava/lang/String;Z)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Attempted to handle empty url."

    invoke-direct {p0, p2, v1, v0, v1}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    return-void

    :cond_10
    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ac$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/utils/ac$3;-><init>(Lcom/sigmob/sdk/base/common/utils/ac;Landroid/content/Context;ZLjava/lang/Iterable;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/ac;->j:Z

    if-eqz v1, :cond_25

    invoke-interface {v0, p2}, Lcom/sigmob/sdk/base/common/utils/ah;->a(Ljava/lang/String;)V

    :goto_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/utils/ac;->i:Z

    goto :goto_f

    :cond_25
    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/common/utils/ag;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ah;)V

    goto :goto_21
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ac;Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    invoke-static {p3}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    if-nez p2, :cond_7

    sget-object p2, Lcom/sigmob/sdk/base/common/utils/ab;->f:Lcom/sigmob/sdk/base/common/utils/ab;

    :cond_7
    invoke-static {p3, p4}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ac;->d:Lcom/sigmob/sdk/base/common/utils/ae;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/utils/ae;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ac;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ac;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/utils/ac;->i:Z

    return p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Attempted to handle empty url."

    invoke-direct {p0, p2, v1, v0, v1}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    :goto_f
    return v0

    :cond_10
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->f:Lcom/sigmob/sdk/base/common/utils/ab;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ac;->c:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v0

    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/utils/ab;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/common/utils/ab;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7f

    :try_start_2f
    iget-object v5, p0, Lcom/sigmob/sdk/base/common/utils/ac;->f:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/utils/ab;->a(Lcom/sigmob/sdk/base/common/utils/ac;Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/ac;->h:Z

    if-nez v1, :cond_53

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/ac;->i:Z

    if-nez v1, :cond_53

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ab;->a:Lcom/sigmob/sdk/base/common/utils/ab;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/utils/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ac;->d:Lcom/sigmob/sdk/base/common/utils/ae;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/base/common/utils/ae;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/ac;->h:Z
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_53} :catch_55

    :cond_53
    move v0, v7

    goto :goto_f

    :catch_55
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5d
    move-object v1, v0

    goto :goto_1d

    :cond_5f
    :try_start_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link ignored. Unable to handle url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_76} :catch_78

    :goto_76
    move v0, v6

    goto :goto_f

    :catch_78
    move-exception v0

    const-string v1, "handleResolvedUrl eroor"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_76

    :cond_7f
    move-object v0, v1

    goto :goto_5d
.end method

.method static synthetic c()Lcom/sigmob/sdk/base/common/utils/ae;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ac;->a:Lcom/sigmob/sdk/base/common/utils/ae;

    return-object v0
.end method

.method static synthetic d()Lcom/sigmob/sdk/base/common/utils/af;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ac;->b:Lcom/sigmob/sdk/base/common/utils/af;

    return-object v0
.end method


# virtual methods
.method a()Lcom/sigmob/sdk/base/common/utils/af;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ac;->e:Lcom/sigmob/sdk/base/common/utils/af;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/utils/ac;->g:Z

    return v0
.end method
