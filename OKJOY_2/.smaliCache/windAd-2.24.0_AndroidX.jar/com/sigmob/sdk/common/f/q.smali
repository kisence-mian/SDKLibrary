.class public Lcom/sigmob/sdk/common/f/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/f/q$a;,
        Lcom/sigmob/sdk/common/f/q$c;,
        Lcom/sigmob/sdk/common/f/q$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/sigmob/sdk/common/f/q$b;

.field private static final b:Lcom/sigmob/sdk/common/f/q$c;


# instance fields
.field private final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sigmob/sdk/common/f/p;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/sigmob/sdk/common/f/q$b;

.field private final e:Lcom/sigmob/sdk/common/f/q$c;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/f/q$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/f/q$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/f/q;->a:Lcom/sigmob/sdk/common/f/q$b;

    new-instance v0, Lcom/sigmob/sdk/common/f/q$2;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/f/q$2;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/f/q;->b:Lcom/sigmob/sdk/common/f/q$c;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/common/f/q$b;Lcom/sigmob/sdk/common/f/q$c;ZLjava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sigmob/sdk/common/f/p;",
            ">;",
            "Lcom/sigmob/sdk/common/f/q$b;",
            "Lcom/sigmob/sdk/common/f/q$c;",
            "Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/q;->c:Ljava/util/EnumSet;

    iput-object p2, p0, Lcom/sigmob/sdk/common/f/q;->d:Lcom/sigmob/sdk/common/f/q$b;

    iput-object p3, p0, Lcom/sigmob/sdk/common/f/q;->e:Lcom/sigmob/sdk/common/f/q$c;

    iput-boolean p4, p0, Lcom/sigmob/sdk/common/f/q;->g:Z

    iput-object p5, p0, Lcom/sigmob/sdk/common/f/q;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/common/f/q;->h:Z

    iput-boolean p1, p0, Lcom/sigmob/sdk/common/f/q;->i:Z

    iput-boolean p6, p0, Lcom/sigmob/sdk/common/f/q;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/common/f/q$b;Lcom/sigmob/sdk/common/f/q$c;ZLjava/lang/String;ZLcom/sigmob/sdk/common/f/q$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/sigmob/sdk/common/f/q;-><init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/common/f/q$b;Lcom/sigmob/sdk/common/f/q$c;ZLjava/lang/String;Z)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/common/f/q;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    const-string p3, "Attempted to handle empty url."

    invoke-direct {p0, p2, p1, p3, p1}, Lcom/sigmob/sdk/common/f/q;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_10
    new-instance v6, Lcom/sigmob/sdk/common/f/q$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/common/f/q$3;-><init>(Lcom/sigmob/sdk/common/f/q;Landroid/content/Context;ZLjava/lang/Iterable;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/common/f/q;->j:Z

    if-eqz p1, :cond_23

    invoke-interface {v6, p2}, Lcom/sigmob/sdk/common/f/r$a;->a(Ljava/lang/String;)V

    goto :goto_26

    :cond_23
    invoke-static {p2, v6}, Lcom/sigmob/sdk/common/f/r;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/r$a;)V

    :goto_26
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/common/f/q;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/common/f/q;Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/common/f/q;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p3}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    if-nez p2, :cond_7

    sget-object p2, Lcom/sigmob/sdk/common/f/p;->f:Lcom/sigmob/sdk/common/f/p;

    :cond_7
    invoke-static {p3, p4}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p3, p0, Lcom/sigmob/sdk/common/f/q;->d:Lcom/sigmob/sdk/common/f/q$b;

    invoke-interface {p3, p1, p2}, Lcom/sigmob/sdk/common/f/q$b;->b(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/common/f/q;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/common/f/q;->b(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sigmob/sdk/common/f/q;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/common/f/q;->i:Z

    return p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_e

    const-string p1, "Attempted to handle empty url."

    invoke-direct {p0, p2, v1, p1, v1}, Lcom/sigmob/sdk/common/f/q;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_e
    sget-object p4, Lcom/sigmob/sdk/common/f/p;->f:Lcom/sigmob/sdk/common/f/p;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v2, p0, Lcom/sigmob/sdk/common/f/q;->c:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1a
    :goto_1a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/sigmob/sdk/common/f/p;

    invoke-virtual {v10, v8}, Lcom/sigmob/sdk/common/f/p;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :try_start_2d
    iget-object v7, p0, Lcom/sigmob/sdk/common/f/q;->f:Ljava/lang/String;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, v8

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sigmob/sdk/common/f/p;->a(Lcom/sigmob/sdk/common/f/q;Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V

    iget-boolean p4, p0, Lcom/sigmob/sdk/common/f/q;->h:Z

    const/4 v2, 0x1

    if-nez p4, :cond_53

    iget-boolean p4, p0, Lcom/sigmob/sdk/common/f/q;->i:Z

    if-nez p4, :cond_53

    sget-object p4, Lcom/sigmob/sdk/common/f/p;->a:Lcom/sigmob/sdk/common/f/p;

    invoke-virtual {p4, v10}, Lcom/sigmob/sdk/common/f/p;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_53

    iget-object p4, p0, Lcom/sigmob/sdk/common/f/q;->d:Lcom/sigmob/sdk/common/f/q$b;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v10}, Lcom/sigmob/sdk/common/f/q$b;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;)V

    iput-boolean v2, p0, Lcom/sigmob/sdk/common/f/q;->h:Z
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_54

    :cond_53
    return v2

    :catchall_54
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p4, v10

    goto :goto_1a

    :cond_5e
    :try_start_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Link ignored. Unable to handle url: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p4, p1, v1}, Lcom/sigmob/sdk/common/f/q;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_5e .. :try_end_74} :catchall_75

    goto :goto_7b

    :catchall_75
    move-exception p1

    const-string p2, "handleResolvedUrl eroor"

    invoke-static {p2, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7b
    return v0
.end method

.method static synthetic c()Lcom/sigmob/sdk/common/f/q$b;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/f/q;->a:Lcom/sigmob/sdk/common/f/q$b;

    return-object v0
.end method

.method static synthetic d()Lcom/sigmob/sdk/common/f/q$c;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/f/q;->b:Lcom/sigmob/sdk/common/f/q$c;

    return-object v0
.end method


# virtual methods
.method a()Lcom/sigmob/sdk/common/f/q$c;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/f/q;->e:Lcom/sigmob/sdk/common/f/q$c;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/common/f/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/common/f/q;->g:Z

    return v0
.end method
